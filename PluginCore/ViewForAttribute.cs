using System;

namespace Primordially.PluginCore
{
    /// <summary>
    /// Declares what view model this particular view is designed to render.
    /// The corresponding view model should have a <see cref="ModelForAttribute"/>
    /// </summary>
    [AttributeUsage(AttributeTargets.Class)]
    public class ViewForAttribute : Attribute
    {
        public ViewForAttribute(Type viewModel)
        {
            ViewModel = viewModel;
        }

        public Type ViewModel { get; }
    }
}