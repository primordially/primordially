using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class DeityCondition : BooleanMultiCondition
    {
        public DeityCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            int? count = null;
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (!count.HasValue)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                if (part.TryRemovePrefix("PANTHEON.", out var pantheon))
                {
                    conditions.Add($"character.Diety.Pantheon == \"{pantheon.Value}\"");
                }
                else if (part.Value == "Y")
                {
                    conditions.Add("character.Diety != nil");
                }
                else if (part.Value == "N")
                {
                    conditions.Add("character.Diety == nil");
                }
                else
                {
                    conditions.Add($"character.Diety.Name == \"{part.Value}\"");
                }
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PREDIETY");
            }

            return new DeityCondition(invert, count.Value, conditions);
        }
    }
}