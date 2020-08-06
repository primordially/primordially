using System.Reactive;
using Primordially.Core;
using ReactiveUI;

namespace Primordially.App.ViewModels
{
    public class MainWindowViewModel : ViewModelBase
    {
        private readonly BaseGameRules _rules;
        private string _message = "You are no one";

        public string Message
        {
            get => _message;
            set => this.RaiseAndSetIfChanged(ref _message, value);
        }

        public MainWindowViewModel()
        {
            _rules = GameRules.Load("Pathfinder");
            NewCommand = ReactiveCommand.Create(New);
        }

        public ReactiveCommand<Unit, Unit> NewCommand { get; }

        private int _newCounter = 1;
        private void New()
        {
            Message = "You are new character " + _newCounter++;
        }
    }
}
