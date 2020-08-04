using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.Core
{
    public class CharacterVariable
    {
        private readonly Character _character;

        private readonly List<GameValue> _values;

        public CharacterVariable(Character character) : this(character, new List<GameValue>())
        {
        }

        public CharacterVariable(Character character, GameValue value)
        {
            _character = character;
            _values = new List<GameValue> { value };
        }

        public CharacterVariable(Character character, IEnumerable<GameValue> values)
        {
            _character = character;
            _values = values.ToList();
        }

        public int Value => GetAppliedModifiers().Sum(v => v.Value);

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

        public IEnumerable<GameValue> GetAppliedModifiers()
        {
            var applied = new List<GameValue>();
            IEnumerable<IGrouping<string, GameValue>> groups = _values.GroupBy(v => v.Type);
            foreach (IGrouping<string, GameValue> group in groups)
            {
                if (_character.Rules.StackedBonuses.Contains(group.Key))
                {
                    applied.AddRange(group);
                }
                else
                {
                    int maxValue = 0;
                    GameValue maxSource = null;
                    foreach (GameValue v in group)
                    {
                        int part = v.Value;
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
    }
}