using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class StatCondition : BooleanMultiCondition
    {
        public StatCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
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

                var (k, v) = part.SplitTuple('=');

                conditions.Add($"character.Stats[\"{k.Value}\"] >= {v.Value}");
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PRESTAT");
            }

            return new StatCondition(invert, count.Value, conditions);
        }
    }
}