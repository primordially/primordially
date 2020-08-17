namespace Primordially.LstToLua.Definitions
{
    internal class EquipmentModifierDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "EquipmentModifier";
        public AutomaticEquipment? AutomaticEquipment { get; private set; }
        public (string from, string to)? ArmorTypeChange { get; private set; }
        public (int min, int max)? Charges { get; private set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty(nameof(AutomaticEquipment), AutomaticEquipment);
            if (ArmorTypeChange.HasValue)
            {
                output.WriteObjectValue("ChangeArmorType", () =>
                {
                    output.WriteProperty("From", ArmorTypeChange.Value.from);
                    output.WriteProperty("To", ArmorTypeChange.Value.to);
                });
            }

            if (Charges.HasValue)
            {
                output.WriteObjectValue("Charges", () =>
                {
                    output.WriteProperty("Min", Charges.Value.min);
                    output.WriteProperty("Max", Charges.Value.max);
                });
            }
            base.DumpMembers(output);
        }

        public EquipmentModifierDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                CommonProperties.ConditionForEquipment,
                CommonProperties.Choose,
                Property.String("SORTKEY", "SortKey"),
                Property.String("NAMEOPT", "NameModifier"),
                Property.Parsed("FORMATCAT", "NameModifierLocation",
                    value => value.Value switch
                    {
                        "FRONT" => NameModifierLocation.Prefix,
                        "MIDDLE" => NameModifierLocation.Suffix,
                        "PARENS" => NameModifierLocation.Parentheses,
                        _ => throw new ParseFailedException(value, "Unable to parse FORMATCAT"),
                    }),
                Property.SeparatedList<string>('.', "ITYPE", "GrantedItemTypes"),
                Property.String("COST", "Cost"),
                Property.Boolean("VISIBLE", "Visible"),
                Property.Boolean("ASSIGNTOALL", "AffectsBothHeads"),
                Property.SeparatedList<string>(',', "REPLACES", "Replaces"),
                Property.Integer("PLUS", "EquivalentEnhancementBonus"),
                Property.String("KEY", "Key"),
                CommonProperties.Auto,
                CommonProperties.Types,
                CommonProperties.BonusesForEquipment,
                CommonProperties.SpecialProperties,
                CommonProperties.Description,
                CommonProperties.DamageReduction,
                CommonProperties.SpellResistance,
                CommonProperties.Info,
                CommonProperties.Abilities,
                CommonProperties.Definitions,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("ARMORTYPE:", out var at))
            {
                if (!at.TryRemoveInfix("|", out var from, out var to))
                {
                    throw new ParseFailedException(field, "Unable to parse ARMORTYPE");
                }

                ArmorTypeChange = (from.Value, to.Value);
                return;
            }

            if (field.TryRemovePrefix("CHARGES:", out var charges))
            {
                if (!charges.TryRemoveInfix("|", out var min, out var max))
                {
                    throw new ParseFailedException(charges, "Unable to parse CHARGES:");
                }

                Charges = (Helpers.ParseInt(min), Helpers.ParseInt(max));
                return;
            }

            base.AddField(field);
        }
    }
}
