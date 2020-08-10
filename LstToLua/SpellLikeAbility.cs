using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class SpellLikeAbility : ConditionalObject
    {
        public string Name { get; }
        public string? DC { get; }
        public string SpellBookName { get; }
        public string Times { get; }
        public string TimeUnit { get; }
        public string? CasterLevel { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("SpellBookName", SpellBookName);
            output.WriteKeyValue("Times", Times);
            output.WriteKeyValue("TimeUnit", TimeUnit);
            if (DC != null)
            {
                output.WriteKeyValue("DC", DC);
            }

            if (CasterLevel != null)
            {
                output.WriteKeyValue("CasterLevel", CasterLevel);
            }
            base.DumpMembers(output);
        }

        private SpellLikeAbility(string name, string? dc, string spellBookName, string times, string timeUnit, string? casterLevel)
        {
            Name = name;
            DC = dc;
            SpellBookName = spellBookName;
            Times = times;
            TimeUnit = timeUnit;
            CasterLevel = casterLevel;
        }

        public static IList<SpellLikeAbility> ParseAll(TextSpan value)
        {
            string? spellBookName = null;
            string times = "1";
            string timeUnit = "Day";
            string? casterLevel = null;
            var spells = new List<(string spell, string? dc)>();
            var conditions = new List<Condition>();

            foreach (var part in value.Split('|'))
            {
                if (spellBookName == null)
                {
                    spellBookName = part.Value;
                    continue;
                }

                if (part.TryRemovePrefix("TIMES=", out var t))
                {
                    times = t.Value;
                    continue;
                }

                if (part.TryRemovePrefix("TIMEUNIT=", out var tu))
                {
                    timeUnit = tu.Value;
                    continue;
                }

                if (part.TryRemovePrefix("CASTERLEVEL=", out var cl))
                {
                    casterLevel = cl.Value;
                    continue;
                }

                if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                    continue;
                }

                if (part.Value.Contains(","))
                {
                    var (name, dc) = part.SplitTuple(',');
                    spells.Add((name.Value, dc.Value));
                }
                else
                {
                    spells.Add((part.Value, null));
                }
            }

            if (spellBookName == null)
            {
                throw new ParseFailedException(value, "Unable to parse SPELLS:");
            }

            return spells.Select(s =>
            {
                var result = new SpellLikeAbility(s.spell, s.dc, spellBookName, times, timeUnit, casterLevel);
                foreach (var condition in conditions)
                    result.Conditions.Add(condition);
                return result;
            }).ToList();
        }
    }
}