using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Runtime.Serialization;
using JetBrains.Annotations;
using Primordially.PluginCore;

namespace Primordially.App
{
    internal static class PluginLoader
    {
        private static readonly string BasePath = Path.Join(AppContext.BaseDirectory, "plugins");
        private static readonly Dictionary<string, IPlugin> LoadedPlugins = new Dictionary<string, IPlugin>();

        public static IEnumerable<string> ListAvailable()
        {
            return Directory.EnumerateDirectories(BasePath);
        }

        public static IPlugin LoadPlugin(string name)
        {
            if (LoadedPlugins.TryGetValue(name, out var loaded))
            {
                return loaded;
            }

            try
            {
                string path = Path.Join(BasePath, name, name + ".dll");
                if (!File.Exists(path))
                {
                    throw new FileNotFoundException("The plugin could not be found.", path);
                }

                var context = new PluginLoadContext(path);
                Assembly assembly = context.LoadFromAssemblyName(new AssemblyName(name));
                PluginEntryPointAttribute? entryPointAttribute = assembly.GetCustomAttribute<PluginEntryPointAttribute>();

                if (entryPointAttribute == null)
                {
                    throw new PluginLoadException($"Plugin {name} does not have a PluginEntryPoint");
                }

                object? entryPoint = Activator.CreateInstance(entryPointAttribute.Plugin);

                if (!(entryPoint is IPlugin plugin))
                {
                    throw new PluginLoadException($"Plugin {name} has an invalid entry point");
                }

                LoadedPlugins.Add(name, plugin);

                return plugin;
            }
            catch (Exception e)
            {
                throw new PluginLoadException("Unexpected error loading plugin", e);
            }
        }
    }

    internal class PluginLoadException : Exception
    {
        public PluginLoadException()
        {
        }

        protected PluginLoadException([NotNull] SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }

        public PluginLoadException([CanBeNull] string? message) : base(message)
        {
        }

        public PluginLoadException([CanBeNull] string? message, [CanBeNull] Exception? innerException) : base(message, innerException)
        {
        }
    }
}
