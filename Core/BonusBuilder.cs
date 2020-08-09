namespace Primordially.Core
{
    /// <summary>
    ///     Used for multiple modifications of a single variable.
    ///     All additions will be performed on the variable that was original chosen by <see cref="Character.ModifyVariable" />
    /// </summary>
    public readonly struct BonusBuilder<TKind> where TKind : IImmutableVariableCollection<TKind>
    {
        private readonly TKind _collection;
        private readonly string _name;

        private readonly CharacterVariable _workingVariable;

        public BonusBuilder(TKind collection, string name) : this (collection, name, collection.GetVariable(name))
        {
        }

        public BonusBuilder(TKind collection, string name, CharacterVariable newValue)
        {
            _collection = collection;
            _workingVariable = newValue;
            _name = name;
        }

        public BonusBuilder<TKind> Add(int value)
        {
            return Add("", value);
        }

        public BonusBuilder<TKind> Add(string type, int value)
        {
            return new BonusBuilder<TKind>(_collection, _name, _workingVariable.Add(new FixedValue(type, value)));
        }

        /// <summary>
        ///     Add a bonus that is equivalent to the current value of some other character variable of the current character.
        /// </summary>
        /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
        public BonusBuilder<TKind> AddReference(string referencedVariableName)
        {
            return AddReference("", referencedVariableName);
        }

        /// <summary>
        ///     Add a bonus that is equivalent to the current value of some other character variable of the current character.
        /// </summary>
        /// <param name="type">The type of this bonus. For untyped, call the overload without this parameter</param>
        /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
        public BonusBuilder<TKind> AddReference(string type, string referencedVariableName)
        {
            return new BonusBuilder<TKind>(
                _collection,
                _name,
                _workingVariable.Add(new ComputedValue(type, _collection.GetVariable(referencedVariableName)))
            );
        }

        /// <summary>
        ///     Add a bonus that is equivalent to the current value of some other character variable of the current character, but
        ///     with a particular computation
        /// </summary>
        /// <param name="computation">
        ///     A supported computation to be performed on the referenced variable before using it as a
        ///     bonus. <see cref="BonusComputation" />
        /// </param>
        /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
        public BonusBuilder<TKind> AddReference(string referencedVariableName, ComputeValue computation)
        {
            return AddReference("", referencedVariableName, computation);
        }

        /// <summary>
        ///     Add a bonus that is equivalent to the current value of some other character variable of the current character, but
        ///     with a particular computation
        /// </summary>
        /// <param name="type">The type of this bonus. For untyped, call the overload without this parameter</param>
        /// <param name="computation">
        ///     A supported computation to be performed on the referenced variable before using it as a
        ///     bonus. <see cref="BonusComputation" />
        /// </param>
        /// <param name="referencedVariableName">The name of the variable to be added as a bonus</param>
        public BonusBuilder<TKind> AddReference(string type, string referencedVariableName, ComputeValue computation)
        {
            return new BonusBuilder<TKind>(
                _collection,
                _name,
                _workingVariable.Add(new ComputedValue(type, _collection.GetVariable(referencedVariableName), computation))
            );
        }

        public TKind Build()
        {
            return _collection.WithVariable(_name, _workingVariable);
        }
    }

    public static class BonusBuilder
    {
        public static BonusBuilder<TKind> Create<TKind>(TKind collection, string name) where TKind : IImmutableVariableCollection<TKind>
        {
            return new BonusBuilder<TKind>(collection, name);
        }
    }
}