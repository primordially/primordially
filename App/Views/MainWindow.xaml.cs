using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using PCSharpGen.Core;

namespace Primordially.App.Views
{
    public class MainWindow : Window
    {
        private readonly BaseGameRules _rules;

        public MainWindow()
        {
            InitializeComponent();

            _rules = GameRules.Load("Pathfinder");
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}