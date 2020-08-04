using System;
using System.Collections.Immutable;

namespace PCSharpGen.Core
{
    public class PathfinderBaseRules : BaseGameRules
    {
        private static readonly string[] s_abilityScores =
        {
            "STR", "DEX", "CON", "INT", "WIS", "CHA"
        };

        public override ImmutableHashSet<string> StackedBonuses { get; } =
            ImmutableHashSet.Create(StringComparer.OrdinalIgnoreCase, "", "dodge", "circumstance");

        public override ImmutableDictionary<string, int> BonusOrdering { get; } = InitializeOrdering();

        public override void InitializeCharacter(Character character)
        {
            foreach (string abilityScore in s_abilityScores)
            {
                character.SetVariableBase(abilityScore, 10);
                character.AddReferenceToVariable(abilityScore + "Mod",
                    abilityScore,
                    ValueComputation.AbilityScoreModifier);
                character.AddReferenceToVariable(abilityScore + "Bonus",
                    abilityScore + "Mod",
                    ValueComputation.WithMin(0));
            }
        }

        private static ImmutableDictionary<string, int> InitializeOrdering()
        {
            ImmutableDictionary<string, int>.Builder builder = ImmutableDictionary.CreateBuilder<string, int>();

            void Add(string bonus)
            {
                builder.Add(bonus, builder.Count);
            }

            Add("BASE");
            foreach (string a in s_abilityScores)
            {
                Add(a + "Mod");
                Add(a + "Bonus");
            }

            return builder.ToImmutable();
        }
    }
}