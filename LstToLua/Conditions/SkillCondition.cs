using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class SkillCondition : MultiCondition
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
                    conditions.Add($"character.BestSkillOfType(\"{type.Value}\").ranks >= {rank} and 1 or 0");
                }
                else
                {
                    conditions.Add($"character.Skill(\"{nameOrType.Value}\").ranks >= {rank} and 1 or 0");
                }
            }

            return new SkillCondition(invert, count, conditions);
        }
    }
}