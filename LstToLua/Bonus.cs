using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class Bonus : ConditionalObject
    {
        public Bonus(string category, IReadOnlyList<string> variables, BonusType? type, string formula, IList<Condition> conditions)
            :base(conditions)
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

            return new Bonus(parts[0].Value, variables, type, parts[2].Value, conditions);
        }

        public string Category { get; }
        public IReadOnlyList<string> Variables { get; }
        public BonusType? Type { get; }
        public string Formula { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Category", Category);
            output.WriteList("Variables", Variables);
            output.WriteKeyValue("Formula", Formula);
            if (Type != null)
            {
                output.Write("Type=");
                Type.Dump(output);
                output.Write(",\n");
            }
            base.DumpMembers(output);
        }
    }
}