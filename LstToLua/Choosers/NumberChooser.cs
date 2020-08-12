using System.Collections.Generic;
using System.Linq;
using LibGit2Sharp;

namespace Primordially.LstToLua.Choosers
{
    class NumberChooser : QualifiedChooser
    {
        public List<int> Numbers { get; } = new List<int>();
        public int? Min { get; private set; }
        public int? Max { get; private set; }
        public int? Increment { get; private set; }
        public bool Multiple { get; private set; }
        public override string ProcessConditions(TextSpan value)
        {
            foreach (var part in value.Split('|'))
            {
                if (part.Value == "MULTIPLE")
                {
                    Multiple = true;
                    continue;
                }

                if (part.Value == "NOSIGN")
                {
                    // Wut is this undocumented thing?
                    continue;
                }
                if (Numbers.Any())
                {
                    Numbers.Add(Helpers.ParseInt(part));
                    continue;
                }
                if (part.TryRemovePrefix("MIN=", out var min))
                {
                    Min = Helpers.ParseInt(min);
                }
                else if (part.TryRemovePrefix("MAX=", out var max))
                {
                    Max = Helpers.ParseInt(max);
                }
                else if (part.TryRemovePrefix("INCREMENT=", out var inc))
                {
                    Increment = Helpers.ParseInt(inc);
                }
                else
                {
                    if (Min.HasValue || Max.HasValue || Increment.HasValue)
                        throw new ParseFailedException(part, "Unable to parse CHOOSE:NUMBER");
                    Numbers.Add(Helpers.ParseInt(part));
                }
            }

            return "";
        }

        public override string ProcessCondition(TextSpan value)
        {
            throw new System.NotSupportedException();
        }

        public override string Process(TextSpan value)
        {
            base.Process(value);
            string param;
            if (Numbers.Any())
            {
                param = $"{{{string.Join(", ", Numbers)}}}, {Multiple.ToString().ToLowerInvariant()}";
            }
            else
            {
                param = $"{Min?.ToString() ?? "nil"}, {Max?.ToString() ?? "nil"}, {Increment?.ToString() ?? "nil"}";
            }

            return $@"
ChooseNumber({param}{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}