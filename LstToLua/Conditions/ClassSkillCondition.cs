using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class ClassSkillCondition : MultiCondition
    {
        public ClassSkillCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            if (!value.TryRemoveInfix(",", out var countText, out value))
            {
                throw new ParseFailedException(value, "Invalid PRECSKILL");
            }

            int count = Helpers.ParseInt(countText);
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (part.TryRemovePrefix("TYPE.", out var type))
                {
                    conditions.Add($"#filter(character.ClassSkills, function (skill) return skill.IsType(\"{type.Value}\") end)");
                }
                else
                {
                    conditions.Add($"character.IsClassSkill(\"{part.Value}\") and 1 or 0");
                }
            }

            return new ClassSkillCondition(invert, count, conditions);
        }
    }
}