using System;
using FluentAssertions;
using Moq;
using NUnit.Framework;
using Primordially.Pathfinder.Views;
using ReactiveUI;

namespace Primordially.Pathfinder.Tests
{
    public class PathfinderCharacterViewModelTests
    {
        [Test]
        public void NameIsRead()
        {
            PathfinderRules rules = new PathfinderRules();
            var character = rules.CreateCharacter();
            character.Name = "Test Name";
            PathfinderCharacterViewModel model = new PathfinderCharacterViewModel(character);
            model.Name.Should().Be("Test Name");
        }

        [Test]
        public void NameChangeTriggersUpdate()
        {
            PathfinderRules rules = new PathfinderRules();
            var character = rules.CreateCharacter();
            character.Name = "Test Name";
            PathfinderCharacterViewModel model = new PathfinderCharacterViewModel(character);
            int changingCount = 0;
            var obs = new Mock<IObserver<IReactivePropertyChangedEventArgs<IReactiveObject>>>();
            obs.Setup(o => o.OnNext(It.IsAny<IReactivePropertyChangedEventArgs<IReactiveObject>>()))
                .Callback(() => changingCount++);

            changingCount.Should().Be(0, "name has not be changed yet");
            using var _ = model.Changed.Subscribe(obs.Object);
            model.Name = "New Name";
            changingCount.Should().Be(1, "name has been changed");
        }

        [Test]
        public void SameNameDoesNotTriggerUpdate()
        {
            PathfinderRules rules = new PathfinderRules();
            var character = rules.CreateCharacter();
            character.Name = "Test Name";
            PathfinderCharacterViewModel model = new PathfinderCharacterViewModel(character);
            int changingCount = 0;
            var obs = new Mock<IObserver<IReactivePropertyChangedEventArgs<IReactiveObject>>>();
            obs.Setup(o => o.OnNext(It.IsAny<IReactivePropertyChangedEventArgs<IReactiveObject>>()))
                .Callback(() => changingCount++);

            changingCount.Should().Be(0, "name has not be changed yet");
            using var _ = model.Changed.Subscribe(obs.Object);
            model.Name = "Test Name";
            changingCount.Should().Be(0, "name was set to same value");
        }
    }
}