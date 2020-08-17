using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class DeityAlignmentCondition : Condition
    {
        public IReadOnlyList<string> Alignments { get; }

        private DeityAlignmentCondition(bool invert, List<string> alignments) : base(invert)
        {
            Alignments = alignments;
        }

        public static Condition Parse(TextSpan textSpan, bool invert)
        {
            var alignments = textSpan.Split(',').Select(s => s.Value).ToList();
            return new DeityAlignmentCondition(invert, alignments);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var condition = string.Join(" or ", Alignments.Select(alignment => $"character.Diety.Alignment == \"{alignment}\""));
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }
    }
}