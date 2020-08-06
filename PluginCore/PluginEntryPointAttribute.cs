using System;

namespace Primordially.PluginCore
{
    [AttributeUsage(AttributeTargets.Assembly)]
    public class PluginEntryPointAttribute : Attribute
    {
        public PluginEntryPointAttribute(Type plugin)
        {
            Plugin = plugin;
        }

        public Type Plugin { get; }
    }
}