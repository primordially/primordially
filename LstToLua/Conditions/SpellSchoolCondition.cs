using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class SpellSchoolCondition : CountMultiCondition
    {
        public SpellSchoolCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            int count = Helpers.ParseInt(parts.First());
            var conditions = new List<string>();
            foreach (var part in parts.Skip(1))
            {
                var (school, levelStr) = part.SplitTuple('=');
                var level = Helpers.ParseInt(levelStr);
                conditions.Add($"#filter(character.SpellsKnown, function (spell) return spell.School == \"{school.Value}\" and spell.Level >= {level} end)");
            }
            return new SpellSchoolCondition(invert, count, conditions);
        }
    }
}