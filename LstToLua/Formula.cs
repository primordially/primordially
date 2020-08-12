namespace Primordially.LstToLua
{
    internal class Formula : IDumpable
    {
        public string Value { get; }

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
            output.WriteValue(Value);
            output.Write(")");
        }
    }
}