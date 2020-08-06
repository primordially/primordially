using Avalonia;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using Primordially.PluginCore;

namespace Primordially.Pathfinder.Views
{
    [ViewFor(typeof(PathfinderCharacterViewModel))]
    public class PathfinderCharacterView : UserControl
    {
        public PathfinderCharacterView()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}
