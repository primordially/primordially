using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class AbilityCondition : Condition
    {
        public int Count { get; }
        public string Category { get; }
        public List<string> NotTypes { get; } = new List<string>();
        public List<string> NotNames { get; } = new List<string>();
        public List<string> Types { get; } = new List<string>();
        public List<string> Names { get; } = new List<string>();

        private AbilityCondition(bool inverted, TextSpan value) : base(inverted)
        {
            int? count = null;
            string? category = null;
            foreach (var p in value.Split(','))
            {
                var part = p;
                if (count == null)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                if (category == null)
                {
                    if (!part.TryRemovePrefix("CATEGORY=", out var cat))
                    {
                        throw new ParseFailedException(part, "Unable to parse PREABILITY");
                    }

                    category = cat.Value;
                    continue;
                }

                bool invert = part.TryRemovePrefixSuffix("[", "]", out part);
                if (part.TryRemovePrefix("TYPE.", out part))
                {
                    if (invert)
                    {
                        NotTypes.Add(part.Value);
                    }
                    else
                    {
                        Types.Add(part.Value);
                    }
                }
                else
                {
                    if (invert)
                    {
                        NotNames.Add(part.Value);
                    }
                    else
                    {
                        Names.Add(part.Value);
                    }
                }
            }

            if (count == null || category == null)
            {
                throw new ParseFailedException(value, "Unable to parse PREABILITY");
            }

            Count = count.Value;
            Category = category;
        }

        public static AbilityCondition Parse(TextSpan value, bool invert)
        {
            return new AbilityCondition(invert, value);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            if (Inverted)
            {
                output.Write("not (");
            }

            void WriteFilter()
            {
                output.WriteStartFunction("ability");
                output.Write("if ability.Category ~= ");
                output.WriteValue(Category);
                output.Write(" then return false end\n");
                if (NotTypes.Any())
                {
                    output.Write("if ability.IsAnyType(");
                    output.WriteValues(NotTypes);
                    output.Write(") then return false end\n");
                }

                foreach (var name in NotNames)
                {
                    output.Write("if ability.Name == ");
                    output.WriteValue(name);
                    output.Write(" then return false end\n");
                }

                if (Types.Any())
                {
                    output.Write("if ability.IsAnyType(");
                    output.WriteValues(Types);
                    output.Write(") then return true end\n");
                }

                foreach (var name in Names)
                {
                    output.Write("if ability.Name == ");
                    output.WriteValue(name);
                    output.Write(" then return true end\n");
                }
                output.Write("return false\n");
                output.WriteEndFunction();
            }

            if (Count == 1)
            {
                output.Write("character.HasAnyAbility(");
                WriteFilter();
                output.Write(")");
            }
            else
            {
                output.Write(Count.ToString());
                output.Write(" <= character.CountAbilities(");
                WriteFilter();
                output.Write(")");
            }

            if (Inverted)
            {
                output.Write(")");
            }
        }
    }
}