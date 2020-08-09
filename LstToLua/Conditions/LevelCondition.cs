namespace Primordially.LstToLua.Conditions
{
    internal class LevelCondition : MinMaxCondition
    {
        public LevelCondition(bool inverted, int? min, int? max, string valueToCheck) : base(inverted, min, max, valueToCheck)
        {
        }

        public static Condition Parse(TextSpan value, bool invert, bool pc)
        {
            int? min = null;
            int? max = null;
            var parts = value.Split(',');
            foreach (var part in parts)
            {
                if (part.StartsWith("MIN="))
                {
                    min = Helpers.ParseInt(part.Substring("MIN=".Length));
                }
                else if (part.StartsWith("MAX="))
                {
                    max = Helpers.ParseInt(part.Substring("MAX=".Length));
                }
            }

            return new LevelCondition(invert, min, max, pc ? "character.PcLevel" : "character.Level");
        }
    }
}