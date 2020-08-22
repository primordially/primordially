using System;

namespace Primordially.LstToLua.Conditions
{
    internal class HandsCondition : Condition
    {
        public string Op { get; }
        public int Value { get; }

        private HandsCondition(bool invert, string op, int value) : base(invert)
        {
            Op = op;
            Value = value;
        }

        public static Condition Parse(TextSpan value, bool invert, string op)
        {
            return new HandsCondition(invert, op, Helpers.ParseInt(value));
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var op = Op switch
            {
                "EQ"   => "==",
                "LT"   => "<",
                "LTEQ" => "<=",
                "GT"   => ">",
                "GTEQ" => ">=",
                "NEQ"  => "~=",
                _ => throw new InvalidOperationException($"Unknown PREHANDS operation {Op}"),
            };

            string condition = $"character.HandCount {op} {Value}";
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }
    }
}