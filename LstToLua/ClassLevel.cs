using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class ClassLevel : LuaObject
    {
        public string Level { get; }
        public bool DoNotAddHitDie { get; private set; }
        public bool DoNotAddSkillPoints { get; private set; }
        public List<Formula> SpellsPerDay { get; } = new List<Formula>();
        public List<Formula> SpellsKnown { get; } = new List<Formula>();

        public ClassLevel(string level)
        {
            Level = level;
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.SpellsKnown,
                CommonProperties.Abilities,
                CommonProperties.ProhibitedSpells,
                CommonProperties.Bonuses,
                CommonProperties.Definitions,
                CommonProperties.Domains,
                CommonProperties.Kit,
                CommonProperties.AddedSpellCasterLevels,
                CommonProperties.SpellLevel,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.Value == "DONOTADD:HITDIE")
            {
                DoNotAddHitDie = true;
                return;
            }

            if (field.Value == "DONOTADD:SKILLPOINTS")
            {
                DoNotAddSkillPoints = true;
                return;
            }

            if (field.TryRemovePrefix("CAST:", out field))
            {
                SpellsPerDay.Clear();
                SpellsPerDay.AddRange(field.Split(',').Select(v => new Formula(v.Value)).ToList());
                return;
            }

            if (field.TryRemovePrefix("KNOWN:", out field))
            {
                SpellsKnown.Clear();
                SpellsKnown.AddRange(field.Split(',').Select(v => new Formula(v.Value)).ToList());
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Level", Level);
            if (DoNotAddHitDie)
                output.WriteProperty("DoNotAddHitDie", DoNotAddHitDie);
            if (DoNotAddSkillPoints)
                output.WriteProperty("DoNotAddSkillPoints", DoNotAddSkillPoints);
            output.WriteProperty("SpellsPerDay", SpellsPerDay);
            output.WriteProperty("SpellsKnown", SpellsKnown);
            base.DumpMembers(output);
        }
    }
}
