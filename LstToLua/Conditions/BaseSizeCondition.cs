using System;

namespace Primordially.LstToLua.Conditions
{
    internal class BaseSizeCondition : Condition
    {
        public string Op { get; }
        public string Size { get; }

        public static Condition Parse(TextSpan value, bool invert, string op)
        {
            return new BaseSizeCondition(invert, op, value.Value);
        }

        public BaseSizeCondition(bool inverted, string op, string size) : base(inverted)
        {
            Op = op;
            Size = size;
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            if (Inverted)
            {
                output.Write("not (");
            }
            var op = Op switch
            {
                "EQ"   => "==",
                "LT"   => "<",
                "LTEQ" => "<=",
                "GT"   => ">",
                "GTEQ" => ">=",
                "NEQ"  => "!=",
                _ => throw new InvalidOperationException($"Unknown PREBASESIZE operation {Op}"),
            };
            output.Write($"character.BaseSize {op} GetSize(\"{Size}\")");
            if (Inverted)
            {
                output.Write(")");
            }
        }
    }
}