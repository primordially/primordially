using System;

namespace Primordially.PluginCore
{
    /// <summary>
    /// Declares what view are allowed to render this view model
    /// The corresponding view must have a <see cref="ViewForAttribute"/>
    /// </summary>
    [AttributeUsage(AttributeTargets.Class)]
    public class ModelForAttribute : Attribute
    {
        public ModelForAttribute(Type view)
        {
            View = view;
        }

        public Type View { get; }
    }
}