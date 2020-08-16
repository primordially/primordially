using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class AbilityCondition : Condition
    {
        public int Count { get; }
        public string Category { get; }
        public List<(string type, bool inverted)> Types { get; }
        public List<(string name, bool inverted)> Names { get; }

        private AbilityCondition(bool inverted, int count, string category, List<(string type, bool inverted)> types, List<(string name, bool inverted)> names) : base(inverted)
        {
            Count = count;
            Category = category;
            Types = types;
            Names = names;
        }

        public static AbilityCondition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();

            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "PREABILITY must have at least 2 segments");
            }

            var count = Helpers.ParseInt(parts[0]);
            if (!parts[1].StartsWith("CATEGORY="))
            {
                throw new ParseFailedException(parts[1], "Second segment of a PREABILITY must be CATEGORY=");
            }

            var category = parts[1].Substring("CATEGORY=".Length);
            var types = new List<(string type, bool inverted)>();
            var names = new List<(string name, bool inverted)>();
            foreach (var extra in parts.Skip(2))
            {
                if (extra.StartsWith("TYPE."))
                {
                    bool inverted = false;
                    var type = extra.Substring("TYPE.".Length);
                    if (type.StartsWith('[') && type.EndsWith(']'))
                    {
                        inverted = true;
                        type = type.Substring(1, type.Value.Length - 2);
                    }

                    types.Add((type.Value, inverted));
                }
                else
                {
                    var name = extra;
                    bool inverted = false;
                    if (name.StartsWith('[') && name.EndsWith(']'))
                    {
                        inverted = true;
                        name = extra.Substring(1, extra.Value.Length - 2);
                    }

                    names.Add((name.Value, inverted));
                }
            }

            return new AbilityCondition(invert, count, category.Value, types, names);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            if (Inverted)
            {
                output.Write("not (");
            }

            output.Write(Count.ToString());
            output.Write(" <= #filter(character.Abilities, ");
            output.WriteStartFunction("ability");
            output.Write("return ability.Category == \"");
            output.Write(Category);
            output.Write("\" and (");
            output.Write(string.Join(" or ",
                Types.Select((pair) => $"ability.Type {(pair.inverted ? "!=" : "==")} \"{pair.type}\"").Concat(
                    Names.Select((pair) => $"ability.Name {(pair.inverted ? "!=" : "==")} \"{pair.name}\""))));
            output.Write(")\n");
            output.WriteEndFunction();
            output.Write(")");

            if (Inverted)
            {
                output.Write(")");
            }
        }
    }
}