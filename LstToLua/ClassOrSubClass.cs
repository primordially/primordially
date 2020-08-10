using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

namespace Primordially.LstToLua
{
    /// <summary>
    ///   Contains anything that can be on the class or subclass line(s)
    /// </summary>
    internal class ClassOrSubClass : ClassOrClassLevel
    {
        public ClassOrSubClass(string name)
        {
            Name = name;
        }

        public string Name { get; }
        public bool IntModToSkills { get; private set; } = true;
        public string? SpellStat { get; private set; }
        public int? SpellListChoiceCount { get; private set; }
        public List<string>? SpellListChoices { get; private set; }

        public override void AddField(TextSpan field)
        {
            var (k, v) = field.SplitTuple(':');

            switch (k.Value)
            {
                case "MODTOSKILLS":
                    IntModToSkills = Helpers.ParseBool(v);
                    return;

                case "SPELLSTAT":
                    SpellStat = v.Value;
                    return;

                case "SPELLLIST":
                    var (count, spells) = v.SplitTuple('|');
                    SpellListChoiceCount = Helpers.ParseInt(count);
                    SpellListChoices = spells.Split('|').Select(s => s.Value).ToList();
                    return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            if (SpellStat != null)
            {
                output.WriteKeyValue("SpellStat", SpellStat);
            }

            if (!IntModToSkills)
            {
                output.WriteKeyValue("IntModToSkills", IntModToSkills);
            }

            if (SpellListChoiceCount.HasValue)
            {
                Debug.Assert(SpellListChoices != null);
                output.WriteKeyValue("SpellListChoiceCount", SpellListChoiceCount.Value.ToString());
                output.WriteListValue("SpellListChoices", SpellListChoices);
            }
            base.DumpMembers(output);
        }
    }
}