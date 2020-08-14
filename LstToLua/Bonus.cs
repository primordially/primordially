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

        public static Bonus Parse(TextSpan value, bool isEquipment = false)
        {
            if (!value.TryRemoveInfix("|", out var category, out value))
            {
                throw new ParseFailedException(value, "Unable to parse bonus.");
            }
            if (!value.TryRemoveInfix("|", out var variableSpan, out value))
            {
                throw new ParseFailedException(value, "Unable to parse bonus.");
            }

            string? formula = null;
            BonusType? type = null;
            List<Condition> conditions = new List<Condition>();

            foreach (var part in value.Split('|'))
            {
                if (BonusType.TryParse(part, out var t))
                {
                    type = t;
                    continue;
                }

                if (Condition.TryParse(part, isEquipment, out var condition))
                {
                    conditions.Add(condition);
                    continue;
                }

                if (formula != null)
                {
                    throw new ParseFailedException(value, "Unable to parse bonus.");
                }

                formula = part.Value;
            }

            if (formula == null)
            {
                formula = "%CHOICEVALUE";
            }
            
            var variables = variableSpan.Split(',').Select(t => t.Value).ToList();

            if (category.Value == "ITEMCOST")
            {
                variables.Clear();
                variables.Add("Cost");
                if (!variableSpan.TryRemovePrefix("TYPE.", out var types))
                {
                    throw new ParseFailedException(value, "Unable to parse bonus.");
                }

                var allTypes = types.Value.Split('.').Select(t => $"item.IsType(\"{t}\")").ToList();
                conditions.Add(new EquipmentTypeCondition(false, allTypes.Count, allTypes));
            }

            var result = new Bonus(category.Value, variables, type, formula);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return result;
        }

        public string Category { get; }
        public IReadOnlyList<string> Variables { get; }
        public BonusType? Type { get; }
        public Formula? Formula { get; }

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