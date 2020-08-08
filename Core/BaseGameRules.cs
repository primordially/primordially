using System.Collections.Immutable;

namespace Primordially.Core
{
    public abstract class BaseGameRules
    {
        public abstract ImmutableHashSet<string> StackedBonuses { get; }

        public abstract ImmutableDictionary<string, int> BonusOrdering { get; }

        public Character CreateCharacter()
        {
            return InitializeCharacter(new Character(this));
        }

        protected abstract Character InitializeCharacter(Character character);
    }
}