using System.Collections.Immutable;

namespace Primordially.Core
{
    public abstract class BaseGameRules
    {
        public abstract ImmutableHashSet<string> StackedBonuses { get; }

        public abstract ImmutableDictionary<string, int> BonusOrdering { get; }

        public Character CreateCharacter()
        {
            var character = new Character(this);
            InitializeCharacter(character);
            return character;
        }

        public abstract void InitializeCharacter(Character character);
    }
}