using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using Primordially.Core;

namespace Primordially.App.Views
{
    public class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}