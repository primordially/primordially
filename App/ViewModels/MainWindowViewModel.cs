using System.Reactive;
using ReactiveUI;

namespace Primordially.App.ViewModels
{
    public class MainWindowViewModel : ViewModelBase
    {
        private string _message = "You are no one";

        public string Message
        {
            get => _message;
            set => this.RaiseAndSetIfChanged(ref _message, value);
        }

        public MainWindowViewModel()
        {
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
