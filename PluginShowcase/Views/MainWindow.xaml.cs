using Avalonia.Controls;
using Avalonia.Markup.Xaml;

namespace Primordially.PluginShowcase.Views
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