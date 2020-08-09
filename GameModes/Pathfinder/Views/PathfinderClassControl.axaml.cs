using Avalonia;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using Primordially.PluginCore;

namespace Primordially.Pathfinder.Views
{
    [ViewFor(typeof(PathfinderClassViewModel))]
    public class PathfinderClassControl : UserControl
    {
        public PathfinderClassControl()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}
