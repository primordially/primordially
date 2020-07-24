using FluentAssertions;
using NUnit.Framework;

namespace PCSharpGen.Core.Tests
{
    public class ClassTests
    {
        [Test]
        public void NameTest()
        {
            var c = new Class {Name = "Sorcerer"};
            c.Name.Should().Be("Sorcerer");
        }

        [Test]
        public void HitDieTest()
        {
            var c = new Class { HitDie = 6 };
            c.HitDie.Should().Be(6);
        }

        [Test]
        public void SkillRanksTest()
        {
            var c = new Class { SkillRanks = 6 };
            c.SkillRanks.Should().Be(6);
        }

        [Test]
        public void BaseAttackBonusTest()
        {
            var c = new Class { BaseAttackBonus = 0.5f };
            c.BaseAttackBonus.Should().Be(0.5f);
        }

        [Test]
        public void FortitudeSaveBaseTest()
        {
            var c = new Class { FortitudeSaveBase = 0 };
            c.FortitudeSaveBase.Should().Be(0);
        }

        [Test]
        public void FortitudeSavePerLevelTest()
        {
            var c = new Class { FortitudeSavePerLevel = 0.5f };
            c.FortitudeSavePerLevel.Should().Be(0.5f);
        }

        [Test]
        public void ReflexSaveBaseTest()
        {
            var c = new Class { ReflexSaveBase = 0 };
            c.ReflexSaveBase.Should().Be(0);
        }

        [Test]
        public void ReflexSavePerLevelTest()
        {
            var c = new Class { ReflexSavePerLevel = 0.5f };
            c.ReflexSavePerLevel.Should().Be(0.5f);
        }

        [Test]
        public void WillSaveBaseTest()
        {
            var c = new Class { WillSaveBase = 0 };
            c.WillSaveBase.Should().Be(0);
        }

        [Test]
        public void WillSavePerLevelTest()
        {
            var c = new Class { WillSavePerLevel = 0.5f };
            c.WillSavePerLevel.Should().Be(0.5f);
        }
    }
}
