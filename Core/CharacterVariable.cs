using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.Core
{
    public class CharacterVariable
    {
        private readonly Character _character;

        public CharacterVariable(Character character) : this(character, new List<GameValue>())
        {
        }

        public CharacterVariable(Character character, GameValue value)
        {
            _character = character;
            _values = new List<GameValue>{value};
        }

        public CharacterVariable(Character character, IEnumerable<GameValue> values)
        {
            _character = character;
            _values = values.ToList();
        }

        public CharacterVariable Replace(string ofType, GameValue newValue)
        {
            _values.RemoveAll(v => v.Type == ofType);
            _values.Add(newValue);
            return this;
        }

        public CharacterVariable Add(GameValue value)
        {
            _values.Add(value);
            return this;
        }

        private readonly List<GameValue> _values;

        public IEnumerable<GameValue> GetAppliedBonuses()
        {
            List<GameValue> applied = new List<GameValue>();
            var groups = _values.GroupBy(v => v.Type);
            int value = 0;
            foreach (var group in groups)
            {
                if (_character.Rules.StackedBonuses.Contains(group.Key))
                {
                    applied.AddRange(group);
                }
                else
                {
                    int maxValue = 0;
                    GameValue maxSource = null;
                    foreach (var v in group)
                    {
                        var part = v.Value;
                        if (part < 0)
                        {
                            applied.Add(v);
                        }
                        else if (part > maxValue)
                        {
                            maxValue = part;
                            maxSource = v;
                        }
                    }

                    if (maxSource != null)
                    {
                        applied.Add(maxSource);
                    }
                }
            }

            return applied;
        }

        public int Value => GetAppliedBonuses().Sum(v => v.Value);
    }
}