namespace PCSharpGen.Core
{
    public delegate int ComputeValue(CharacterVariable stat);

    public class ComputedValue : GameValue
    {
        public ComputedValue(string type, CharacterVariable source) : this(type, source, null)
        {
        }

        public ComputedValue(string type, CharacterVariable source, ComputeValue computation)
        {
            Type = type;
            Source = source;
            Computation = computation;
        }

        public CharacterVariable Source { get; }
        public ComputeValue Computation { get; }
        public override string Type { get; }

        public override int Value => Computation?.Invoke(Source) ?? Source.Value;
    }
}