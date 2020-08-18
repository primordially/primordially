using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class ItemCondition : BooleanMultiCondition
    {
        public ItemCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            if (!value.TryRemoveInfix(",", out var countText, out value))
            {
                throw new ParseFailedException(value, "Invalid PREITEM");
            }

            int count = Helpers.ParseInt(countText);
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (part.TryRemovePrefix("TYPE=", out var type))
                {
                    conditions.Add($"character.HasItemOfType(\"{type.Value}\")");
                }
                else
                {
                    conditions.Add($"character.HasItemMatching(\"{part.Value}\")");
                }
            }


            return new ItemCondition(invert, count, conditions);
        }
    }
}