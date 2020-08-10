using System;
using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class SpellListLevel :  ConditionalObject
    {
        public int SpellLevel { get; }
        public List<string> Spells { get; } = new List<string>();

        public SpellListLevel(int spellLevel)
        {
            SpellLevel = spellLevel;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("SpellLevel", SpellLevel);
            output.WriteListValue("Spells", Spells);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }
    }
}
