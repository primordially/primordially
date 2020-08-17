using System;
using System.Collections.Generic;

namespace Primordially.LstToLua.Definitions
{
    internal class EquipmentDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Equipment";


        public List<EquipmentModifierReference> EquipmentModifiers => Properties.GetList<EquipmentModifierReference>(nameof(EquipmentModifiers));

        public bool CanHaveMods
        {
            get => Properties[nameof(CanHaveMods)] as bool? ?? false;
            set => Properties[nameof(CanHaveMods)] = value;
        }

        public bool ModsRequired
        {
            get => Properties[nameof(ModsRequired)] as bool? ?? false;
            set => Properties[nameof(ModsRequired)] = value;
        }

        public Attack SecondAttack
        {
            get
            {
                if (!Properties.TryGetValue(nameof(SecondAttack), out var value))
                {
                    value = Properties[nameof(SecondAttack)] = new Attack();
                }

                return (Attack) (value ?? throw new InvalidOperationException());
            }
        }
        public Attack Attack
        {
            get
            {
                if (!Properties.TryGetValue(nameof(Attack), out var value))
                {
                    value = Properties[nameof(Attack)] = new Attack();
                }

                return (Attack) (value ?? throw new InvalidOperationException());
            }
        }

        public EquipmentDefinition()
        {
            CanHaveMods = true;
            AddPropertyDefinitions(() => new[]
            {
                CommonProperties.ConditionForEquipment,
                Property.String("BASEITEM", "BaseItem"),
                Property.String("KEY", "Key"),
                Property.String("SORTKEY", "SortKey"),
                Property.String("ICON", "Icon"),
                Property.Double("COST", "Cost"),
                Property.Double("WT", "Weight"),
                Property.Integer("BASEQTY", "BaseQuantity"),
                Property.Integer("EDR", "EffectiveDamageResistance"),
                Property.Integer("SLOTS", "UsedSlots"),
                Property.Integer("ACCHECK", "ArmorCheckPenalty"),
                Property.Integer("NUMPAGES", "SpellBookPageCount"),
                Property.Formula("PAGEUSAGE", "PagesPerSpell"),
                Property.Single<ContainerDefinition>("CONTAINS", "Contains"),
                Property.String("FUMBLERANGE", "FumbleRange"),
                Property.Integer("MAXDEX", "MaxDex"),
                Property.String("PROFICIENCY", "Proficiency"),
                Property.Integer("RANGE", "Range"),
                Property.Integer("REACH", "Reach"),
                Property.Integer("REACHMULT", "ReachMultiplier"),
                Property.Integer("SPELLFAILURE", "ArcaneSpellFailureChance"),
                Property.String("WIELD", "WieldCategory"),
                Property.Boolean("VISIBLE", "Visible"),
                CommonProperties.Size,
                CommonProperties.Info,
                CommonProperties.Types,
                CommonProperties.SpecialProperties,
                CommonProperties.Description,
                CommonProperties.DisplayName,
                CommonProperties.BonusesForEquipment,
                CommonProperties.Spells,
                CommonProperties.Abilities,
                CommonProperties.Definitions,
                CommonProperties.TemporaryBonus,
                CommonProperties.Vision,
                CommonProperties.DamageReduction,
                CommonProperties.SpellResistance,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("EQMOD:", out field))
            {
                EquipmentModifiers.AddRange(EquipmentModifierReference.ParseAll(field));
                return;
            }

            if (field.TryRemovePrefix("MODS:", out field))
            {
                switch (field.Value)
                {
                    case "YES":
                        CanHaveMods = true;
                        ModsRequired = false;
                        break;
                    case "NO":
                        CanHaveMods = false;
                        ModsRequired = false;
                        break;
                    case "REQUIRED":
                        CanHaveMods = true;
                        ModsRequired = true;
                        break;
                    default:
                        throw new ParseFailedException(field, "Cannot parse MODS:");
                }

                return;
            }

            if (field.TryRemovePrefix("QUALITY:", out field))
            {
                if (!field.TryRemoveInfix("|", out var k, out var v))
                {
                    throw new ParseFailedException(field, "Unable to parse QUALITY:");
                }

                Properties.GetDictionary<string, string>("Qualities")[k.Value] = v.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTCRITMULT:", out var acm))
            {
                SecondAttack.CriticalHitMultiplier = acm.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTCRITRANGE:", out var acr))
            {
                SecondAttack.CriticalHitRange = acr.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTDAMAGE:", out var admg))
            {
                SecondAttack.Damage = admg.Value;
                return;
            }

            if (field.TryRemovePrefix("ALTEQMOD:", out var amod))
            {
                SecondAttack.EquipmentModifiers.AddRange(EquipmentModifierReference.ParseAll(amod));
                return;
            }

            if (field.TryRemovePrefix("ALTTYPE:", out var atype))
            {
                SecondAttack.Types.AddRange(atype.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("CRITMULT:", out var cm))
            {
                Attack.CriticalHitMultiplier = cm.Value;
                return;
            }

            if (field.TryRemovePrefix("CRITRANGE:", out var cr))
            {
                Attack.CriticalHitRange = cr.Value;
                return;
            }

            if (field.TryRemovePrefix("DAMAGE:", out var dmg))
            {
                Attack.Damage = dmg.Value;
                return;
            }

            base.AddField(field);
        }
    }
}
