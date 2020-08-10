using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AutomaticEquipment : ConditionalObject
    {
        public List<string> Names { get; }

        public AutomaticEquipment(List<string> names)
        {
            Names = names;
        }

        public static bool TryParse(TextSpan field, [NotNullWhen(true)] out AutomaticEquipment? result)
        {
            if (!field.TryRemovePrefix("AUTO:EQUIP|", out var value))
            {
                result = null;
                return false;
            }

            var names = new List<string>();
            var conditions = new List<Condition>();

            foreach (var part in value.Split('|'))
            {
                if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                }
                else
                {
                    names.Add(part.Value);
                }
            }

            result = new AutomaticEquipment(names);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return true;
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteListValue("Names", Names);
            base.DumpMembers(output);
        }
    }
}