using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class MovementCondition : MultiCondition
    {
        public MovementCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            if (!value.TryRemoveInfix(",", out var countText, out value))
            {
                throw new ParseFailedException(value, "Invalid PREMOVE");
            }

            int count = Helpers.ParseInt(countText);
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                var (type, speed) = part.SplitTuple('=');
                conditions.Add($"character.HasMovement(\"{type.Value}\", {speed.Value})");
            }


            return new MovementCondition(invert, count, conditions);
        }
    }
}