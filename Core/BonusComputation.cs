namespace PCSharpGen.Core
{
    public static class BonusComputation
    {
        public static int AbilityScoreModifier(CharacterVariable abilityScore) => abilityScore.Value / 2 - 5;
        public static ComputeValue WithMax(int max) => b => b.Value > max ? max : b.Value;
        public static ComputeValue WithMin(int min) => b => b.Value < min ? min : b.Value;
        public static ComputeValue Divided(int denominator) => b => b.Value / denominator;
        public static ComputeValue EveryXAfter(int valueBase, int denominator) =>
            b => (b.Value - valueBase) / denominator + 1;
    }
}