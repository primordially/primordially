using System.Runtime.InteropServices;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using Primordially.App.ViewModels;
using Primordially.PluginCore;

namespace Primordially.App.Views
{
    [ViewFor(typeof(MainWindowViewModel))]
    public class MainWindow : Window
    {
        public bool IsWindows { get; }

        public MainWindow()
        {
            IsWindows = RuntimeInformation.IsOSPlatform(OSPlatform.Windows);
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}