using System;
using System.Collections.Generic;
using System.Reflection;
using Avalonia.Controls;
using Avalonia.Controls.Templates;
using Primordially.App.ViewModels;
using Primordially.PluginCore;
using Splat;

namespace Primordially.App
{
    public class ViewLocator : IDataTemplate, IEnableLogger
    {
        private readonly Dictionary<Type, Type?> _viewMapping = new Dictionary<Type, Type?>();
        
        private readonly IFullLogger _logger;

        public ViewLocator()
        {
            _logger = this.Log();
        }

        public bool SupportsRecycling => false;

        public IControl Build(object data)
        {
            if (data == null)
            {
                _logger.Debug("data was null for ViewLocator");
                return new TextBlock {Text = "Null data"};
            }

            lock (_viewMapping)
            {
                Type viewModelType = data.GetType();
                if (!_viewMapping.TryGetValue(viewModelType, out Type? viewType))
                {
                    ModelForAttribute? modelForAttribute = viewModelType.GetCustomAttribute<ModelForAttribute>();
                    if (modelForAttribute == null)
                    {
                        _logger.Debug("data has no [ModelFor]");
                        _viewMapping.Add(viewModelType, null);
                    }
                    else if (modelForAttribute.View == null)
                    {
                        _logger.Debug("data [ModelFor] has no ViewModel");
                        _viewMapping.Add(viewModelType, null);
                    }
                    else
                    {
                        var viewForAttribute = modelForAttribute.View.GetCustomAttribute<ViewForAttribute>();
                        if (viewForAttribute == null)
                        {
                            _logger.Debug("data has [ModelFor({0})], but {0} has no corresponding [ViewFor]", viewModelType.Name);
                            _viewMapping.Add(viewModelType, null);
                        }
                        else if (viewForAttribute.ViewModel == null)
                        {
                            _logger.Debug("data has [ModelFor({0})], but {0} has [ViewFor] has no ViewModel", viewModelType.Name);
                            _viewMapping.Add(viewModelType, null);
                        }
                        else if (viewForAttribute.ViewModel != viewModelType)
                        {
                            _logger.Debug("data has [ModelFor({0})], but {0} has mismatched [ViewFor({1}] ", viewModelType.Name, viewForAttribute.ViewModel.Name);
                            _viewMapping.Add(viewModelType, null);
                        }
                        else
                        {
                            _logger.Debug("data has [ModelFor({0})] with matching ViewFor", viewModelType.Name);
                            _viewMapping.Add(viewModelType, modelForAttribute.View);
                        }
                    }
                }

                if (!_viewMapping.TryGetValue(viewModelType, out viewType) || viewType == null)
                {
                    return new TextBlock {Text = "No view found for : " + viewModelType.Name};
                }

                return (IControl)Activator.CreateInstance(viewType)!;
            }
        }

        public bool Match(object data)
        {
            return data is ViewModelBase || data is PluginViewModel;
        }
    }
}