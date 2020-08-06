using System;
using System.Collections.Generic;
using System.Linq;
using Primordially.Core;

namespace Primordially.App
{
    internal class GameRules
    {
        public static IEnumerable<string> ListAvailable()
        {
            return PluginLoader.ListAvailable();
        }

        public static BaseGameRules Load(string name)
        {
            var assembly = PluginLoader.GetPluginAssembly(name);
            var ruleTypes = assembly.ExportedTypes.Where(typeof(BaseGameRules).IsAssignableFrom).ToList();
            if (ruleTypes.Count == 0)
            {
                throw new TypeLoadException($"The plugin assembly '{assembly.GetName().Name}' must contain a public type that implements '{typeof(BaseGameRules).FullName}'");
            }

            if (ruleTypes.Count > 1)
            {
                throw new TypeLoadException($"The plugin assembly '{assembly.GetName().Name}' cannot contain more than one public type that implements '{typeof(BaseGameRules).FullName}'");
            }

            var ruleType = ruleTypes[0];
            var rules = Activator.CreateInstance(ruleType);
            if (rules == null)
            {
                throw new InvalidOperationException($"Unable to create instance of {ruleType.FullName}");
            }

            return (BaseGameRules) rules;
        }
    }
}