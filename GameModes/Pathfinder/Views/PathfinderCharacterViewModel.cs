using Primordially.Core;
using Primordially.PluginCore;
using ReactiveUI;

namespace Primordially.Pathfinder.Views
{
    public class PathfinderCharacterViewModel : PluginViewModelBase
    {
        public PathfinderCharacterViewModel(Character character)
        {
            _character = character;
            PullFromModel();
        }

        private void PullFromModel()
        {
            Name = _character.Name;
        }

        private void PushToModel()
        {
            _character.Name = Name;
        }

        private readonly Character _character;

        private string? _name;

        public string? Name
        {
            get => _name;
            set => this.RaiseAndSetIfChanged(ref _name, value);
        }
    }
}