using System;
using System.Collections.Generic;
using System.Text;

namespace Primordially.LstToLua.Adds
{
    abstract class Adder : LuaObject
    {
        public abstract string Kind { get; }

        public override void Dump(LuaTextWriter output)
        {
            output.Write($"Add{Kind}(");
            base.Dump(output);
            output.Write(")");
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
