using System;
using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AbilityReference : ConditionalObject
    {
        public AbilityReference(string category, string nature, List<string> names, List<string> types)
        {
            Category = category;
            Nature = nature;
            Names = names;
            Types = types;
        }

        public string Category { get; }
        public string Nature { get; }
        public List<string> Names { get; }
        public List<string> Types { get; }

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
            var types = new List<string>();
            var names = new List<string>();
            foreach (var part in parts.Skip(2))
            {
                if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                }
                else if (part.TryRemovePrefix("TYPE=", out var type))
                {
                    types.Add(type.Value);
                }
                else
                {
                    names.Add(part.Value);
                }
            }

            var result = new AbilityReference(category, nature, names, types);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return result;
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Category", Category);
            output.WriteKeyValue("Nature", Nature);
            output.WriteListValue("Names", Names);
            output.WriteListValue("Types", Types);
            base.DumpMembers(output);
        }
    }
}