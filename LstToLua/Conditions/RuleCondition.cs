using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class RuleCondition : BooleanMultiCondition
    {
        public RuleCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            int? count = null;
            var conditions = new List<string>();
            foreach (var item in value.Split(','))
            {
                if (!count.HasValue)
                {
                    count = Helpers.ParseInt(item);
                    continue;
                }

                conditions.Add($"IsRuleEnabled(\"{item.Value}\")");
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Cannot parse PRERULE");
            }

            return new RuleCondition(invert, count.Value, conditions);
        }
    }
}