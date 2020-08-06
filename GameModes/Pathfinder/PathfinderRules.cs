using System;
using System.Collections.Immutable;
using Primordially.Core;

namespace Primordially.Pathfinder
{
    /// <summary>
    /// This should probably eventually be read from LUA/LST files,
    /// making this class redundant.
    ///
    /// For now this gives anyone that might want to play around with UI
    /// something to work with.
    /// </summary>
    public class PathfinderRules : BaseGameRules
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
                character.ModifyVariable(abilityScore).Add(10);
                character.ModifyVariable(abilityScore + "Mod")
                    .AddReference(abilityScore, BonusComputation.AbilityScoreModifier);
                character.ModifyVariable(abilityScore + "Bonus")
                    .AddReference(abilityScore + "Mod", BonusComputation.WithMin(0));
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