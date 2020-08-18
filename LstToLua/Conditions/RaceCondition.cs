using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class RaceCondition : BooleanMultiCondition
    {
        public RaceCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            IEnumerable<TextSpan> rest;
            if (!int.TryParse(parts[0].Value, out int count))
            {
                count = 1;
                rest = parts;
            }
            else
            {
                rest = parts.Skip(1);
            }

            List<string> conditions = new List<string>();
            foreach (var p in rest)
            {
                var part = p;
                bool inverted = false;
                if (part.StartsWith('[') && part.EndsWith(']'))
                {
                    inverted = true;
                    part = part.Substring(1, part.Value.Length - 2);
                }

                void AddCondition(string cond)
                {
                    if (inverted)
                    {
                        conditions.Add($"not ({cond})");
                    }
                    else
                    {
                        conditions.Add(cond);
                    }
                }
                if (part.StartsWith("TYPE="))
                {
                    var type = part.Substring("TYPE=".Length).Value;
                    AddCondition($"any(character.Race.Types, function (type) stringMatch(type, \"{type}\") end)");
                }
                else if (part.StartsWith("RACETYPE="))
                {
                    var raceType = part.Substring("RACETYPE=".Length).Value;
                    AddCondition($"any(character.Race.RaceTypes, function (type) stringMatch(type, \"{raceType}\") end)");
                }
                else if (part.StartsWith("RACESUBTYPE="))
                {
                    var raceSubType = part.Substring("RACESUBTYPE=".Length).Value;
                    AddCondition($"any(character.Race.RaceSubTypes, function (type) stringMatch(type, \"{raceSubType}\") end)");
                }
                else
                {
                    AddCondition($"character.Race.Name == \"{part.Value}\"");
                }
            }

            return new RaceCondition(invert, count, conditions);
        }
    }
}