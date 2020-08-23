using System;
using Primordially.LstToLua.Adds;
using Primordially.LstToLua.Choosers;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class CommonProperties
    {
        public static readonly PropertyDefinition SpellsKnown = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("SPELLKNOWN:", out value))
            {
                var list = properties.GetList<SpellList>(nameof(SpellsKnown));
                list.AddRange(SpellList.Parse(value));
                return true;
            }

            return false;
        };

        public static readonly PropertyDefinition SpellLevel = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("SPELLLEVEL:", out value))
            {
                var list = properties.GetList<SpellList>("SpellLists");
                list.AddRange(SpellList.Parse(value));
                return true;
            }

            return false;
        };

        public static readonly PropertyDefinition ConditionForEquipment = (value, properties, clear) =>
        {
            if (value.Value == "PRE:.CLEAR")
            {
                clear["Conditions"] = null;
                return true;
            }

            if (Condition.TryParse(value, true, out var condition))
            {
                var list = properties.GetList<Condition>("Conditions");
                list.Add(condition);
                return true;
            }

            return false;
        };

        public static readonly PropertyDefinition Conditions = (value, properties, clear) =>
        {
            if (value.Value == "PRE:.CLEAR")
            {
                clear["Conditions"] = null;
                return true;
            }

            if (Condition.TryParse(value, out var condition))
            {
                var list = properties.GetList<Condition>("Conditions");
                list.Add(condition);
                return true;
            }

            return false;
        };

        public static readonly PropertyDefinition Choose = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("CHOOSE:", out value))
            {
                var choose = Chooser.Convert(value, out var choiceCount);
                properties["Choice"] = new Choice
                {
                    Choose = choose,
                    MaxTimes = choiceCount,
                };
                return true;
            }

            if (value.TryRemovePrefix("SELECT:", out value))
            {
                properties["Selections"] = new Formula(value.Value);
                return true;
            }

            return false;
        };

        public static readonly PropertyDefinition Kit = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("KIT:", out value))
            {
                if (!value.TryRemoveInfix("|", out var count, out value))
                {
                    throw new ParseFailedException(count, "Cannot parse KIT:");
                }

                properties["StartingKitCount"] = Helpers.ParseInt(count);
                properties.GetList<string>("StartingKitChoices")
                    .AddRange(value.Value.Split('|'));
                return true;
            }

            return false;
        };

        public static readonly PropertyDefinition Auto = (value, properties, clear) =>
        {
            if (!value.TryRemovePrefix("AUTO:", out value))
            {
                return false;
            }

            if (value.TryRemovePrefix("LANG|", out value))
            {
                var list = properties.GetList<AutomaticLanguage>("AutomaticLanguages");
                if (value.Value == ".CLEAR")
                {
                    clear["AutomaticLanguages"] = null;
                    list.Clear();
                    return true;
                }
                list.Add(new AutomaticLanguage(value));
                return true;
            }

            if (value.TryRemovePrefix("EQUIP|", out value))
            {
                var list = properties.GetList<AutomaticEquipment>("AutomaticEquipment");
                if (value.Value == ".CLEAR")
                {
                    clear["AutomaticEquipment"] = null;
                    list.Clear();
                    return true;
                }

                list.Add(new AutomaticEquipment(value));
                return true;

            }

            if (value.TryRemovePrefix("WEAPONPROF|", out value))
            {
                var list = properties.GetList<AutomaticProficiency>("AutomaticProficiencies");
                list.Add(new AutomaticProficiency(ProficiencyKind.Weapon, value));
                return true;
            }

            if (value.TryRemovePrefix("ARMORPROF|", out value))
            {
                var list = properties.GetList<AutomaticProficiency>("AutomaticProficiencies");
                list.Add(new AutomaticProficiency(ProficiencyKind.Armor, value));
                return true;
            }

            if (value.TryRemovePrefix("SHIELDPROF|", out value))
            {
                var list = properties.GetList<AutomaticProficiency>("AutomaticProficiencies");
                list.Add(new AutomaticProficiency(ProficiencyKind.Shield, value));
                return true;
            }

            throw new ParseFailedException(value, "Cannot parse AUTO");
        };

        public static PropertyDefinition DamageReduction = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("DR:", out value))
            {
                properties["DamageReduction"] = new DamageReduction(value);
                return true;
            }

            return false;
        };

        public static PropertyDefinition SpellResistance = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("SR:", out value))
            {
                properties["SpellResistance"] = new Formula(value.Value);
                return true;
            }

            return false;
        };

        public static PropertyDefinition Movement = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("MOVE:", out value))
            {
                var dict = properties.GetDictionary<string, int>("Movement");
                string? curKind = null;
                foreach (var part in value.Split(','))
                {
                    if (curKind != null)
                    {
                        dict[curKind] = Helpers.ParseInt(part);
                        curKind = null;
                    }
                    else
                    {
                        curKind = part.Value;
                    }
                }

                if (curKind != null)
                {
                    throw new ParseFailedException(value, "Invalid MOVE tag");
                }
                return true;
            }

            return false;
        };

        public static PropertyDefinition Definitions = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("DEFINE:", out value))
            {
                var def = new ObjectVariableDefinition(value);
                if (!def.IsUseless)
                {
                    var list = properties.GetList<ObjectVariableDefinition>(nameof(Definitions));
                    list.Add(def);
                }

                return true;
            }

            return false;
        };

        public static PropertyDefinition ClassSkills = Property.SeparatedList<string>('|', "CSKILL", "ClassSkills");
        public static PropertyDefinition Vision = Property.Multiple<VisionDefinition>("VISION", "Visions");
        public static PropertyDefinition CompanionList = Property.Multiple<FollowerType>("COMPANIONLIST", "FollowerTypes");
        public static PropertyDefinition Facts = Property.Dictionary<string>("FACT", "Facts");
        public static PropertyDefinition FactSets = Property.Dictionary<string>("FACTSET", "FactSets");
        public static PropertyDefinition Types = Property.SeparatedList<string>('.', "TYPE", "Types");
        public static PropertyDefinition Bonuses = Property.Multiple<Bonus>("BONUS", "Bonuses");
        public static PropertyDefinition BonusesForEquipment = Property.Multiple<EquipmentBonus>("BONUS", "Bonuses");
        public static PropertyDefinition Abilities = Property.Multiple<AbilityReference>("ABILITY", "Abilities");
        public static PropertyDefinition ProhibitedSpells = Property.Multiple<ProhibitedSpell>("PROHIBITSPELL", "ProhibitedSpells");
        public static PropertyDefinition Domains = Property.Multiple<DomainReference>("DOMAIN", "Domains");
        public static PropertyDefinition Description = Property.Single<FormattedString>("DESC", "Description");
        public static PropertyDefinition DisplayName = Property.String("OUTPUTNAME", "DisplayName");
        public static PropertyDefinition SpecialProperties = Property.Multiple<FormattedString>("SPROP", "SpecialProperties");
        public static PropertyDefinition Info = Property.Dictionary<string>("INFO", "Info");
        public static PropertyDefinition PreText = Property.String("PRETEXT", "ExtraCondition");
        public static PropertyDefinition ServesAs = Property.Single<ServesAs>("SERVESAS", "ServesAs");
        public static PropertyDefinition Size = Property.String("SIZE", "Size");
        public static PropertyDefinition BonusLanguages = Property.SeparatedList<BonusLanguage>(',', "LANGBONUS", "BonusLanguages");
        public static PropertyDefinition DefineStat = Property.Multiple<StatModification>("DEFINESTAT", "StatModifications");
        public static PropertyDefinition ChallengeRating = Property.String("CR", "ChallengeRating");

        public static PropertyDefinition HitDie = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("HITDIE:", out value))
            {
                properties["HitDie"] = new HitDie(value);
                return true;
            }

            return false;
        };

        public static PropertyDefinition Followers = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("FOLLOWERS:", out value))
            {
                var dict = properties.GetDictionary<string, int>("Followers");
                var (k, v) = value.SplitTuple('|');
                dict[k.Value] = Helpers.ParseInt(v);
                return true;
            }

            return false;
        };

        public static PropertyDefinition Add = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("ADD:", out value))
            {
                if (value.Value == ".CLEAR")
                {
                    clear["Add"] = null;
                    return true;
                }
                var list = properties.GetList<Adder>("Add");
                list.Add(Adder.Parse(value));
                return true;
            }

            return false;
        };

        public static PropertyDefinition ChangeWeaponProficiency = Property.Single<ChangeWeaponProficiencyCategory>("CHANGEPROF", "ChangeWeaponProficiency");

        public static PropertyDefinition Spells = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("SPELLS:", out value))
            {
                var list = properties.GetList<SpellLikeAbility>("SpellLikeAbilities");
                list.AddRange(SpellLikeAbility.ParseAll(value));
                return true;
            }

            return false;
        };

        public static PropertyDefinition UnarmedDamageAndMultiplier = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("UDAM:", out value))
            {
                var list = properties.GetList<string>("UnarmedDamage");
                list.Clear();
                list.AddRange(value.Value.Split(','));
                return true;
            }

            if (value.TryRemovePrefix("UMULT", out value))
            {
                properties["UnarmedDamageMultiplier"] = value.Value;
                return true;
            }

            return false;
        };

        public static PropertyDefinition NaturalAttacks = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("NATURALATTACKS:", out value))
            {
                properties.GetList<NaturalAttack>("NaturalAttacks").AddRange(NaturalAttack.ParseAll(value));
                return true;
            }

            return false;
        };

        public static PropertyDefinition TemporaryBonus = (value, properties, clear) =>
        {
            var desc = Property.Single<FormattedString>("TEMPDESC", "TemporaryBonusDescription");
            if (desc(value, properties, clear))
            {
                return true;
            }

            if (value.TryRemovePrefix("TEMPBONUS:", out value))
            {
                var (target, bonus) = value.SplitTuple('|');
                string targetValue = target.Value;
                if (target.Value == "EQ")
                {
                    TextSpan type;
                    (type, bonus) = bonus.SplitTuple('|');
                    targetValue += '|' + type.Value;
                }

                properties["TemporaryBonus"] = new TemporaryBonus(targetValue, new Bonus(bonus));
                return true;
            }

            return false;
        };

        public static PropertyDefinition Template = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("TEMPLATE:ADDCHOICE:", out value))
            {
                properties.GetList<string>("TemplateChoices").AddRange(value.Value.Split('|'));
                return true;
            }

            if (value.TryRemovePrefix("TEMPLATE:CHOOSE:", out value))
            {
                properties.GetList<string>("TemplateChoices").AddRange(value.Value.Split('|'));
                return true;
            }

            if (value.TryRemovePrefix("TEMPLATE:", out value))
            {
                properties.GetList<string>("Templates").AddRange(value.Value.Split('|'));
                return true;
            }

            return false;
        };

        public static PropertyDefinition HitDieStuff = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("HD:", out value))
            {
                if (value.Value.Contains(":"))
                {
                    var (w, rest) = value.SplitTuple(':');
                    var when = w.Value;

                    var whenObj = new WhenHitDie(when);
                    whenObj.AddField(rest);
                    var whenList = properties.GetList<WhenHitDie>("Additions");
                    whenList.Add(whenObj);
                    return true;
                }
            }

            return false;
        };
    }
}