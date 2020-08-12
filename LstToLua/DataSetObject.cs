using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class DataSetObject : ConditionalObject
    {
        protected virtual bool IsEquipment => false;
        public string? SortKey { get; private set; }
        public Dictionary<string, string?> Clear { get; } = new Dictionary<string, string?>();
        public List<(string key, string value)> Facts { get; } = new List<(string key, string value)>();
        public string? SourceShort { get; private set; }
        public string? SourcePage { get; private set; }
        public string? SourceLong { get; private set; }
        public string? DisplayName { get; private set; }
        public List<SpellLikeAbility> SpellLikeAbilities { get; } = new List<SpellLikeAbility>();
        public List<AbilityReference> Abilities { get; } = new List<AbilityReference>();
        public List<(string key, string value)> Info { get; } = new List<(string key, string value)>();
        public List<ObjectVariableDefinition> Definitions { get; } = new List<ObjectVariableDefinition>();
        public List<(string target, Bonus bonus)> TemporaryBonuses { get; } = new List<(string target, Bonus bonus)>();
        public FormattedString? TemporaryBonusDescription { get; private set; }
        public List<(string vision, List<Condition> conditions)> Vision { get; } = new List<(string vision, List<Condition> conditions)>();
        public DamageReduction? DamageReduction { get; private set; }
        public string? SpellResistance { get; private set; }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("FACT:", out var fact) || field.TryRemovePrefix("FACTSET:", out fact))
            {
                var parts = fact.Split('|').ToArray();
                if (parts.Length != 2)
                {
                    throw new ParseFailedException(field, "Unable to parse fact.");
                }

                Facts.Add((parts[0].Value, parts[1].Value));
                return;
            }
            if (field.TryRemovePrefix("SOURCEPAGE:", out var sp))
            {
                SourcePage = sp.Value;
                return;
            }
            if (field.TryRemovePrefix("SOURCESHORT:", out var ss))
            {
                SourceShort = sp.Value;
                return;
            }
            if (field.TryRemovePrefix("SOURCELONG:", out var sl))
            {
                SourceLong = sl.Value;
                return;
            }

            if (field.TryRemovePrefix("SORTKEY:", out var sortKey))
            {
                SortKey = sortKey.Value;
                return;
            }

            if (field.Value == "PRE:.CLEAR")
            {
                Clear["Conditions"] = null;
                return;
            }

            if (field.TryRemovePrefix("OUTPUTNAME:", out var n))
            {
                DisplayName = n.Value;
                return;
            }

            if (field.TryRemovePrefix("SPELLS:", out var spellLikeAbility))
            {
                if (spellLikeAbility.Value == ".CLEARALL")
                {
                    Clear[nameof(SpellLikeAbilities)] = null;
                    SpellLikeAbilities.Clear();
                    return;
                }
                SpellLikeAbilities.AddRange(SpellLikeAbility.ParseAll(spellLikeAbility));
                return;
            }

            if (field.TryRemovePrefix("ABILITY:", out var ability))
            {
                Abilities.Add(AbilityReference.Parse(ability));
                return;
            }

            if (field.TryRemovePrefix("INFO:", out var info))
            {
                var (k, v) = info.SplitTuple('|');
                Info.Add((k.Value, v.Value));
                return;
            }

            if (field.TryRemovePrefix("DEFINE:", out var def))
            {
                var (k, v) = def.SplitTuple('|');

                Definitions.Add(new ObjectVariableDefinition(k.Value, v.Value));
                return;
            }

            if (field.TryRemovePrefix("TEMPBONUS:", out var tbonus))
            {
                var (target, bonus) = tbonus.SplitTuple('|');
                string targetValue = target.Value;
                if (target.Value == "EQ")
                {
                    TextSpan type;
                    (type, bonus) = bonus.SplitTuple('|');
                    targetValue += '|' + type.Value;
                }

                TemporaryBonuses.Add((targetValue, Bonus.Parse(bonus, IsEquipment)));
                return;
            }

            if (field.TryRemovePrefix("TEMPDESC:", out var tdesc))
            {
                TemporaryBonusDescription = new FormattedString(tdesc);
                return;
            }

            if (field.TryRemovePrefix("VISION:", out var visionSpan))
            {
                var conditions = new List<Condition>();
                var visions = new List<string>();
                foreach (var part in visionSpan.Split('|'))
                {
                    if (Condition.TryParse(part, out var cond))
                    {
                        conditions.Add(cond);
                    }
                    else
                    {
                        visions.Add(part.Value);
                    }
                }

                foreach (var vision in visions)
                {
                    Vision.Add((vision, conditions));
                }
                return;
            }

            if (field.TryRemovePrefix("DR:", out var dr))
            {
                DamageReduction = new DamageReduction();
                foreach (var f in dr.Split('|'))
                {
                    DamageReduction.AddField(f);
                }
                return;
            }

            if (field.TryRemovePrefix("SR:", out var sr))
            {
                SpellResistance = sr.Value;
                return;
            }

            if (Condition.TryParse(field, IsEquipment, out var condition))
            {
                Conditions.Add(condition);
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (DisplayName != null)
            {
                output.WriteKeyValue("DisplayName", DisplayName);
            }
            if (SortKey != null)
            {
                output.WriteKeyValue("SortKey", SortKey);
            }
            output.WriteListValue("Abilities", Abilities);

            if (Facts.Any())
            {
                output.WriteObjectValue("Facts", () =>
                {
                    foreach (var (k, v) in Facts)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }
            if (!string.IsNullOrEmpty(SourcePage))
            {
                output.WriteKeyValue("SourcePage", SourcePage);
            }
            if (!string.IsNullOrEmpty(SourceShort))
            {
                output.WriteKeyValue("SourceShort", SourceShort);
            }
            if (!string.IsNullOrEmpty(SourceLong))
            {
                output.WriteKeyValue("SourceLong", SourceLong);
            }
            output.WriteListValue("SpellLikeAbilities", SpellLikeAbilities);
            if (Info.Any())
            {
                output.WriteObjectValue("Info", () =>
                {
                    foreach (var (k, v) in Info)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }
            var definitions = Definitions.Where(d => !d.IsUseless).ToList();
            output.WriteListValue("Definitions", definitions);
            if (TemporaryBonuses.Any())
            {
                output.WriteObjectValue("TemporaryBonuses", () =>
                {
                    if (TemporaryBonusDescription != null)
                    {
                        output.WriteKeyValue("Description", TemporaryBonusDescription);
                    }
                    output.WriteObjectValue("Bonuses", () =>
                    {
                        foreach (var (target, bonus) in TemporaryBonuses)
                        {
                            output.WriteStartObject();
                            output.WriteKeyValue("Target", target);
                            output.WriteKeyValue("Bonus", bonus);
                            output.WriteEndObject();
                            output.Write(",\n");
                        }
                    });
                });
            }

            if (Vision.Any())
            {
                output.WriteObjectValue("Vision", () =>
                {
                    foreach (var (vision, conditions) in Vision)
                    {
                        output.WriteStartObject();
                        output.WriteKeyValue("Vision", vision);
                        output.WriteListValue("Conditions", conditions);
                        output.WriteEndObject();
                        output.Write(",\n");
                    }
                });
            }
            if (DamageReduction != null)
            {
                output.WriteKeyValue("DamageReduction", DamageReduction);
            }

            if (SpellResistance != null)
            {
                output.WriteKeyValue("SpellResistance", SpellResistance);
            }

            if (Clear.Any())
            {
                output.WriteObjectValue("Clear", () =>
                {
                    foreach (var (k, v) in Clear)
                    {
                        output.WriteKey(k);
                        output.Write("=");
                        output.WriteValue(v);
                        output.Write(",\n");
                    }
                });
            }
            base.DumpMembers(output);
        }
    }
}