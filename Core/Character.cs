using System;
using System.Collections.Generic;

namespace PCSharpGen.Core
{
    public class Character
    {
        public Character(BaseGameRules rules)
        {
            Rules = rules;
        }

        public BaseGameRules Rules { get; }

        public string Name { get; set; }

        public Dictionary<string, CharacterVariable> Variables { get; } = new Dictionary<string, CharacterVariable>(StringComparer.InvariantCultureIgnoreCase);

        public CharacterVariable GetVariable(string name)
        {
            if (Variables.TryGetValue(name, out var result))
                return result;
            result = new CharacterVariable(this, new List<GameValue>());
            Variables.Add(name, result);
            return result;
        }

        public BonusBuilder ModifyVariable(string name)
        {
            // This doesn't need to do anything, because "GetReference" will always create a variable that doesn't exist
            // and set it to zero.  It's just a convenience to callers to get a BonusBuilder
            return new BonusBuilder(this, name);
        }

        public struct BonusBuilder
        {
            private readonly Character _character;
            private readonly string _name;

            public BonusBuilder(Character character, string name)
            {
                _character = character;
                _name = name;
            }

            public BonusBuilder Add(int value)
            {
                return Add(_name, value);
            }

            public BonusBuilder Add(string type, int value)
            {
                _character.GetVariable(_name).Add(new FixedValue(type, value));
                return this;
            }

            public BonusBuilder AddReference(string referenceStatistic)
            {
                return AddReference(referenceStatistic, referenceStatistic);
            }

            public BonusBuilder AddReference(string type, string referenceStatistic)
            {
                _character.GetVariable(_name).Add(new ComputedValue(type, _character.GetVariable(referenceStatistic)));
                return this;
            }

            public BonusBuilder AddReference(string referenceStatistic, ComputeValue computation)
            {
                return AddReference(referenceStatistic, referenceStatistic, computation);
            }

            public BonusBuilder AddReference(string type, string referenceStatistic, ComputeValue computation)
            {
                _character.GetVariable(_name).Add(new ComputedValue(type, _character.GetVariable(referenceStatistic), computation));
                return this;
            }
        }
    }
}
