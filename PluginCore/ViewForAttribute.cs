using System;

namespace Primordially.PluginCore
{
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