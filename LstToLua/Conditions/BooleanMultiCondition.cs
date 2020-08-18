using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class BooleanMultiCondition : Condition
    {
        public BooleanMultiCondition(bool inverted, int count, List<string> conditions) : base(inverted)
        {
            Count = count;
            Conditions = conditions;
        }

        public int Count { get; }
        public List<string> Conditions { get; }

        public override void DumpCondition(LuaTextWriter output)
        {
            string condition;
            if (Count == 1)
            {
                condition = string.Join(" or ", Conditions.Select(c => $"({c})"));
            }
            else if (Count == Conditions.Count)
            {
                condition = string.Join(" and ", Conditions.Select(c => $"({c})"));
            }
            else
            {
                condition = $"{Count} <= sum({string.Join(", ", Conditions.Select(c => $"({c} and 1 or 0)"))})";
            }
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }
    }
}