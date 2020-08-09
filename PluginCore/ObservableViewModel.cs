using System;
using System.Diagnostics;
using System.Linq.Expressions;
using System.Reactive.Subjects;
using System.Runtime.CompilerServices;
using DynamicData.Binding;

namespace Primordially.PluginCore
{
    /// <summary>
    /// A base view model class for any view models that operate on immutable
    /// model types. Since the type is immutable, that means any view changes need
    /// to produce a new model and push it to other views using the shared observable.
    ///
    /// By sharing the same BehaviorSubject between multiple ObservableViewModel instances
    /// all views will be synchronized
    /// </summary>
    /// <typeparam name="TModel">Type of immutable model</typeparam>
    public abstract class ObservableViewModel<TModel> : PluginViewModel 
    {
        protected readonly BehaviorSubject<TModel> Observable;

        /// <param name="observable">Observable of the readonly model object. Any updates to this will trigger <see cref="ModelUpdatedImpl"/></param>
        protected ObservableViewModel(BehaviorSubject<TModel> observable)
        {
            Observable = observable;
            Initialize();
            TrackDisposable(Observable.Subscribe(ModelUpdated));
        }

        private TModel _model = default!;
        private void ModelUpdated(TModel character)
        {
            _model = character;
            _updating = true;
            ModelUpdatedImpl(character);
            _updating = false;
        }

        private void Initialize()
        {
            // This will trigger a lot of initial updates, but the values aren't ready yet, so
            // put us in the updating phase
            _updating = true;
            RegisterModelUpdates();
            _updating = false;
        }

        /// <summary>
        /// Hooks up all model update mappings. This should generally just be calls to <see cref="ObservableViewModelExtensions.ToModel{TViewModel,TModel,TProperty}"/>
        /// </summary>
        protected abstract void RegisterModelUpdates();

        /// <summary>
        /// Pull all updates from the model into the current view model.
        /// All view properties from the model should be updated in this method,
        /// any that aren't updated might have stale values if they are updated
        /// in another view.
        /// </summary>
        /// <param name="model">New model value to be displayed</param>
        protected abstract void ModelUpdatedImpl(TModel model);

        private bool _updating;
        private Action<PropertyValue<TViewModel, TValue>> UpdateModel<TViewModel, TValue>(Func<TModel, TValue, TModel> update) where TViewModel : ObservableViewModel<TModel>
        {
            return pv =>
            {
                if (pv.Sender._updating)
                {
                    // This means we got re-entrant, almost certainly because pushing this update
                    // ended up calling ModelUpdated (because we just changed the model).

                    // Since that means this update is coming from a property triggered by
                    // a push that this method made, it's important we don't push another update back.
                    return;
                }

                _model = update(pv.Sender._model, pv.Value);
                Observable.OnNext(_model);
                _updating = false;
            };
        }
        

        /// <summary>
        /// This is only meant to be called by <see cref="ObservableViewModelExtensions.ToModel{TViewModel,TModel,TProperty}"/>.
        /// That method is able to infer more of the type parameters
        /// </summary>
        internal void ToModel<TViewModel, TProperty>(Expression<Func<TViewModel, TProperty>> propertyAccessor, Func<TModel, TProperty, TModel> update) where TViewModel : ObservableViewModel<TModel>
        {
            Debug.Assert(this is TViewModel, "This should only be called by ObservableViewModelExtensions.ToModel, which enforces this constraint");
            TrackDisposable(Unsafe.As<TViewModel>(this).WhenPropertyChanged(propertyAccessor).Subscribe(UpdateModel<TViewModel, TProperty>(update)));
        }
    }
}