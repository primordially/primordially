using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class WieldCondition : BooleanMultiCondition
    {
        public WieldCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
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

                conditions.Add($"item.WieldCategory == \"{part.Value}\"");
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse equipment PREWIELD");
            }

            return new WieldCondition(invert, count.Value, conditions);
        }
    }
}