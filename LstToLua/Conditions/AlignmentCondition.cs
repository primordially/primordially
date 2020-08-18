using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class AlignmentCondition : Condition
    {
        public IReadOnlyList<string> Alignments { get; }

        private AlignmentCondition(bool invert, List<string> alignments) : base(invert)
        {
            Alignments = alignments;
        }

        public static Condition Parse(TextSpan textSpan, bool invert)
        {
            var alignments = textSpan.Split(',').Select(s => s.Value).ToList();
            return new AlignmentCondition(invert, alignments);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var condition = string.Join(" or ", Alignments.Select(alignment => $"character.IsAlignment(\"{alignment}\")"));
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }
    }
}