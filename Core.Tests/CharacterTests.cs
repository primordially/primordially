using FluentAssertions;
using NUnit.Framework;

namespace PCSharpGen.Core.Tests
{
    public class CharacterTests
    {
        [Test]
        public void NameTest()
        {
            var c = new Character {Name = "Sir Testy McTestington"};
            c.Name.Should().Be("Sir Testy McTestington");
        }

        [Test]
        public void ClassTest()
        {
            var sorcerer = new Class {
                Name = "Sorcerer",
                HitDie = 6,
                BaseAttackBonus = 1f/3f,
                FortitudeSaveBase = 1f/3f,
                FortitudeSavePerLevel = 1f/3f,
                ReflexSaveBase = 1f/3f,
                ReflexSavePerLevel = 1f/3f,
                WillSaveBase = 2,
                WillSavePerLevel = 1f/2f
            };
            var c = new Character {Class = sorcerer};
            c.Class.Should().Be(sorcerer);
        }
    }
}
