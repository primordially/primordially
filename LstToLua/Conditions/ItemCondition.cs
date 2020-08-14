using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class ItemCondition : MultiCondition
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
                    conditions.Add($"#filter(character.Items, function (item) return item.IsType(\"{type.Value}\") end)");
                }
                else
                {
                    conditions.Add($"#filter(character.Items, function (item) return stringMatch(item.Name, \"{part.Value}\") end)");
                }
            }


            return new ItemCondition(invert, count, conditions);
        }
    }
}