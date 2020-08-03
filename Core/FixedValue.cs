namespace PCSharpGen.Core
{
    public class FixedValue : GameValue
    {
        public FixedValue(string type, int value)
        {
            Type = type;
            Value = value;
        }

        public override string Type { get; }
        public override int Value { get; }
    }
}