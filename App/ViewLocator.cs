using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Avalonia.Controls;
using Avalonia.Controls.Templates;
using Primordially.App.ViewModels;
using Primordially.PluginCore;

namespace Primordially.App
{
    public class ViewLocator : IDataTemplate
    {
        public bool SupportsRecycling => false;

        private readonly HashSet<Assembly> _scannedAssemblies = new HashSet<Assembly>();
        private readonly Dictionary<Type, Type> _viewMapping = new Dictionary<Type, Type>();

        public IControl Build(object data)
        {
            Type viewModelType = data.GetType();

            lock (_viewMapping)
            {
                Assembly assembly = viewModelType.Assembly;
                if (!_viewMapping.TryGetValue(viewModelType, out Type? viewType))
                {
                    if (_scannedAssemblies.Contains(assembly))
                    {
                        return new TextBlock {Text = "No view found for : " + viewModelType.Name};
                    }
                    
                    Type controlType = typeof(IControl);
                    var haveAttribute = assembly.GetTypes()
                        .Select(t => new {Type = t, Attribute = t.GetCustomAttribute<ViewForAttribute>()})
                        .Where(p => p.Attribute != null);

                    var validTypes = haveAttribute
                        .Where(p => controlType.IsAssignableFrom(p.Type));

                    foreach (var pairing in validTypes)
                    {
                        _viewMapping.Add(pairing.Attribute!.ViewModel, pairing.Type);
                    }

                    _scannedAssemblies.Add(assembly);
                }

                if (!_viewMapping.TryGetValue(viewModelType, out viewType))
                {
                    return new TextBlock {Text = "No view found for : " + viewModelType.Name};
                }

                return (IControl)Activator.CreateInstance(viewType)!;
            }
        }

        public bool Match(object data)
        {
            return data is ViewModelBase || data is PluginViewModelBase;
        }
    }
}