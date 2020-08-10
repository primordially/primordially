using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    /// <summary>
    ///   Contains anything that can be on either a Class line, or a class level line
    /// </summary>
    internal abstract class ClassOrClassLevel : AbilityOrClassObject
    {
        public List<ProhibitedSpell> ProhibitedSpells { get; } = new List<ProhibitedSpell>();
        public List<DomainReference> Domains { get; } = new List<DomainReference>();
        public List<List<string>> WeaponBonusProficiencySelections { get; } = new List<List<string>>();

        public override void AddField(TextSpan field)
        {
            var (k, v) = field.SplitTuple(':');

            switch (k.Value)
            {
                case "PROHIBITSPELL":
                    ProhibitedSpells.Add(ProhibitedSpell.Parse(v));
                    return;
                case "DOMAIN":
                    Domains.Add(DomainReference.Parse(v));
                    return;
                case "WEAPONBONUS":
                    WeaponBonusProficiencySelections.Add(v.Value.Split('|').ToList());
                    return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteListValue("ProhibitedSpells", ProhibitedSpells);
            output.WriteListValue("Domains", Domains);
            if (WeaponBonusProficiencySelections.Any())
            {
                output.WriteObjectValue("WeaponBonusProficiencySelections", () =>
                {
                    foreach (var selection in WeaponBonusProficiencySelections)
                    {
                        output.WriteStartObject();
                        foreach (var option in selection)
                        {
                            output.WriteValue(option);
                            output.Write(", ");
                        }
                        output.WriteLine();
                        output.WriteEndObject();
                    }
                });
            }
            base.DumpMembers(output);
        }
    }
}