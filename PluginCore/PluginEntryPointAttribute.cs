using System;

namespace Primordially.PluginCore
{
    /// <summary>
    /// Defines the plug entry point for this assembly. Exactly one must be present for every plugin
    /// assembly.
    /// </summary>
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