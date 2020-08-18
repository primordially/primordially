using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class SpellCastingCondition : Condition
    {
        public SpellCastingCondition(bool inverted, bool? memorize, List<string>? types) : base(inverted)
        {
            Memorize = memorize;
            Types = types;
        }

        public bool? Memorize { get; }
        public List<string>? Types { get; }

        public override void DumpCondition(LuaTextWriter output)
        {
            string condition;
            if (Memorize.HasValue)
            {
                condition = $"any(character.Classes, function (class) return class.Memorize == {Memorize.Value.ToString().ToLowerInvariant()} end)";
            }
            else
            {
                condition = string.Join(" and ",
                    Types.Select(t => $"any(character.Classes, function (class) class.IsType(\"{t}\") end)"));
            }

            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            bool? memorize = null;
            List<string>? types = null;

            if (value.StartsWith("MEMORIZE="))
            {
                if (value.Value == "MEMORIZE=Y")
                {
                    memorize = true;
                }
                else
                {
                    memorize = false;
                }
            }
            else
            {
                types = new List<string>();
                foreach (var part in value.Split(','))
                {
                    if (part.StartsWith("TYPE="))
                    {
                        types.Add(part.Substring("TYPE=".Length).Value);
                    }
                    else
                    {
                        throw new ParseFailedException(part, "Unable to parse PRESPELLCAST");
                    }
                }
            }
            return new SpellCastingCondition(invert, memorize, types);
        }
    }
}