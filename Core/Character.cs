using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

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

        public Dictionary<string, CharacterStatistic> Statistics { get; } = new Dictionary<string, CharacterStatistic>(StringComparer.InvariantCultureIgnoreCase);

        public CharacterStatistic GetStatistic(string name)
        {
            if (Statistics.TryGetValue(name, out var result))
                return result;
            result = new CharacterStatistic(this, new List<GameValue>());
            Statistics.Add(name, result);
            return result;
        }

        public BonusBuilder SetStatisticBase(string name, int value)
        {
            var fixedValue = new FixedValue("BASE", value);
            if (Statistics.TryGetValue(name, out CharacterStatistic stat))
            {
                stat.Replace("BASE", fixedValue);
            }
            else
            {
                Statistics.Add(name, new CharacterStatistic(this, fixedValue));
            }

            return new BonusBuilder(this, name);
        }

        public BonusBuilder AddToStatistic(string name, string type, int value)
        {
            GetStatistic(name).Add(new FixedValue(type, value));
            return new BonusBuilder(this, name);
        }

        public BonusBuilder AddToStatistic(string name, int value)
        {
            return AddToStatistic(name, name, value);
        }

        public BonusBuilder AddReferenceToStatistic(string name, string type, string referenceStatistic)
        {
            GetStatistic(name).Add(new ComputedValue(type, GetStatistic(referenceStatistic)));
            return new BonusBuilder(this, name);
        }

        public BonusBuilder AddReferenceToStatistic(string name, string referenceStatistic)
        {
            return AddReferenceToStatistic(name, name, referenceStatistic);
        }

        public BonusBuilder AddReferenceToStatistic(string name, string type, string referenceStatistic, ComputeValue computation)
        {
            GetStatistic(name).Add(new ComputedValue(type, GetStatistic(referenceStatistic), computation));
            return new BonusBuilder(this, name);
        }

        public BonusBuilder AddReferenceToStatistic(string name, string referenceStatistic, ComputeValue computation)
        {
            return AddReferenceToStatistic(name, name, referenceStatistic, computation);
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
                _character.GetStatistic(_name).Add(new FixedValue(type, value));
                return this;
            }

            public BonusBuilder AddReference(string referenceStatistic)
            {
                return AddReference(referenceStatistic, referenceStatistic);
            }

            public BonusBuilder AddReference(string type, string referenceStatistic)
            {
                _character.GetStatistic(_name).Add(new ComputedValue(type, _character.GetStatistic(referenceStatistic)));
                return this;
            }

            public BonusBuilder AddReference(string referenceStatistic, ComputeValue computation)
            {
                return AddReference(referenceStatistic, referenceStatistic, computation);
            }

            public BonusBuilder AddReference(string type, string referenceStatistic, ComputeValue computation)
            {
                _character.GetStatistic(_name).Add(new ComputedValue(type, _character.GetStatistic(referenceStatistic), computation));
                return this;
            }
        }
    }
}
