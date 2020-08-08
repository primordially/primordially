using System.Reactive.Subjects;
using Primordially.Core;
using Primordially.Pathfinder;
using Primordially.Pathfinder.Views;
using Primordially.PluginCore;

namespace Primordially.PluginShowcase.ViewModels
{
    public class MainWindowViewModel : ViewModelBase
    {
        public PluginViewModel Pathfinder { get; } = GeneratePathfinderCharacter();

        private static PluginViewModel GeneratePathfinderCharacter()
        {
            return new PathfinderCharacterViewModel(SampleCharacterCreator.Wizard);
        }
    }
}
