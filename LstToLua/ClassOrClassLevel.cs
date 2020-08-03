using System.Collections.Generic;
using System.Linq;
using PCSharpGen.LstToLua.Conditions;

namespace PCSharpGen.LstToLua
{
    /// <summary>
    ///   Contains anything that can be on either a Class line, or a class level line
    /// </summary>
    internal abstract class ClassOrClassLevel : ConditionalObject
    {
        public List<ProhibitedSpell> ProhibitedSpells { get; } = new List<ProhibitedSpell>();
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public List<VariableDefinition> Definitions { get; } = new List<VariableDefinition>();
        public List<AbilityReference> Abilities { get; } = new List<AbilityReference>();
        public List<DomainReference> Domains { get; } = new List<DomainReference>();
        public List<string> ClassSkills { get; } = new List<string>();
        public List<AddedSpellCasterLevel> AddedSpellCasterLevels { get; } = new List<AddedSpellCasterLevel>();
        public List<SpellList> SpellLists { get; } = new List<SpellList>();
        public List<List<string>> WeaponBonusProficiencySelections { get; } = new List<List<string>>();

        public virtual void AddField(TextSpan field)
        {
            if (Condition.TryParse(field, out var condition))
            {
                Conditions.Add(condition);
                return;
            }

            var (k, v) = field.SplitTuple(':');

            switch (k.Value)
            {
                case "PROHIBITSPELL":
                    ProhibitedSpells.Add(ProhibitedSpell.Parse(v));
                    return;
                case "BONUS":
                    Bonuses.Add(Bonus.Parse(v));
                    return;
                case "DEFINE":
                {
                    var parts = v.Split('|').ToArray();
                    if (parts.Length != 2)
                    {
                        throw new ParseFailedException(field, "Unable to parse variable definition.");
                    }

                    Definitions.Add(new VariableDefinition(parts[0].Value, Helpers.ParseInt(parts[1])));
                    return;
                }
                case "ABILITY":
                    Abilities.Add(AbilityReference.Parse(v));
                    return;

                case "DOMAIN":
                    Domains.Add(DomainReference.Parse(v));
                    return;

                case "CSKILL":
                    ClassSkills.AddRange(v.Value.Split('|'));
                    return;

                case "SOURCEPAGE":
                    SourcePage = v.Value;
                    return;

                case "SPELLLEVEL":
                    SpellLists.AddRange(SpellList.Parse(v));
                    return;

                case "WEAPONBONUS":
                    WeaponBonusProficiencySelections.Add(v.Value.Split('|').ToList());
                    return;

                case "KIT":
                    // we are ignoring this one
                    return;
                case "ADD":
                {
                    var (type, parameter) = v.SplitTuple('|');
                    switch (type.Value)
                    {
                        case "SPELLCASTER":
                            AddedSpellCasterLevels.Add(AddedSpellCasterLevel.Parse(parameter));
                            return;
                    }
                    break;
                }
            }

            throw new ParseFailedException(field, $"Unknown field '{field.Value}'");
        }

        protected ClassOrClassLevel() : base(new List<Condition>())
        {
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteList("Definitions", Definitions);
            output.WriteList("Bonuses", Bonuses);
            output.WriteList("ProhibitedSpells", ProhibitedSpells);
            output.WriteList("Domains", Domains);
            output.WriteList("Abilities", Abilities);
            output.WriteList("ClassSkills", ClassSkills);
            output.WriteList("AddedSpellCasterLevels", AddedSpellCasterLevels);
            output.WriteList("SpellLists", SpellLists);
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
            base.DumpMembers(output);
        }
    }
}