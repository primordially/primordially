using ReactiveUI;

namespace Primordially.PluginCore
{
    /// <summary>
    /// ViewModel base type for all plugin view models. If this type is not used,
    /// the built in ViewLocator will not attempt to resolve the view for this model.
    ///
    /// For every view model, there should be a view annotated with <see cref="ViewForAttribute"/>
    /// </summary>
    public class PluginViewModelBase : ReactiveObject
    {
    }
}
