using System.Collections.Generic;
using System.Collections.Immutable;
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
        private readonly BaseGameRules _rules;
        private readonly ImmutableList<Bonus> _values;

        public CharacterVariable(BaseGameRules rules) : this(rules, ImmutableList<Bonus>.Empty)
        {
        }

        public CharacterVariable(BaseGameRules rules, Bonus value) : this (rules, ImmutableList.Create(value))
        {
        }

        public CharacterVariable(BaseGameRules rules, ImmutableList<Bonus> values)
        {
            _rules = rules;
            _values = values;
        }

        public CharacterVariable Add(Bonus value)
        {
            return new CharacterVariable(_rules, _values.Add(value));
        }

        public int GetBase()
        {
            return _values.FirstOrDefault(b => b.Type == "BASE")?.Value ?? 0;
        }

        /// <summary>
        /// Get the current value of this variable, with all bonuses included.
        /// </summary>
        public int Value => GetAppliedBonuses(true).Sum(v => v.Value);

        /// <summary>
        /// Get a list of all of the bonuses that are currently effecting this variable.
        /// For any non-stacking bonuses, only the highest is included.
        /// </summary>
        /// <returns>A list of all bonus objects that go into calculating the <see cref="Value"/> result</returns>
        public IEnumerable<Bonus> GetAppliedBonuses(bool includeBase)
        {
            var applied = new List<Bonus>();
            IEnumerable<IGrouping<string, Bonus>> groups = _values.GroupBy(v => v.Type);
            foreach (IGrouping<string, Bonus> group in groups)
            {
                if (!includeBase && group.Key == "BASE")
                {
                    continue;
                }

                if (_rules.StackedBonuses.Contains(group.Key))
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