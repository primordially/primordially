using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.WebSockets;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class ContainerDefinition : LuaObject
    {
        public ContainerDefinition(TextSpan value)
        {
            bool first = true;
            foreach (var p in value.Split('|'))
            {
                var part = p;
                if (first)
                {
                    if (part.TryRemovePrefix("*", out part))
                    {
                        ContainedItemWeightDoesNotCount = true;
                    }
                    if (part.Value == "UNLIM")
                    {
                        Capacity = double.PositiveInfinity;
                    }
                    else if (part.TryRemoveInfix("%", out var percent, out var cap))
                    {
                        ContainedItemWeightModifier = Helpers.ParseDouble(percent) / 100;
                        Capacity = Helpers.ParseDouble(cap);
                    }
                    else
                    {
                        Capacity = Helpers.ParseDouble(part);
                    }
                    first = false;
                    continue;
                }

                if (!part.TryRemoveInfix("=", out var name, out var count))
                {
                    ItemLimits[part.Value] = null;
                }
                else
                {
                    ItemLimits[name.Value] = Helpers.ParseInt(count);
                }
            }
        }

        public double Capacity { get; } = double.PositiveInfinity;
        public bool ContainedItemWeightDoesNotCount { get; }
        public double? ContainedItemWeightModifier { get; }
        public Dictionary<string, int?> ItemLimits { get; } = new Dictionary<string, int?>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Capacity", Capacity);
            if (ContainedItemWeightDoesNotCount)
                output.WriteKeyValue("ContainedItemWeightDoesNotCount", ContainedItemWeightDoesNotCount);
            if (ContainedItemWeightModifier.HasValue)
                output.WriteKeyValue("ContainedItemWeightModifier", ContainedItemWeightModifier.Value);
            if (ItemLimits.Any())
            {
                output.WriteObjectValue("ItemLimits", () =>
                {
                    foreach (var (k, v) in ItemLimits)
                        output.WriteKeyValue(k, v);
                });
            }
            base.DumpMembers(output);
        }
    }

    internal class AttackDefinition : LuaObject
    {
        public string CritMultiplier { get; set; } = "x2";
        public string CritRange { get; set; } = "1";
        public DiceFormula? Damage { get; set; }
        public List<string> Types { get; } = new List<string>();
        public List<EquipmentModifierReference> EquipmentModifiers { get; } = new List<EquipmentModifierReference>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(CritMultiplier), CritMultiplier);
            output.WriteKeyValue(nameof(CritRange), CritRange);
            output.WriteKeyValue(nameof(Damage), Damage);
            output.WriteListValue(nameof(Types), Types);
            output.WriteListValue(nameof(EquipmentModifiers), EquipmentModifiers);
            base.DumpMembers(output);
        }
    }

    internal class EquipmentModifierReference : LuaObject
    {
        private EquipmentModifierReference(TextSpan value)
        {
            bool first = true;
            foreach (var p in value.Split('|'))
            {
                var part = p;
                if (first)
                {
                    Key = part.Value;
                    first = false;
                    continue;
                }

                Parameters.Add(part.Value);
            }

            if (Key == null)
            {
                throw new ParseFailedException(value, "Unable to parse EQMOD:");
            }
        }

        public string Key { get; } = null!;
        public List<Formula> Parameters { get; } = new List<Formula>();

        public static IEnumerable<EquipmentModifierReference> ParseAll(TextSpan value)
        {
            return value.Split('.').Select(s => new EquipmentModifierReference(s));
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Key), Key);
            output.WriteListValue(nameof(Parameters), Parameters);
            base.DumpMembers(output);
        }
    }

    internal class EquipmentDefinition : DataSetObject
    {
        protected override bool IsEquipment => true;
        public string? CopiedFrom { get; private set; }
        public string? Name { get; private set; }
        public string? Key { get; private set; }
        public List<string> Types { get; } = new List<string>();
        public double Cost { get; private set; }
        public string? BaseItem { get; private set; }
        public string? Icon { get; private set; }
        public int? BaseQuantity { get; private set; }
        public int? EffectiveDamageResistance { get; private set; }
        public ContainerDefinition? Contains { get; private set; }
        public List<EquipmentModifierReference> EquipmentModifiers { get; } = new List<EquipmentModifierReference>();
        public bool CanHaveMods { get; private set; } = true;
        public bool ModsRequired { get; private set; } = false;
        public int? SpellBookPageCount { get; private set; }
        public Formula? PagesPerSpell { get; private set; }
        public List<(string name, string value)> Qualities { get; } = new List<(string name, string value)>();
        public string? Size { get; private set; }
        public int? UsedSlots { get; private set; }
        public double? Weight { get; private set; }
        public List<FormattedString> SpecialProperties { get; } = new List<FormattedString>();
        public int? ArmorCheckPenalty { get; private set; }
        public AttackDefinition? SecondAttack { get; private set; }
        public AttackDefinition? Attack { get; private set; }
        public string? FumbleRange { get; private set; }
        public int? MaxDex { get; private set; }
        public string? Proficiency { get; private set; }
        public int? Range { get; private set; }
        public int? Reach { get; private set; }
        public int? ReachMultiplier { get; private set; }
        public int? ArcaneSpellFailureChance { get; private set; }
        public string? WieldCategory { get; private set; }
        public FormattedString? Description { get; private set; }
        public bool? Visible { get; private set; }
        public List<Bonus> Bonuses { get; } = new List<Bonus>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Name), Name);
            output.WriteKeyValue(nameof(Key), Key);
            output.WriteKeyValue(nameof(Description), Description);
            output.WriteKeyValue(nameof(Visible), Visible);
            output.WriteListValue(nameof(Types), Types);
            output.WriteListValue(nameof(Bonuses), Bonuses);
            output.WriteKeyValue(nameof(Cost), Cost);
            output.WriteKeyValue(nameof(BaseItem), BaseItem);
            output.WriteKeyValue(nameof(Icon), Icon);
            output.WriteKeyValue(nameof(BaseQuantity), BaseQuantity);
            output.WriteKeyValue(nameof(EffectiveDamageResistance), EffectiveDamageResistance);
            output.WriteKeyValue(nameof(Contains), Contains);
            output.WriteListValue(nameof(EquipmentModifiers), EquipmentModifiers);
            if (!CanHaveMods)
                output.WriteKeyValue(nameof(CanHaveMods), CanHaveMods);
            if (ModsRequired)
                output.WriteKeyValue(nameof(ModsRequired), ModsRequired);
            output.WriteKeyValue(nameof(SpellBookPageCount), SpellBookPageCount);
            output.WriteKeyValue(nameof(PagesPerSpell), PagesPerSpell);
            if (Qualities.Any())
            {
                output.WriteObjectValue("Qualities", () =>
                {
                    foreach (var (k, v) in Qualities)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }
            
            output.WriteKeyValue(nameof(Size), Size);
            output.WriteKeyValue(nameof(UsedSlots), UsedSlots);
            output.WriteKeyValue(nameof(Weight), Weight);
            output.WriteListValue(nameof(SpecialProperties), SpecialProperties);
            output.WriteKeyValue(nameof(ArmorCheckPenalty), ArmorCheckPenalty);
            output.WriteKeyValue(nameof(SecondAttack), SecondAttack);
            output.WriteKeyValue(nameof(Attack), Attack);
            output.WriteKeyValue(nameof(FumbleRange), FumbleRange);
            output.WriteKeyValue(nameof(MaxDex), MaxDex);
            output.WriteKeyValue(nameof(Proficiency), Proficiency);
            output.WriteKeyValue(nameof(Range), Range);
            output.WriteKeyValue(nameof(Reach), Reach);
            output.WriteKeyValue(nameof(ReachMultiplier), ReachMultiplier);
            output.WriteKeyValue(nameof(ArcaneSpellFailureChance), ArcaneSpellFailureChance);
            output.WriteKeyValue(nameof(WieldCategory), WieldCategory);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (field.TryRemoveInfix(".COPY=", out var sourceName, out var newName))
                {
                    CopiedFrom = sourceName.Value;
                    Name = newName.Value;
                }
                else
                {
                    Name = field.Value;
                }
                return;
            }

            if (field.TryRemovePrefix("KEY:", out var key))
            {
                Key = key.Value;
                return;
            }

            if (field.TryRemovePrefix("TYPE:", out var type))
            {
                Types.AddRange(type.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("COST:", out var cost))
            {
                Cost = Helpers.ParseDouble(cost);
                return;
            }

            if (field.TryRemovePrefix("BASEITEM:", out var baseItem))
            {
                BaseItem = baseItem.Value;
                return;
            }

            if (field.TryRemovePrefix("BASEQTY:", out var qty))
            {
                BaseQuantity = Helpers.ParseInt(qty);
                return;
            }

            if (field.TryRemovePrefix("CONTAINS:", out var contains))
            {
                Contains = new ContainerDefinition(contains);
                return;
            }

            if (field.TryRemovePrefix("EDR:", out var dr))
            {
                EffectiveDamageResistance = Helpers.ParseInt(dr);
                return;
            }

            if (field.TryRemovePrefix("EQMOD:", out var eqmod))
            {
                EquipmentModifiers.AddRange(EquipmentModifierReference.ParseAll(eqmod));
                return;
            }

            if (field.TryRemovePrefix("ICON:", out var icon))
            {
                Icon = icon.Value;
                return;
            }

            if (field.TryRemovePrefix("MODS:", out var mods))
            {
                switch (mods.Value)
                {
                    case "YES":
                        break;
                    case "NO":
                        CanHaveMods = false;
                        break;
                    case "REQUIRED":
                        ModsRequired = true;
                        break;
                    default:
                        throw new ParseFailedException(field, "Cannot parse MODS:");
                }

                return;
            }

            if (field.TryRemovePrefix("NUMPAGES:", out var pageCount))
            {
                SpellBookPageCount = Helpers.ParseInt(pageCount);
                return;
            }

            if (field.TryRemovePrefix("PAGEUSAGE:", out var pagesPerSpell))
            {
                PagesPerSpell = pagesPerSpell.Value;
                return;
            }

            if (field.TryRemovePrefix("QUALITY:", out var quality))
            {
                if (!quality.TryRemoveInfix("|", out var k, out var v))
                {
                    throw new ParseFailedException(field, "Unable to parse QUALITY:");
                }
                Qualities.Add((k.Value, v.Value));
                return;
            }

            if (field.TryRemovePrefix("SIZE:", out var size))
            {
                Size = size.Value;
                return;
            }

            if (field.TryRemovePrefix("SLOTS:", out var slots))
            {
                UsedSlots = Helpers.ParseInt(slots);
                return;
            }

            if (field.TryRemovePrefix("SPROP:", out var sprop))
            {
                SpecialProperties.Add(new FormattedString(sprop));
                return;
            }

            if (field.TryRemovePrefix("WT:", out var w))

            {
                Weight = Helpers.ParseDouble(w);
                return;
            }

            if (field.TryRemovePrefix("ACCHECK:", out var acp))
            {
                ArmorCheckPenalty = Helpers.ParseInt(acp);
                return;
            }

            if (field.TryRemovePrefix("ALTCRITMULT:", out var acm))
            {
                if (SecondAttack == null) SecondAttack = new AttackDefinition();

                SecondAttack.CritMultiplier = acm.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTCRITRANGE:", out var acr))
            {
                if (SecondAttack == null) SecondAttack = new AttackDefinition();

                SecondAttack.CritRange = acr.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTDAMAGE:", out var admg))
            {
                if (SecondAttack == null) SecondAttack = new AttackDefinition();

                SecondAttack.Damage = admg.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTEQMOD:", out var amod))
            {
                if (SecondAttack == null) SecondAttack = new AttackDefinition();

                SecondAttack.EquipmentModifiers.AddRange(EquipmentModifierReference.ParseAll(amod));
                return;
            }

            if (field.TryRemovePrefix("ALTTYPE:", out var atype))
            {
                if (SecondAttack == null) SecondAttack = new AttackDefinition();

                SecondAttack.Types.AddRange(atype.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("CRITMULT:", out var cm))
            {
                if (Attack == null) Attack = new AttackDefinition();

                Attack.CritMultiplier = cm.Value;
                return;
            }

            if (field.TryRemovePrefix("CRITRANGE:", out var cr))
            {
                if (Attack == null) Attack = new AttackDefinition();

                Attack.CritRange = cr.Value;
                return;
            }

            if (field.TryRemovePrefix("DAMAGE:", out var dmg))
            {
                if (Attack == null) Attack = new AttackDefinition();

                Attack.Damage = dmg.Value;
                return;
            }

            if (field.TryRemovePrefix("FUMBLERANGE:", out var fr))
            {
                FumbleRange = fr.Value;
                return;
            }

            if (field.TryRemovePrefix("MAXDEX:", out var maxDex))
            {
                MaxDex = Helpers.ParseInt(maxDex);
                return;
            }

            if (field.TryRemovePrefix("PROFICIENCY:", out var prof))
            {
                Proficiency = prof.Value;
                return;
            }

            if (field.TryRemovePrefix("RANGE:", out var range))
            {
                Range = Helpers.ParseInt(range);
                return;
            }

            if (field.TryRemovePrefix("REACH:", out var reach))
            {
                Reach = Helpers.ParseInt(reach);
                return;
            }

            if (field.TryRemovePrefix("REACHMULT:", out var rm))
            {
                ReachMultiplier = Helpers.ParseInt(rm);
                return;
            }

            if (field.TryRemovePrefix("SPELLFAILURE:", out var asf))
            {
                ArcaneSpellFailureChance = Helpers.ParseInt(asf);
                return;
            }

            if (field.TryRemovePrefix("WIELD:", out var wield))
            {
                WieldCategory = wield.Value;
                return;
            }

            if (field.TryRemovePrefix("DESC:", out var desc))
            {
                Description = new FormattedString(desc);
                return;
            }

            if (field.TryRemovePrefix("VISIBLE:", out var visible))
            {
                Visible = Helpers.ParseBool(visible);
                return;
            }

            if (field.TryRemovePrefix("BONUS:", out var bonus))
            {
                Bonuses.Add(Bonus.Parse(bonus, true));
                return;
            }

            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            if (CopiedFrom != null)
            {
                output.Write("CopyEquipment(");
                output.WriteValue(CopiedFrom);
                output.Write(", ");
            }
            else
            {
                output.Write("DefineEquipment(");
            }
            base.Dump(output);
            output.Write(")");
        }
    }

    internal class FormattedString : LuaObject
    {
        public string Format { get; }
        public List<Formula> Arguments { get; }
        public FormattedString(string format, List<string> args)
        {
            Format = format;
            Arguments = args.Select(a => new Formula(a)).ToList();
        }

        public FormattedString(TextSpan value)
        {
            Format = null!;
            Arguments = new List<Formula>();
            foreach (var part in value.Split('|'))
            {
                if (Format == null)
                {
                    Format = part.Value;
                }
                else
                {
                    Arguments.Add(part.Value);
                }
            }
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Format", Format);
            output.WriteListValue("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}
