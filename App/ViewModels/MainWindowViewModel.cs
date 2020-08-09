using System.Reactive;
using Primordially.App.Views;
using Primordially.Core;
using Primordially.PluginCore;
using ReactiveUI;

namespace Primordially.App.ViewModels
{
    [ModelFor(typeof(MainWindow))]
    public class MainWindowViewModel : ViewModelBase
    {
        private readonly IPlugin _plugin;
        private readonly BaseGameRules _rules;

        private PluginViewModel _characterViewModel = null!;

        public MainWindowViewModel()
        {
            _plugin = PluginLoader.LoadPlugin("Pathfinder");
            _rules = _plugin.LoadRules();
            NewCommand = ReactiveCommand.Create(New);
        }

        public PluginViewModel CharacterViewModel
        {
            get => _characterViewModel;
            private set => this.RaiseAndSetIfChanged(ref _characterViewModel, value);
        }

        public ReactiveCommand<Unit, Unit> NewCommand { get; }

        private void New()
        {
            Character character = _rules.CreateCharacter();
            CharacterViewModel = _plugin.GetViewModelForCharacter(character);
        }
    }
}