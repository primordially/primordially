using System.Collections.Generic;

namespace Primordially.LstToLua.Definitions
{
    internal class AbilityDefinition : TopLevelLuaObject
    {
        public override string ObjectType => "Ability";

        public string? Category
        {
            get => Properties[nameof(Category)] as string;
            set => Properties[nameof(Category)] = value;
        }

        public List<string> Templates { get; } = new List<string>();
        public List<string> TemplateChoices { get; } = new List<string>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteProperty("Templates", Templates);
            output.WriteProperty("TemplateChoices", TemplateChoices);
        }

        public AbilityDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
                Property.String("KEY", "Key"),
                Property.String("SORTKEY", "SortKey"),
                Property.String("CATEGORY", "Category"),
                CommonProperties.DisplayName,
                Property.Integer("ADDSPELLLEVEL", "AddedSpellLevels"),
                Property.String("APPLIEDNAME", "SpellPrefix"),
                Property.Double("COST", "Cost"),
                Property.Boolean("MULT", "AllowMultiple"),
                Property.Boolean("STACK", "Stackable"),
                Property.Boolean("VISIBLE", "Visible"),
                CommonProperties.Choose,
                Property.Multiple<Aspect>("ASPECT", "Aspects"),
                Property.Multiple<Benefit>("BENEFIT", "Benefits"),
                CommonProperties.Definitions,
                CommonProperties.Abilities,
                CommonProperties.Bonuses,
                CommonProperties.Types,
                Property.Single<FormattedString>("DESC", "Description"),
                CommonProperties.TemporaryBonus,
                CommonProperties.DamageReduction,
                CommonProperties.SpellResistance,
                CommonProperties.Movement,
                CommonProperties.Auto,
                CommonProperties.ClassSkills,
                CommonProperties.Vision,
                CommonProperties.SpellLevel,
                CommonProperties.Followers,
                CommonProperties.CompanionList,
                Property.SeparatedList<string>('|', "UNENCUMBEREDMOVE", "UnencumberedMove"),
                CommonProperties.UnarmedDamageAndMultiplier,
                CommonProperties.Spells,
                CommonProperties.SpellsKnown,
                CommonProperties.Kit,
                CommonProperties.ServesAs,
                CommonProperties.Facts,
                CommonProperties.AddedSpellCasterLevels,
                CommonProperties.ChangeWeaponProficiency,
                CommonProperties.DefineStat,
                CommonProperties.Info,
                CommonProperties.PreText,
                CommonProperties.NaturalAttacks,
                CommonProperties.Template,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (field.TryRemovePrefix("CATEGORY=", out field) &&
                    field.TryRemoveSuffix(".MOD", out field))
                {
                    IsMod = true;
                    var (c, n) = field.SplitTuple('|');
                    Category = c.Value;
                    Name = n.Value;
                }
                else
                {
                    Name = field.Value;
                }
                return;
            }

            base.AddField(field);
        }
    }
}
