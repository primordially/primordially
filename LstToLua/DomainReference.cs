using System;
using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class DomainReference : ConditionalObject
    {
        public IReadOnlyList<string> Names { get; }

        public DomainReference(IReadOnlyList<string> names)
        {
            Names = names;
        }

        public static DomainReference Parse(TextSpan value)
        {
            var conditions = new List<Condition>();
            var names = new List<string>();

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

            var result = new DomainReference(names);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return result;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteListValue("Names", Names);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }
    }
}
