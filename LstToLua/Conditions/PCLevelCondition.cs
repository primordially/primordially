using System;

namespace Primordially.LstToLua.Conditions
{
    internal class PCLevelCondition : Condition
    {
        public PCLevelCondition(bool inverted, int? min, int? max) : base(inverted)
        {
            Min = min;
            Max = max;
        }

        public int? Min { get; }
        public int? Max { get; }

        public static Condition Parse(TextSpan value, bool invert)
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

            return new PCLevelCondition(invert, min, max);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            string cond;
            if (Min.HasValue && Max.HasValue)
            {
                cond = $"character.Level >= {Min} and character.Level <= {Max}";
            }
            else if (Min.HasValue)
            {
                cond = $"character.Level >= {Min}";
            }
            else if (Max.HasValue)
            {
                cond = $"character.Level <= {Max}";
            }
            else
            {
                throw new InvalidOperationException("Invalid PCLevelCondition");
            }

            if (Inverted)
            {
                cond = $"not ({cond})";
            }
            output.Write(cond);
        }
    }
}