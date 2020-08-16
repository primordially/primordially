using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class SpellListLevel :  LuaObject
    {
        public int SpellLevel { get; }
        public List<string> Spells { get; } = new List<string>();

        public SpellListLevel(int spellLevel)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            SpellLevel = spellLevel;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("SpellLevel", SpellLevel);
            output.WriteProperty("Spells", Spells);
            base.DumpMembers(output);
        }
    }
}
