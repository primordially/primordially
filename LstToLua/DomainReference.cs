using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class DomainReference : ConditionalObject
    {
        public IReadOnlyList<string> Names { get; }

        public DomainReference(IList<Condition> conditions, IReadOnlyList<string> names) : base(conditions)
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

            return new DomainReference(conditions, names);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteList("Names", Names);
            base.DumpMembers(output);
        }
    }
}