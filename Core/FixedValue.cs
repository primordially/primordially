namespace PCSharpGen.Core
{
    /// <summary>
    /// Represents a simple, fixed value bonus, for example, Weapon Focus, which gives a static +1 to attacks,
    /// or an ability score base value
    /// </summary>
    public class FixedValue : Bonus
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