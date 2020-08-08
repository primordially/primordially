using System;
using System.Reactive.Subjects;
using FluentAssertions;
using Moq;
using NUnit.Framework;
using Primordially.Core;
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
            character = character.WithName("Test Name");
            PathfinderCharacterViewModel model = new PathfinderCharacterViewModel(new BehaviorSubject<Character>(character));
            model.Name.Should().Be("Test Name");
        }

        [Test]
        public void NameChangeTriggersUpdate()
        {
            PathfinderRules rules = new PathfinderRules();
            var character = rules.CreateCharacter();
            character = character.WithName("Test Name");
            PathfinderCharacterViewModel model = new PathfinderCharacterViewModel(new BehaviorSubject<Character>(character));
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
        public void NameChangeUpdatesModel()
        {
            PathfinderRules rules = new PathfinderRules();
            var character = rules.CreateCharacter();
            character = character.WithName("Test Name");
            var model = new BehaviorSubject<Character>(character);
            PathfinderCharacterViewModel viewModel = new PathfinderCharacterViewModel(model);
            viewModel.Name = "New Name";
            model.Value.Name.Should().Be("New Name");
        }

        [Test]
        public void SameNameDoesNotTriggerUpdate()
        {
            PathfinderRules rules = new PathfinderRules();
            var character = rules.CreateCharacter();
            character = character.WithName("Test Name");
            PathfinderCharacterViewModel model = new PathfinderCharacterViewModel(new BehaviorSubject<Character>(character));
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