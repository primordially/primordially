using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace Primordially.LstToLua
{
    internal class EquipmentModifierDefinition : EquipmentOrModifierDefinition, IChooseable
    {
        protected override bool IsEquipment => true;
        public bool IsMod { get; private set; } = false;
        public string? Name { get; private set; }
        public Formula? Cost { get; private set; }
        public List<string> GrantedItemTypes { get; } = new List<string>();
        public bool Visible { get; private set; } = true;
        public bool AffectsBothHeads { get; private set; } = false;
        public string? NameModifier { get; private set; }
        public NameModifierLocation NameModifierLocation { get; private set; }
        public Choice? Choice { get; set; }
        public AutomaticEquipment? AutomaticEquipment { get; private set; }
        public List<string> Replaces { get; } = new List<string>();
        public (string from, string to)? ArmorTypeChange { get; private set; }
        public (int min, int max)? Charges { get; private set; }
        public int? EquivalentEnhancementBonus { get; private set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Name), Name);
            output.WriteKeyValue(nameof(Cost), Cost);
            output.WriteListValue(nameof(GrantedItemTypes), GrantedItemTypes);
            output.WriteKeyValue(nameof(Visible), Visible);
            output.WriteKeyValue(nameof(AffectsBothHeads), AffectsBothHeads);
            if (NameModifier != null)
            {
                output.WriteKeyValue(nameof(NameModifier), NameModifier);
                output.WriteKeyValue(nameof(NameModifierLocation), NameModifierLocation.ToString());
            }
            output.WriteKeyValue(nameof(Choice), Choice);
            output.WriteKeyValue(nameof(AutomaticEquipment), AutomaticEquipment);
            output.WriteListValue(nameof(Replaces), Replaces);
            if (ArmorTypeChange.HasValue)
            {
                output.WriteObjectValue("ChangeArmorType", () =>
                {
                    output.WriteKeyValue("From", ArmorTypeChange.Value.from);
                    output.WriteKeyValue("To", ArmorTypeChange.Value.to);
                });
            }

            if (Charges.HasValue)
            {
                output.WriteObjectValue("Charges", () =>
                {
                    output.WriteKeyValue("Min", Charges.Value.min);
                    output.WriteKeyValue("Max", Charges.Value.max);
                });
            }
            output.WriteKeyValue(nameof(EquivalentEnhancementBonus), EquivalentEnhancementBonus);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (field.TryRemoveSuffix(".MOD", out field))
                {
                    IsMod = true;
                }
                else if (field.TryRemoveSuffix(".FORGET", out field))
                {
                    throw new ParseFailedException(field, ".FORGET stuff not implemented");
                }

                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("NAMEOPT:", out var nameopt))
            {
                NameModifier = nameopt.Value;
                return;
            }

            if (field.TryRemovePrefix("FORMATCAT:", out var formatCat))
            {
                NameModifierLocation = formatCat.Value switch
                {
                    "FRONT" => NameModifierLocation.Prefix,
                    "MIDDLE" => NameModifierLocation.Suffix,
                    "PARENS" => NameModifierLocation.Parentheses,
                    _ => throw new ParseFailedException(field, "Unable to parse FORMATCAT"),
                };
                return;
            }

            if (field.TryRemovePrefix("ITYPE:", out var itype))
            {
                GrantedItemTypes.AddRange(itype.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("COST:", out var cost))
            {
                Cost = cost.Value;
                return;
            }

            if (field.TryRemovePrefix("VISIBLE:", out var visible))
            {
                Visible = Helpers.ParseBool(visible);
                return;
            }

            if (field.TryRemovePrefix("ASSIGNTOALL:", out var ata))
            {
                AffectsBothHeads = Helpers.ParseBool(ata);
                return;
            }

            if (field.TryRemovePrefix("CHOOSE:", out var choose))
            {
                Helpers.ParseChoose(choose, this);
                return;
            }

            if (AutomaticEquipment.TryParse(field, out var equip))
            {
                AutomaticEquipment = equip;
                return;
            }

            if (field.TryRemovePrefix("REPLACES:", out var rep))
            {
                Replaces.AddRange(rep.Value.Split(','));
                return;
            }

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

            if (field.TryRemovePrefix("PLUS:", out var plus))
            {
                EquivalentEnhancementBonus = Helpers.ParseInt(plus);
                return;
            }
            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            if (IsMod)
            {
                output.Write("ModifyEquipmentModifier(");
            }
            else
            {
                output.Write("DefineEquipmentModifier(");
            }
            base.Dump(output);
            output.Write(")");
        }
    }
}