using Primordially.Core;

namespace Primordially.PluginCore
{
    public interface IPlugin
    {
        BaseGameRules LoadRules();
        PluginViewModelBase GetViewModelForCharacter(Character character);
    }
}