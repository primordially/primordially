using System;

namespace Primordially.LstToLua.Conditions
{
    internal class MinMaxCondition : Condition
    {
        public MinMaxCondition(bool inverted, int? min, int? max, string valueToCheck) : base(inverted)
        {
            Min = min;
            Max = max;
            ValueToCheck = valueToCheck;
        }
        public int? Min { get; }
        public int? Max { get; }
        public string ValueToCheck { get; }

        public override void DumpCondition(LuaTextWriter output)
        {
            string cond;
            if (Min.HasValue && Max.HasValue)
            {
                cond = $"{ValueToCheck} >= {Min} and {ValueToCheck} <= {Max}";
            }
            else if (Min.HasValue)
            {
                cond = $"{ValueToCheck} >= {Min}";
            }
            else if (Max.HasValue)
            {
                cond = $"{ValueToCheck} <= {Max}";
            }
            else
            {
                throw new InvalidOperationException("Invalid MinMaxCondition");
            }

            if (Inverted)
            {
                cond = $"not ({cond})";
            }
            output.Write(cond);
        }
    }
}