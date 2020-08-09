using System;
using System.Linq.Expressions;

namespace Primordially.PluginCore
{
    public static class ObservableViewModelExtensions
    {
        /// <summary>
        /// Register push changes to the model when a property is changed.
        /// </summary>
        /// <param name="viewModel">This view model, which should be a subclass of <see cref="ObservableViewModel{TModel}"/>, where the updates will originate</param>
        /// <param name="propertyAccessor">Property accessor to trigger model update</param>
        /// <param name="update">Function to return a new model with the correct property updated</param>
        public static void ToModel<TViewModel, TModel, TProperty>(
            this TViewModel viewModel,
            Expression<Func<TViewModel, TProperty>> propertyAccessor,
            Func<TModel, TProperty, TModel> update) where TViewModel : ObservableViewModel<TModel>
        {
            viewModel.ToModel(propertyAccessor, update);
        }
    }
}