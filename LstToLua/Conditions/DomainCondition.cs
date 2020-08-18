using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class DomainCondition : BooleanMultiCondition
    {
        public DomainCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
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

                conditions.Add($"character.HasDomain(\"{part.Value}\")");
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PREDOMAIN");
            }

            return new DomainCondition(invert, count.Value, conditions);
        }
    }
}