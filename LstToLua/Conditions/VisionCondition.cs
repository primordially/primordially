using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class VisionCondition : BooleanMultiCondition
    {
        public VisionCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
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

                var (vision, distance) = part.SplitTuple('=');
                if (distance.Value == "ANY")
                {
                    conditions.Add($"character.HasVision(\"{vision.Value}\")");
                }
                else
                {
                    conditions.Add($"character.HasVision(\"{vision.Value}\", {distance.Value})");
                }
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PREVISION");
            }

            return new VisionCondition(invert, count.Value, conditions);
        }
    }
}