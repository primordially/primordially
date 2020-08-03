namespace PCSharpGen.Core
{
    public delegate int ComputeValue(CharacterStatistic stat);

    public class ComputedValue : GameValue
    {
        public ComputedValue(string type, CharacterStatistic source) : this(type, source, null)
        {
        }

        public ComputedValue(string type, CharacterStatistic source, ComputeValue computation)
        {
            Type = type;
            Source = source;
            Computation = computation;
        }

        public CharacterStatistic Source { get; }
        public ComputeValue Computation { get; }
        public override string Type { get; }

        public override int Value => Computation?.Invoke(Source) ?? Source.Value;
    }
}