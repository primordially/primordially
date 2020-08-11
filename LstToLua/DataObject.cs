using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class DataObject : DataSetObject
    {
        public string? SortKey { get; private set; }
        public Dictionary<string, int> Followers { get; } = new Dictionary<string, int>();
        public Dictionary<string, FollowerType> FollowerTypes { get; } = new Dictionary<string, FollowerType>();
        public List<string> UnencumberedMove { get; } = new List<string>();
        public List<string> UnarmedDamage { get; } = new List<string>();
        public string? UnarmedDamageMultiplier { get; private set; }
        public bool ClearSpellLikeAbilities { get; private set; } = false;
        public List<SpellList> SpellsKnown { get; } = new List<SpellList>();
        public List<SpellLikeAbility> SpellLikeAbilities { get; } = new List<SpellLikeAbility>();
        public string? DisplayName { get; private set; }
        public List<ServesAs> ServesAs { get; } = new List<ServesAs>();
        public List<AutomaticEquipment> AutomaticEquipments { get; } = new List<AutomaticEquipment>();
        public List<AutomaticProficiency> AutomaticProficiencies = new List<AutomaticProficiency>();
        public List<AddedSpellCasterLevel> AddedSpellCasterLevels { get; } = new List<AddedSpellCasterLevel>();
        public ChangeWeaponProficiencyCategory? ChangeWeaponProficiency { get; private set; }
        public List<StatModification> StatModifications { get; } = new List<StatModification>();
        public List<(string key, string value)> Info { get; } = new List<(string key, string value)>();
        public string? AdditionalRequirementText { get; private set; }
        public List<NaturalAttack> NaturalAttacks { get; } = new List<NaturalAttack>();

        public override void AddField(TextSpan field)
        {
            if (field.StartsWith("TEMPVALUE:") || field.StartsWith("MODIFY:FACE"))
            {
                //TODO
                // Ignoring these for now, its not documented at all
                return;
            }

            if (field.StartsWith("KIT:"))
            {
                // Ignoring this one
                return;
            }

            if (AutomaticEquipment.TryParse(field, out var equip))
            {
                AutomaticEquipments.Add(equip);
                return;
            }

            if (AutomaticProficiency.TryParse(field, out var autoProficiency))
            {
                AutomaticProficiencies.Add(autoProficiency);
                return;
            }

            if (field.TryRemovePrefix("DEFINESTAT:", out var defineStat))
            {
                StatModifications.Add(new StatModification(defineStat));
                return;
            }

            if (field.TryRemovePrefix("ADD:SPELLCASTER|", out var scLevel))
            {
                AddedSpellCasterLevels.Add(AddedSpellCasterLevel.Parse(scLevel));
                return;
            }

            if (field.TryRemovePrefix("CHANGEPROF:", out var changeProf))
            {
                ChangeWeaponProficiency = ChangeWeaponProficiencyCategory.Parse(changeProf);
                return;
            }

            if (field.TryRemovePrefix("FOLLOWERS:", out var followers))
            {
                var (k, v) = followers.SplitTuple('|');
                Followers[k.Value] = Helpers.ParseInt(v);
                return;
            }

            if (field.TryRemovePrefix("COMPANIONLIST:", out var value))
            {
                var ft = FollowerType.Parse(value);
                FollowerTypes[ft.Type] = ft;
                return;
            }

            if (field.TryRemovePrefix("UNENCUMBEREDMOVE:", out var unMove))
            {
                UnencumberedMove.AddRange(unMove.Value.Split('|'));
                return;
            }

            if (field.TryRemovePrefix("UDAM:", out var udam))
            {
                UnarmedDamage.Clear();
                UnarmedDamage.AddRange(udam.Value.Split(','));
                return;
            }

            if (field.TryRemovePrefix("UMULT:", out var umult))
            {
                UnarmedDamageMultiplier = umult.Value;
                return;
            }

            if (field.TryRemovePrefix("SPELLS:", out var spellLikeAbility))
            {
                if (spellLikeAbility.Value == ".CLEARALL")
                {
                    ClearSpellLikeAbilities = true;
                    SpellLikeAbilities.Clear();
                    return;
                }
                SpellLikeAbilities.AddRange(SpellLikeAbility.ParseAll(spellLikeAbility));
                return;
            }

            if (field.TryRemovePrefix("SPELLKNOWN:", out var spellKnown))
            {
                SpellsKnown.AddRange(SpellList.Parse(spellKnown));
                return;
            }

            if (field.TryRemovePrefix("SERVESAS:", out var servesAs))
            {
                ServesAs.Add(LstToLua.ServesAs.Parse(servesAs));
                return;
            }

            if (field.TryRemovePrefix("OUTPUTNAME:", out var n))
            {
                DisplayName = n.Value;
                return;
            }

            if (field.TryRemovePrefix("SORTKEY:", out var sortKey))
            {
                SortKey = sortKey.Value;
                return;
            }

            if (field.TryRemovePrefix("INFO:", out var info))
            {
                var (k, v) = info.SplitTuple('|');
                Info.Add((k.Value, v.Value));
                return;
            }

            if (field.TryRemovePrefix("PRETEXT", out var pretext))
            {
                AdditionalRequirementText = pretext.Value;
                return;
            }

            if (field.TryRemovePrefix("NATURALATTACKS:", out var natAttack))
            {
                NaturalAttacks.AddRange(NaturalAttack.ParseAll(natAttack));
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (SortKey != null)
            {
                output.WriteKeyValue("SortKey", SortKey);
            }

            if (DisplayName != null)
            {
                output.WriteKeyValue("DisplayName", DisplayName);
            }

            if (Followers.Any())
            {
                output.WriteObjectValue("Followers", () =>
                {
                    foreach (var (k, v) in Followers)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }

            output.WriteListValue("NaturalAttacks", NaturalAttacks);
            output.WriteListValue("UnencumberedMove", UnencumberedMove);
            output.WriteListValue("UnarmedDamage", UnarmedDamage);
            if (UnarmedDamageMultiplier != null)
            {
                output.WriteKeyValue("UnarmedDamageMultiplier", UnarmedDamageMultiplier);
            }
            output.WriteListValue("SpellLikeAbilities", SpellLikeAbilities);
            output.WriteListValue("SpellsKnown", SpellsKnown);
            output.WriteListValue("ServesAs", ServesAs);
            output.WriteListValue("AutomaticEquipment", AutomaticEquipments);
            output.WriteListValue("AutomaticProficiencies", AutomaticProficiencies);
            output.WriteListValue("AddedSpellCasterLevels", AddedSpellCasterLevels);
            if (ChangeWeaponProficiency != null)
            {
                output.WriteKeyValue("ChangeWeaponProficiency", ChangeWeaponProficiency);
            }
            output.WriteListValue("StatModifications", StatModifications);
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

            if (AdditionalRequirementText != null)
            {
                output.WriteKeyValue("AdditionalRequirementText", AdditionalRequirementText);
            }
            base.DumpMembers(output);
        }
    }
}