namespace Primordially.LstToLua
{
    internal class DiceFormula : IDumpable
    {
        private readonly string _value;

        public DiceFormula(string value)
        {
            _value = value;
        }

        public static implicit operator DiceFormula(string value)
        {
            return new DiceFormula(value);
        }

        public void Dump(LuaTextWriter output)
        {
            output.Write("DiceFormula(");
            output.WriteValue(_value);
            output.Write(")");
        }
    }
}