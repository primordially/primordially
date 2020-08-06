using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.Loader;
using Avalonia.Controls;
using Primordially.Core;

namespace Primordially.App
{
    internal class PluginLoadContext : AssemblyLoadContext
    {
        private readonly AssemblyDependencyResolver _resolver;

        public PluginLoadContext(string pluginDll)
        {
            _resolver = new AssemblyDependencyResolver(pluginDll);
        }

        public static readonly IReadOnlyList<string> ContractAssemblyNames = new[]
        {
            typeof(BaseGameRules).Assembly.GetName().Name!,
            typeof(Window).Assembly.GetName().Name!,
        };

        protected override Assembly? Load(AssemblyName assemblyName)
        {
            if (ContractAssemblyNames.Contains(assemblyName.Name))
            {
                // If the requested assembly is one of our contract assemblies, force it to load from the main Load Context
                return null;
            }

            var path = _resolver.ResolveAssemblyToPath(assemblyName);
            if (path != null)
            {
                return LoadFromAssemblyPath(path);
            }

            return null;
        }

        protected override IntPtr LoadUnmanagedDll(string unmanagedDllName)
        {
            var libraryPath = _resolver.ResolveUnmanagedDllToPath(unmanagedDllName);
            if (libraryPath != null)
            {
                return LoadUnmanagedDllFromPath(libraryPath);
            }

            return IntPtr.Zero;
        }
    }
}
