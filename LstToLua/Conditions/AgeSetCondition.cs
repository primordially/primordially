using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class AgeSetCondition : BooleanMultiCondition
    {
        public AgeSetCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
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
                conditions.Add($"character.IsAgeSetOrOlder(\"{part.Value}\")");
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PREAGESET");
            }

            return new AgeSetCondition(invert, count.Value, conditions);
        }
    }
}