using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class CharacterTypeCondition : BooleanMultiCondition
    {
        public CharacterTypeCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            int? count = null;
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (count == null)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                conditions.Add($"character.IsType(\"{part.Value}\")");
            }

            return new CharacterTypeCondition(invert, count.Value, conditions);
        }
    }
}