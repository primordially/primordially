using System.Collections.Generic;
using PCSharpGen.LstToLua.Conditions;

namespace PCSharpGen.LstToLua
{
    internal class ConditionalObject : LuaObject
    {
        public ConditionalObject(IList<Condition> conditions)
        {
            Conditions = conditions;
        }

        public IList<Condition> Conditions { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteList("Conditions", Conditions);
        }
    }
}