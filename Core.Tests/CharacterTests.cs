using System.Collections.Immutable;
using FluentAssertions;
using NUnit.Framework;

namespace PCSharpGen.Core.Tests
{
    public class CharacterTests
    {
        private readonly TestRules _rules = new TestRules();

        [Test]
        public void BasicValue()
        {
            Character c = _rules.CreateCharacter();
            c.SetVariableBase("BAB", 68);
            c.GetVariable("BAB").Value.Should().Be(68);
        }

        [Test]
        public void AbilityScoreBonusComputation()
        {
            Character c = _rules.CreateCharacter();
            c.SetVariableBase("Str", 5);
            c.GetVariable("StrMod").Value.Should().Be(-3);
            c.GetVariable("StrBonus").Value.Should().Be(0);
        }

        [Test]
        public void AbilityScoreModComputation()
        {
            Character c = _rules.CreateCharacter();
            c.SetVariableBase("Str", 16);
            c.GetVariable("StrMod").Value.Should().Be(3);
        }

        [Test]
        public void CombinedValue()
        {
            Character c = _rules.CreateCharacter();
            c.SetVariableBase("Str", 16);
            c.SetVariableBase("BAB", 1);
            c.AddReferenceToVariable("StrAttack", "BAB").AddReference("StrMod");
            c.GetVariable("StrAttack").Value.Should().Be(4);
        }

        [Test]
        public void OverlappedBonusTypes()
        {
            Character c = _rules.CreateCharacter();
            c.SetVariableBase("Str", 16);
            c.SetVariableBase("BAB", 1);
            c.AddReferenceToVariable("StrAttack", "BAB")
                .AddReference("StrBonus")
                .Add("unstacked", 40)
                .Add("unstacked", 600);

            c.GetVariable("StrAttack").Value.Should().Be(604);
        }

        [Test]
        public void StackedBonusTypes()
        {
            Character c = _rules.CreateCharacter();
            c.SetVariableBase("Str", 16);
            c.SetVariableBase("BAB", 1);
            c.AddReferenceToVariable("StrAttack", "BAB")
                .AddReference("StrBonus")
                .Add("stacked", 40)
                .Add("stacked", 600);

            c.GetVariable("StrAttack").Value.Should().Be(644);
        }

        private class TestRules : BaseGameRules
        {
            public override ImmutableHashSet<string> StackedBonuses { get; } = ImmutableHashSet.Create("stacked");

            public override ImmutableDictionary<string, int> BonusOrdering { get; } =
                ImmutableDictionary<string, int>.Empty;

            public override void InitializeCharacter(Character character)
            {
                character.Name = "Sir Testy McTestington";
                character.AddReferenceToVariable("StrMod", "Str", ValueComputation.AbilityScoreModifier);
                character.AddReferenceToVariable("StrBonus", "StrMod", ValueComputation.WithMin(0));
            }
        }
    }
}