using System;

namespace Primordially.LstToLua
{
    internal class Formula : IDumpable
    {
        public string Value { get; }

        public Formula(TextSpan value)
            :this(value.Value)
        {
        }

        public Formula(string value)
        {
            Value = value;
        }

        public static implicit operator Formula(string value)
        {
            return new Formula(value);
        }

        public void Dump(LuaTextWriter output)
        {
            output.Write("Formula(");
            output.WriteValue(Value.AsSpan());
            output.Write(")");
        }
    }
}