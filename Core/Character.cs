using System;
using System.Collections.Generic;

namespace Primordially.Core
{
    public class Character
    {
        public Character(BaseGameRules rules)
        {
            Rules = rules;
        }

        public BaseGameRules Rules { get; }

        public string? Name { get; set; }

        public Dictionary<string, CharacterVariable> Variables { get; } = new Dictionary<string, CharacterVariable>(StringComparer.InvariantCultureIgnoreCase);

        public CharacterVariable GetVariable(string name)
        {
            if (Variables.TryGetValue(name, out var result))
                return result;
            result = new CharacterVariable(this, new List<Bonus>());
            Variables.Add(name, result);
            return result;
        }

        public BonusBuilder ModifyVariable(string name)
        {
            // This doesn't need to do anything, because "GetReference" will always create a variable that doesn't exist
            // and set it to zero.  It's just a convenience to callers to get a BonusBuilder
            return new BonusBuilder(this, name);
        }

        /// <summary>
        /// Used for multiple modifications of a single variable.
        ///
        /// All additions will be performed on the variable that was original chosen by <see cref="Character.ModifyVariable"/>
        /// </summary>
        public struct BonusBuilder
        {
            private readonly Character _character;
            private readonly string _name;

            public BonusBuilder(Character character, string name)
            {
                _character = character;
                _name = name;
            }

            public BonusBuilder Add(int value)
            {
                return Add("", value);
            }

            public BonusBuilder Add(string type, int value)
            {
                _character.GetVariable(_name).Add(new FixedValue(type, value));
                return this;
            }
            
            /// <summary>
            /// Add a bonus that is equivalent to the current value of some other character variable of the current character.
            /// </summary>
            /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
            public BonusBuilder AddReference(string referencedVariableName)
            {
                return AddReference("", referencedVariableName);
            }

            /// <summary>
            /// Add a bonus that is equivalent to the current value of some other character variable of the current character.
            /// </summary>
            /// <param name="type">The type of this bonus. For untyped, call the overload without this parameter</param>
            /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
            public BonusBuilder AddReference(string type, string referencedVariableName)
            {
                _character.GetVariable(_name).Add(new ComputedValue(type, _character.GetVariable(referencedVariableName)));
                return this;
            }

            /// <summary>
            /// Add a bonus that is equivalent to the current value of some other character variable of the current character, but with a particular computation
            /// </summary>
            /// <param name="computation">A supported computation to be performed on the referenced variable before using it as a bonus. <see cref="BonusComputation"/></param>
            /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
            public BonusBuilder AddReference(string referencedVariableName, ComputeValue computation)
            {
                return AddReference("", referencedVariableName, computation);
            }
            
            /// <summary>
            /// Add a bonus that is equivalent to the current value of some other character variable of the current character, but with a particular computation
            /// </summary>
            /// <param name="type">The type of this bonus. For untyped, call the overload without this parameter</param>
            /// <param name="computation">A supported computation to be performed on the referenced variable before using it as a bonus. <see cref="BonusComputation"/></param>
            /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
            public BonusBuilder AddReference(string type, string referencedVariableName, ComputeValue computation)
            {
                _character.GetVariable(_name).Add(new ComputedValue(type, _character.GetVariable(referencedVariableName), computation));
                return this;
            }
        }
    }
}
