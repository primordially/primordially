using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.Core
{
    public class CharacterVariable
    {
        private readonly Character _character;

        private readonly List<Bonus> _values;

        public CharacterVariable(Character character) : this(character, new List<Bonus>())
        {
        }

        public CharacterVariable(Character character, Bonus value)
        {
            _character = character;
            _values = new List<Bonus> { value };
        }

        public CharacterVariable(Character character, IEnumerable<Bonus> values)
        {
            _character = character;
            _values = values.ToList();
        }

        public int Value => GetAppliedModifiers().Sum(v => v.Value);

        public CharacterVariable Replace(string ofType, Bonus newValue)
        {
            _values.RemoveAll(v => v.Type == ofType);
            _values.Add(newValue);
            return this;
        }

        public CharacterVariable Add(Bonus value)
        {
            _values.Add(value);
            return this;
        }

        public IEnumerable<Bonus> GetAppliedModifiers()
        {
            var applied = new List<Bonus>();
            IEnumerable<IGrouping<string, Bonus>> groups = _values.GroupBy(v => v.Type);
            foreach (IGrouping<string, Bonus> group in groups)
            {
                if (_character.Rules.StackedBonuses.Contains(group.Key))
                {
                    applied.AddRange(group);
                }
                else
                {
                    int maxValue = 0;
                    Bonus maxSource = null;
                    foreach (Bonus v in group)
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