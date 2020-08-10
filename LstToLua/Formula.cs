namespace Primordially.LstToLua
{
    internal class Formula : IDumpable
    {
        private readonly string _value;

        private Formula(string value)
        {
            _value = value;
        }

        public static implicit operator Formula(string value)
        {
            return new Formula(value);
        }

        public void Dump(LuaTextWriter output)
        {
            output.Write("Formula(");
            output.WriteValue(_value);
            output.Write(")");
        }
    }
}