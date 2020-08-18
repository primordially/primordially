using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class SpellCondition : Condition
    {
        public int Count { get; }
        public List<string> SpellNames { get; }

        private SpellCondition(bool invert, int count, List<string> spellNames) : base(invert)
        {
            Count = count;
            SpellNames = spellNames;
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var matchingSpellCount = $"countTrue({string.Join(", ", SpellNames.Select(n => $"character.HasSpell(\"{n}\")"))})";
            var condition = $"({matchingSpellCount}) >= {Count}";
            if (Inverted)
            {
                condition = $"not ({condition})";
            }

            output.Write(condition);
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "Invalid PRESPELL");
            }

            int count = Helpers.ParseInt(parts[0]);
            var spellNames = new List<string>();
            foreach (var part in parts.Skip(1))
            {
                spellNames.Add(part.Value);
            }

            return new SpellCondition(invert, count, spellNames);
        }
    }
}