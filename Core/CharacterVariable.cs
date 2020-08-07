using System.Collections.Generic;
using System.Linq;

namespace Primordially.Core
{
    /// <summary>
    /// A representation of any numeric value a character might have.
    /// "Strength" is a variable, "Strength Bonus" is a variable.
    ///
    /// Most variables are computed values from several <see cref="Bonus"/>
    /// objects.  Even static values are represented as a Bonus of type
    /// "BASE".
    /// </summary>
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

        public CharacterVariable Add(Bonus value)
        {
            _values.Add(value);
            return this;
        }

        /// <summary>
        /// Get the current value of this variable, with all bonuses included.
        /// </summary>
        public int Value => GetAppliedBonuses().Sum(v => v.Value);

        /// <summary>
        /// Get a list of all of the bonuses that are currently effecting this variable.
        /// For any non-stacking bonuses, only the highest is included.
        /// </summary>
        /// <returns>A list of all bonus objects that go into calculating the <see cref="Value"/> result</returns>
        public IEnumerable<Bonus> GetAppliedBonuses()
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
                    Bonus? maxSource = null;
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