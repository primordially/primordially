using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class LanguageCondition : CountMultiCondition
    {
        public LanguageCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
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
                if (part.Value == "ANY")
                {
                    conditions.Add("#character.Languages");
                }
                else if (part.TryRemovePrefix("TYPE=", out var type))
                {
                    conditions.Add($"character.CountLanguagesOfType(\"{type.Value}\")");
                }
                else
                {
                    conditions.Add($"character.HasLanguageMatching(\"{part.Value}\") and 1 or 0");
                }
            }

            if (count == null)
            {
                throw new ParseFailedException(value, "Unable to parse PRELANG");
            }
            return new LanguageCondition(invert, count.Value, conditions);
        }
    }
}