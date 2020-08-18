using System.Collections.Generic;
using System.Linq;
using System.Threading;

namespace Primordially.LstToLua.Conditions
{
    internal class ClassCondition : CountMultiCondition
    {
        public ClassCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static ClassCondition Parse(TextSpan value, bool invert)
        {
            int? count = null;
            var conditions = new List<string>();
            foreach (var p in value.Split(','))
            {
                var part = p;
                if (count == null)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                if (part.Value == "ANY")
                {
                    conditions.Add("character.CountClasses()");
                    continue;
                }

                if (part.TryRemovePrefix("SPELLCASTER=", out part))
                {
                    conditions.Add($"character.CountSpellCastingClasses({part.Value})");
                    continue;
                }

                if (part.TryRemovePrefix("SPELLCASTER.", out part))
                {
                    var (k, l) = part.SplitTuple('=');
                    conditions.Add($"character.Count{k.Value}SpellCastingClasses({l.Value})");
                    continue;
                }

                if (part.TryRemovePrefix("TYPE.", out part))
                {
                    var (t, l) = part.SplitTuple('=');
                    conditions.Add($"character.CountSpellCastingClasses({l.Value}, \"{t.Value}\")");
                    continue;
                }

                {
                    var (n, l) = part.SplitTuple('=');
                    conditions.Add($"character.GetLevelOfClass(\"{n.Value}\") >= {l.Value}");
                }
            }

            if (count == null)
            {
                throw new ParseFailedException(value, "Unable to parse PRECLASS");
            }

            return new ClassCondition(invert, count.Value, conditions);
        }
    }
}