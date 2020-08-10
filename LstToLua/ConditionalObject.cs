using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class ConditionalObject : LuaObject
    {
        public ConditionalObject()
        {
            Conditions = new List<Condition>();
        }

        public IList<Condition> Conditions { get; }

        public override void AddField(TextSpan field)
        {
            if (Condition.TryParse(field, out var condition))
            {
                Conditions.Add(condition);
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteListValue("Conditions", Conditions);
        }
    }
}