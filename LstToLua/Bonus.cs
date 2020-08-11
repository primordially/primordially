using System;
using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class Bonus : ConditionalObject
    {
        public Bonus(string category, IReadOnlyList<string> variables, BonusType? type, string formula)
        {
            Category = category;
            Variables = variables;
            Type = type;
            Formula = formula;
        }

        public static Bonus Parse(TextSpan value)
        {
            var parts = value.Split('|').ToArray();
            if (parts.Length < 3)
            {
                throw new ParseFailedException(value, "Unable to parse bonus.");
            }

            BonusType? type = null;
            List<Condition> conditions = new List<Condition>();
            foreach (var extra in parts.Skip(3))
            {
                if (BonusType.TryParse(extra, out type))
                {
                    continue;
                }

                if (Condition.TryParse(extra, out var condition))
                {
                    conditions.Add(condition);
                }
            }

            var variables = parts[1].Split(',').Select(t => t.Value).ToList();

            var result = new Bonus(parts[0].Value, variables, type, parts[2].Value);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return result;
        }

        public string Category { get; }
        public IReadOnlyList<string> Variables { get; }
        public BonusType? Type { get; }
        public Formula Formula { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Category", Category);
            output.WriteListValue("Variables", Variables);
            output.WriteKeyValue("Formula", Formula);
            if (Type != null)
            {
                output.Write("Type=");
                Type.Dump(output);
                output.Write(",\n");
            }
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }
    }
}