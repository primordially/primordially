using System;
using System.Runtime.InteropServices;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using Primordially.Core;

namespace Primordially.App.Views
{
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