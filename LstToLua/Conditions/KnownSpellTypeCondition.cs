using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class KnownSpellTypeCondition : Condition
    {
        public int Count { get; }
        public IReadOnlyList<(string type, int level)> SpellLevelMatches { get; }

        private KnownSpellTypeCondition(bool invert, int count, List<(string type, int level)> spellLevelMatches) : base(invert)
        {
            Count = count;
            SpellLevelMatches = spellLevelMatches;
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var matchingSpellCount = string.Join(" + ", SpellLevelMatches.Select(t => $"character.SpellCount(\"{t.type}\", {t.level})"));
            var condition = $"({matchingSpellCount}) >= {Count}";
            if (Inverted)
            {
                output.Write($"not ({condition})");
            }
            else
            {
                output.Write(condition);
            }
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "Invalid PRESPELLTYPE");
            }

            int count = Helpers.ParseInt(parts[0]);
            var spellLevelMatches = new List<(string type, int level)>();
            foreach (var part in parts.Skip(1))
            {
                var (type, levelText) = part.SplitTuple('=');
                int level = Helpers.ParseInt(levelText);
                spellLevelMatches.Add((type.Value, level));
            }

            return new KnownSpellTypeCondition(invert, count, spellLevelMatches);
        }
    }
}