using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class SpellListLevel :  ConditionalObject
    {
        public int SpellLevel { get; }
        public List<string> Spells { get; } = new List<string>();

        public SpellListLevel(int spellLevel) : base(new List<Condition>())
        {
            SpellLevel = spellLevel;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("SpellLevel", SpellLevel);
            output.WriteList("Spells", Spells);
            base.DumpMembers(output);
        }
    }
}