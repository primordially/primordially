using System;
using Primordially.Core;
using Primordially.Pathfinder;
using Primordially.Pathfinder.Views;
using Primordially.PluginCore;

[assembly:PluginEntryPoint(typeof(PathfinderPlugin))]

namespace Primordially.Pathfinder
{
    public class PathfinderPlugin : IPlugin
    {
        public BaseGameRules LoadRules()
        {
            return new PathfinderRules();
        }

        public PluginViewModelBase GetViewModelForCharacter(Character character)
        {
            return new PathfinderCharacterViewModel(character);
        }
    }
}