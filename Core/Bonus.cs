namespace Primordially.Core
{
    /// <summary>
    /// Represents a single bonus or penalty to a character variable
    /// <see cref="CharacterVariable"/> are comprised of several different
    /// Bonus values combined according to the rules of the particular game engine
    /// </summary>
    public abstract class Bonus
    {
        /// <summary>
        /// The type of this particular bonus. Can be the empty string for untyped bonuses
        /// </summary>
        public abstract string Type { get; }

        /// <summary>
        /// The numeric value of this bonus.  For penalties, this will be negative
        /// </summary>
        public abstract int Value { get; }
    }
}