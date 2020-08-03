using System.Collections.Immutable;
using FluentAssertions;
using NUnit.Framework;

namespace PCSharpGen.Core.Tests
{
    public class CharacterTests
    {
        private class TestRuleset : BaseGameRules
        {
            public override ImmutableHashSet<string> StackedBonuses { get; } = ImmutableHashSet.Create("stacked");
            public override ImmutableDictionary<string, int> BonusOrdering { get; } = ImmutableDictionary<string, int>.Empty;

            public override void InitializeCharacter(Character character)
            {
                character.Name = "Sir Testy McTestington";
                character.AddReferenceToStatistic("StrMod", "Str", ValueComputation.AbilityScoreModifier);
                character.AddReferenceToStatistic("StrBonus", "StrMod", ValueComputation.WithMin(0));
            }
        }

        private TestRuleset _rules = new TestRuleset();

        [Test]
        public void BasicValue()
        {
            var c = _rules.CreateCharacter();
            c.SetStatisticBase("BAB", 68);
            c.GetStatistic("BAB").Value.Should().Be(68);
        }

        [Test]
        public void AbilityScoreBonusComputation()
        {
            var c = _rules.CreateCharacter();
            c.SetStatisticBase("Str", 5);
            c.GetStatistic("StrMod").Value.Should().Be(-3);
            c.GetStatistic("StrBonus").Value.Should().Be(0);
        }

        [Test]
        public void AbilityScoreModComputation()
        {
            var c = _rules.CreateCharacter();
            c.SetStatisticBase("Str", 16);
            c.GetStatistic("StrMod").Value.Should().Be(3);
        }

        [Test]
        public void CombinedValue()
        {
            var c = _rules.CreateCharacter();
            c.SetStatisticBase("Str", 16);
            c.SetStatisticBase("BAB", 1);
            c.AddReferenceToStatistic("StrAttack", "BAB").AddReference("StrMod");
            c.GetStatistic("StrAttack").Value.Should().Be(4);
        }

        [Test]
        public void OverlappedBonusTypes()
        {
            var c = _rules.CreateCharacter();
            c.SetStatisticBase("Str", 16);
            c.SetStatisticBase("BAB", 1);
            c.AddReferenceToStatistic("StrAttack", "BAB")
                .AddReference("StrBonus")
                .Add("insight", 40)
                .Add("insight", 600);

            c.GetStatistic("StrAttack").Value.Should().Be(604);
        }
    }
}
