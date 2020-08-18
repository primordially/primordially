using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class SkillCondition : BooleanMultiCondition
    {
        public SkillCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "Invalid PRESKILL");
            }

            int count = Helpers.ParseInt(parts[0]);
            var conditions = new List<string>();
            foreach (var part in parts.Skip(1))
            {
                var (nameOrType, rankText) = part.SplitTuple('=');
                int rank = Helpers.ParseInt(rankText);
                if (nameOrType.StartsWith("TYPE."))
                {
                    var type = nameOrType.Substring("TYPE.".Length);
                    conditions.Add($"character.BestSkillOfType(\"{type.Value}\").ranks >= {rank}");
                }
                else
                {
                    conditions.Add($"character.Skill(\"{nameOrType.Value}\").ranks >= {rank}");
                }
            }

            return new SkillCondition(invert, count, conditions);
        }
    }
}