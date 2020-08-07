using System;

namespace Primordially.PluginCore
{
    /// <summary>
    /// Declares what view model this particular view is designed to render.
    /// </summary>
    [AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
    public class ViewForAttribute : Attribute
    {
        public ViewForAttribute(Type viewModel)
        {
            ViewModel = viewModel;
        }

        public Type ViewModel { get; }
    }
}