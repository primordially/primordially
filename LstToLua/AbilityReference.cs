using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AbilityReference : ConditionalObject
    {
        public AbilityReference(string category, string nature, string? name, string? type, List<Condition> conditions)
            :base(conditions)
        {
            Category = category;
            Nature = nature;
            Name = name;
            Type = type;
        }

        public string Category { get; }
        public string Nature { get; }
        public string? Name { get; }
        public string? Type { get; }

        public static AbilityReference Parse(TextSpan value)
        {
            var parts = value.Split('|').ToArray();
            if (parts.Length < 3)
            {
                throw new ParseFailedException(value, "Unable to parse AbilityReference");
            }

            var category = parts[0].Value;
            var nature = parts[1].Value;
            var conditions = new List<Condition>();
            string? type = null;
            string? name = null;
            foreach (var part in parts.Skip(2))
            {
                if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                }
                else if (part.StartsWith("TYPE="))
                {
                    type = part.Substring("TYPE=".Length).Value;
                }
                else
                {
                    name = part.Value;
                }
            }

            if (name != null && type != null)
            {
                throw new ParseFailedException(value, "AbilityReference cannot have both a name and type");
            }

            return new AbilityReference(category, nature, name, type, conditions);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Category", Category);
            output.WriteKeyValue("Nature", Nature);
            if (Name != null)
            {
                output.WriteKeyValue("Name", Name);
            }
            else if (Type != null)
            {
                output.WriteKeyValue("Type", Type);
            }
            base.DumpMembers(output);
        }
    }
}