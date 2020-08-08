using System;
using System.Collections.Generic;
using Primordially.Core;
using ReactiveUI;

namespace Primordially.PluginCore
{
    /// <summary>
    /// ViewModel base type for all plugin view models. If this type is not used,
    /// the built in ViewLocator will not attempt to resolve the view for this model.
    ///
    /// For every view model, there should be a view annotated with <see cref="ViewForAttribute"/>
    /// </summary>
    public abstract class PluginViewModel : ReactiveObject, IDisposable
    {
        private readonly List<IDisposable> _disposables = new List<IDisposable>();

        protected void TrackDisposable(IDisposable toDispose) => _disposables.Add(toDispose);

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                foreach (var disposable in _disposables)
                {
                    disposable?.Dispose();
                }
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
