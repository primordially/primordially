using System;
using System.Collections.Generic;
using System.Collections.Immutable;

namespace Primordially.Core
{
    public interface IImmutableVariableCollection<TKind> where TKind : IImmutableVariableCollection<TKind>
    {
        BaseGameRules Rules { get; }
        CharacterVariable GetVariable(string name);
        BonusBuilder<TKind> ModifyVariable(string name);
        TKind WithVariable(string name, CharacterVariable value);
    }

    public class CharacterLevel : IImmutableVariableCollection<CharacterLevel>
    {
        public CharacterLevel(string className, BaseGameRules rules)
        {
            ClassName = className;
            Rules = rules;
        }
        public CharacterLevel(string className, BaseGameRules rules, ImmutableDictionary<string, CharacterVariable> variables)
        {
            ClassName = className;
            Rules = rules;
            Variables = variables;
        }

        public string ClassName { get; }

        private ImmutableDictionary<string, CharacterVariable> Variables { get; } =
            ImmutableDictionary.Create<string, CharacterVariable>(StringComparer.InvariantCultureIgnoreCase);

        public CharacterLevel WithVariable(string name, CharacterVariable value)
        {
            return new CharacterLevel(name, Rules, Variables.SetItem(name, value));
        }

        public BaseGameRules Rules { get; }

        public CharacterVariable GetVariable(string name)
        {
            if (Variables.TryGetValue(name, out var result))
                return result;
            return new CharacterVariable(Rules);
        }

        public BonusBuilder<CharacterLevel> ModifyVariable(string name)
        {
            // This doesn't need to do anything, because "GetReference" will always create a variable that doesn't exist
            // and set it to zero.  It's just a convenience to callers to get a BonusBuilder
            return BonusBuilder.Create(this, name);
        }
    }

    public class Character : IImmutableVariableCollection<Character>
    {
        public Character(BaseGameRules rules)
        {
            Rules = rules;
        }

        private Character(BaseGameRules rules, string name, ImmutableList<CharacterLevel> levels, ImmutableDictionary<string, CharacterVariable> variables)
        {
            Rules = rules;
            Name = name;
            Levels = levels;
            Variables = variables;
        }

        public BaseGameRules Rules { get; }

        public string Name { get; } = "";
        
        public Character WithName(string name)
        {
            return new Character(Rules, name, Levels, Variables);
        }

        public Character WithLevels(ImmutableList<CharacterLevel> levels)
        {
            return new Character(Rules, Name, levels, Variables);
        }

        public Character AddLevel(CharacterLevel level)
        {
            return new Character(Rules, Name, Levels.Add(level), Variables);
        }

        public Character WithVariable(string name, CharacterVariable value)
        {
            return new Character(Rules, Name, Levels, Variables.SetItem(name, value));
        }

        private ImmutableDictionary<string, CharacterVariable> Variables { get; } =
            ImmutableDictionary.Create<string, CharacterVariable>(StringComparer.InvariantCultureIgnoreCase);

        public ImmutableList<CharacterLevel> Levels { get; } = ImmutableList<CharacterLevel>.Empty;

        public CharacterVariable GetVariable(string name)
        {
            if (Variables.TryGetValue(name, out var result))
                return result;
            result = new CharacterVariable(Rules);
            Variables.Add(name, result);
            return result;
        }

        public BonusBuilder<Character> ModifyVariable(string name)
        {
            // This doesn't need to do anything, because "GetReference" will always create a variable that doesn't exist
            // and set it to zero.  It's just a convenience to callers to get a BonusBuilder
            return BonusBuilder.Create(this, name);
        }
    }
}
