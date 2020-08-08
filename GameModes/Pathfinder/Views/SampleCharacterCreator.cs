using System.Collections.Immutable;
using System.Reactive.Subjects;
using Primordially.Core;

namespace Primordially.Pathfinder.Views
{
    public static class SampleCharacterCreator
    {
        public static Character CreateWizard()
        {
            var rules = new PathfinderRules();
            Character character = rules.CreateCharacter();
            character = character.WithName("Sample Wizard");
            character = character.WithLevels(
                ImmutableList.Create(
                    new CharacterLevel("Wizard", rules).WithVariable(
                        "Hp",
                        new CharacterVariable(rules, new FixedValue("BASE", 6))
                    ),
                    new CharacterLevel("Wizard", rules).WithVariable(
                        "Hp",
                        new CharacterVariable(rules, new FixedValue("BASE", 4))
                    )
                )
            );
            return character;
        }

        public static readonly BehaviorSubject<Character> Wizard = new BehaviorSubject<Character>(CreateWizard());
    }
}