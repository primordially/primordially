namespace Primordially.LstToLua.Adds
{
    abstract class Adder : LuaObject
    {
        public abstract string Kind { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Kind", Kind);
            base.DumpMembers(output);
        }

        public static Adder Parse(TextSpan value)
        {
            if (!value.TryRemoveInfix("|", out var what, out value))
            {
                throw new ParseFailedException(value, "Unable to parse ADD");
            }

            switch (what.Value)
            {
                case "SPELLCASTER":
                    return new AddSpellCasterLevel(value);
                case "LANGUAGE":
                    return new AddLanguage(value);
                default:
                    throw new ParseFailedException(what, $"Unknown ADD {what.Value}");
            }
        }
    }
}
