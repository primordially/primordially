using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

namespace PCSharpGen.App
{
    internal class PluginLoader
    {
        private static readonly string BasePath = Path.Join(AppContext.BaseDirectory, "Plugins");
        private static readonly Dictionary<string, Assembly> LoadedPlugins = new Dictionary<string, Assembly>();

        public static IEnumerable<string> ListAvailable()
        {
            return Directory.EnumerateDirectories(BasePath);
        }

        public static Assembly GetPluginAssembly(string name)
        {
            lock (LoadedPlugins)
            {
                if (LoadedPlugins.TryGetValue(name, out var result))
                {
                    return result;
                }

                return LoadedPlugins[name] = LoadPlugin(name);
            }
        }

        private static Assembly LoadPlugin(string name)
        {
            var path = Path.Join(BasePath, name, name + ".dll");
            if (!File.Exists(path))
            {
                throw new FileNotFoundException("The plugin could not be found.", path);
            }
            var context = new PluginLoadContext(path);
            return context.LoadFromAssemblyName(new AssemblyName(name));
        }
    }
}