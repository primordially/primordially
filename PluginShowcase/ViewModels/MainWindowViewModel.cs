using Primordially.Core;
using Primordially.Pathfinder;
using Primordially.Pathfinder.Views;
using Primordially.PluginCore;

namespace Primordially.PluginShowcase.ViewModels
{
    public class MainWindowViewModel : ViewModelBase
    {
        public PluginViewModelBase Pathfinder { get; } = GeneratePathfinderCharacter();

        private static PluginViewModelBase GeneratePathfinderCharacter()
        {
            var rules = new PathfinderRules();
            Character character = rules.CreateCharacter();
            character.Name = "Pathfinder Guy";
            return new PathfinderCharacterViewModel(character);
        }
    }
}
