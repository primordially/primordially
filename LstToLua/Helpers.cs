using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace Primordially.LstToLua
{
    internal static class Helpers
    {
        public static TValue GetOrAdd<TKey, TValue>(this IDictionary<TKey, TValue> that, TKey key, Func<TValue> valueFactory)
            where TKey : notnull
        {
            if (that.TryGetValue(key, out var value))
            {
                return value;
            }

            return that[key] = valueFactory();
        }

        public static bool ParseBool(TextSpan value)
        {
            switch (value.Value.ToLowerInvariant())
            {
                case "yes":
                case "true":
                case "display":
                case "export":
                case "qualify":
                    return true;
                case "n":
                case "no":
                case "false":
                    return false;
            }

            throw new ParseFailedException(value, $"Unable to parse '{value.Value}' as a boolean.");
        }

        public static int ParseInt(TextSpan value)
        {
            if (int.TryParse(value.Value, out int result))
            {
                return result;
            }

            throw new ParseFailedException(value, $"Unable to parse '{value.Value}' as an integer.");
        }

        public static double ParseDouble(TextSpan value)
        {
            if (double.TryParse(value.Value, out double result))
            {
                return result;
            }

            throw new ParseFailedException(value, $"Unable to parse '{value.Value}' as an integer.");
        }

        public static void CheckForMODorCOPYorCLEAR(TextSpan value)
        {
            if (value.IndexOf(".MOD") != -1)
            {
                throw new ParseFailedException(value, ".MOD is not currently supported.");
            }

            if (value.IndexOf(".COPY=") != -1)
            {
                throw new ParseFailedException(value, ".COPY is not currently supported.");
            }

            if (value.IndexOf(".CLEAR") != -1)
            {
                throw new ParseFailedException(value, ".CLEAR is not currently supported.");
            }
        }

        public static void ParseChoose(TextSpan value, IChooseable that)
        {
            using var enumerator = value.Split('|').GetEnumerator();
            if (!enumerator.MoveNext())
            {
                throw new ParseFailedException(value, "Unable to parse CHOOSE");
            }

            int? numChoices = null;
            if (enumerator.Current.StartsWith("NUMCHOICES="))
            {
                numChoices = ParseInt(enumerator.Current.Substring("NUMCHOICES=".Length));
                if (!enumerator.MoveNext())
                {
                    throw new ParseFailedException(value, "Unable to parse CHOOSE");
                }
            }

            var kind = enumerator.Current.Value;
            if (kind == "SPELLS")
            {
                kind = "SPELL";
            }
            if (kind == "SCHOOLS")
            {
                kind = "SCHOOL";
            }
            if (kind == "NOCHOICE")
            {
                return;
            }
            if (kind == "USERINPUT")
            {
                if (!enumerator.MoveNext())
                {
                    throw new ParseFailedException(value, "Unable to parse CHOOSE:USERINPUT");
                }
                if (!int.TryParse(enumerator.Current.Value, out var count))
                {
                    count = 1;
                }
                else
                {
                    if (!enumerator.MoveNext())
                    {
                        throw new ParseFailedException(value, "Unable to parse CHOOSE:USERINPUT");
                    }
                }

                if (!enumerator.Current.TryRemovePrefix("TITLE=", out var title))
                {
                    throw new ParseFailedException(value, "Unable to parse CHOOSE:USERINPUT");
                }
                that.Chooses.Add($"ChooseUserInput({count}, \"{title.Value}\")");
                return;
            }

            if (kind == "STRING")
            {
                var strings = new List<string>();
                while (enumerator.MoveNext())
                {
                    strings.Add($"\"{enumerator.Current.Value}\"");
                }
                that.Chooses.Add($"ChooseString({{{string.Join(", ", strings)}}})");
                return;
            }

            var conditions = new List<List<string>>();

            string ProcessCondition(TextSpan cond, int index)
            {
                bool invert = cond.TryRemovePrefix("!", out cond);
                switch (kind)
                {
                    case "SKILL":
                    {
                        if (cond.TryRemovePrefix("FEAT=", out var featKey))
                        {
                            return $"{(invert ? "not " : "")}SkillWasChosenBy(skill, \"{featKey.Value}\")";
                        }
                        if (cond.TryRemovePrefix("TYPE=", out var type))
                        {
                            return $"skill.Type {(invert ? "!=" : "==")} \"{type.Value}\"";
                        }
                        if (cond.TryRemovePrefix("RANKS=", out cond))
                        {
                            var ranks = cond.Value == "MAXRANK" ? "character.MaxSkillRank" : ParseInt(cond).ToString();
                            return $"skill.Ranks {(invert ? "<" : ">=")} {ranks}";
                        }
                        switch (cond.Value)
                        {
                            case "ALL":
                            case "ANY":
                                return invert ? "false" : "true";
                            case "QUALIFIED":
                                return (invert ? "not " : "") + "character.IsQualifiedFor(skill)";
                            case "USEUNTRAINED":
                                return (invert ? "not " : "") + "skill.CanUseUntrained";
                            case "CLASS":
                                return (invert ? "not " : "") + "character.IsClassSkill(skill.Name)";
                            case "CROSSCLASS":
                                return (invert ? "" : "not ") + "character.IsClassSkill(skill.Name)";
                            case "EXCLUSIVE":
                                return (invert ? "not " : "") + "character.IsExclusiveSkill(skill.Name)";
                            case "NORANK":
                                return $"character.Ranks(skill) {(invert ? ">" : "==")} 0";
                        }

                        return (invert ? "not " : "") + $"(stringMatch(skill.Name, \"{cond.Value}\") or stringMatch(skill.Key, \"{cond.Value}\"))";
                    }
                    case "LANG":
                    {
                        if (cond.TryRemovePrefix("FEAT=", out var featKey))
                        {
                            return $"{(invert ? "not " : "")}LanguageWasChosenBy(lang, \"{featKey.Value}\")";
                        }
                        if (cond.TryRemovePrefix("TYPE=", out var type))
                        {
                            return $"lang.Type {(invert ? "!=" : "==")} \"{type.Value}\"";
                        }

                        switch (cond.Value)
                        {
                            case "ALL":
                            case "ANY":
                                return invert ? "false" : "true";
                            case "LANGBONUS":
                                return $"{(invert ? "not " : "")}character.IsBonusLanguage(lang)";
                            case "PC":
                                return $"{(invert ? "not " : "")}character.HasLanguage(lang)";
                            case "QUALIFIED":
                                return (invert ? "not " : "") + "character.IsQualifiedFor(lang)";
                        }

                        return (invert ? "not " : "") + $"(stringMatch(lang.Name, \"{cond.Value}\") or stringMatch(lang.Key, \"{cond.Value}\"))";
                    }

                    case "SPELL":
                    {
                        if (cond.TryRemovePrefix("TYPE=", out var type) || cond.TryRemovePrefix("SPELLTYPE=", out type))
                        {
                            return $"{(invert ? "not " : "")}spell.IsType(\"{type.Value}\")";
                        }
                        if (cond.TryRemovePrefix("SCHOOL=", out cond))
                        {
                            return $"spell.School {(invert ? "!=" : "==")} \"{cond.Value}\"";
                        }
                        if (cond.TryRemovePrefix("SUBSCHOOL=", out cond))
                        {
                            return $"spell.SubSchool {(invert ? "!=" : "==")} \"{cond.Value}\"";
                        }
                        if (cond.TryRemovePrefix("DESCRIPTOR=", out cond))
                        {
                            return $"spell.Descriptor {(invert ? "!=" : "==")} \"{cond.Value}\"";
                        }
                        if (cond.TryRemovePrefix("PROHIBITED=", out cond))
                        {
                            return $"spell.Prohibited {(invert ? "!=" : "==")} \"{Helpers.ParseBool(cond)}\"";
                        }
                        if (cond.TryRemovePrefix("SPELLBOOK=", out cond))
                        {
                            return $"spell.SpellBook {(invert ? "!=" : "==")} \"{cond.Value}\"";
                        }
                        if (cond.TryRemovePrefix("CLASSLIST=", out cond))
                        {
                            return $"{(invert ? "not " : "")}SpellIsInClassList(spell, \"{cond.Value}\")";
                        }
                        if (cond.TryRemovePrefix("DOMAINLIST=", out cond))
                        {
                            return $"{(invert ? "not " : "")}SpellIsInDomainList(spell, \"{cond.Value}\")";
                        }
                        if (cond.TryRemovePrefix("KNOWN=", out cond))
                        {
                            var knows = Helpers.ParseBool(cond);
                            var prefix = (invert, knows) switch
                            {
                                (true,  true)  => "not ",
                                (true,  false) => "",
                                (false, true)  => "",
                                (false, false) => "not ",
                            };
                            return $"{prefix}character.KnowsSpell(spell)";
                        }
                        if (cond.TryRemovePrefix("LEVELMIN=", out cond))
                        {
                            var level = cond.Value == "MAXCASTABLE"
                                ? "character.MaxCastableSpellLevel"
                                : ParseInt(cond).ToString();
                            var op = invert ? "<" : ">=";
                            return $"spell.Level {op} {level}";
                        }
                        if (cond.TryRemovePrefix("LEVELMAX=", out cond))
                        {
                            var level = cond.Value == "MAXCASTABLE"
                                ? "character.MaxCastableSpellLevel"
                                : ParseInt(cond).ToString();
                            var op = invert ? ">" : "<=";
                            return $"spell.Level {op} {level}";
                        }

                        switch (cond.Value)
                        {
                            case "ALL":
                                return invert ? "false" : "true";
                        }

                        return (invert ? "not " : "") +
                               $"(stringMatch(spell.Name, \"{cond.Value}\") or stringMatch(spell.Key, \"{cond.Value}\"))";
                    }
                    case "ABILITYSELECTION":
                    {
                        if (cond.TryRemovePrefix("TYPE=", out var type))
                        {
                            return $"{(invert ? "not " : "")}ability.IsType(\"{type.Value}\")";
                        }
                        switch (cond.Value)
                        {
                            case "ALL":
                            case "ANY":
                                return invert ? "false" : "true";
                            case "PC":
                                return $"{(invert ? "not " : "")}character.HasAbility(ability)";
                            case "QUALIFIED":
                                return (invert ? "not " : "") + "character.IsQualifiedFor(ability)";
                        }
                        if (index == 0)
                        {
                            return $"{(invert ? "not " : "")}ability.Category == \"{cond.Value}\"";
                        }
                        return $"{(invert ? "not " : "")}(stringMatch(ability.Name, \"{cond.Value}\") or stringMatch(ability.Key, \"{cond.Value}\"))";
                    }
                    case "CLASS":
                    {
                        if (cond.TryRemovePrefix("FEAT=", out var featKey))
                        {
                            return $"{(invert ? "not " : "")}ClassWasChosenBy(class, \"{featKey.Value}\")";
                        }
                        if (cond.TryRemovePrefix("TYPE=", out var type))
                        {
                            return $"{(invert ? "not " : "")}class.IsType(\"{type.Value}\")";
                        }
                        if (cond.TryRemovePrefix("SPELLTYPE=", out var spellType))
                        {
                            return $"{(invert ? "not " : "")}class.CanCast(\"{spellType.Value}\")";
                        }
                        switch (cond.Value)
                        {
                            case "ALL":
                            case "ANY":
                                return invert ? "false" : "true";
                            case "PC":
                                return $"{(invert ? "not " : "")}character.HasClass(class)";
                            case "QUALIFIED":
                                return (invert ? "not " : "") + "character.IsQualifiedFor(class)";
                            case "SPELLCASTER":
                                return (invert ? "not " : "") + "class.CanCastSpells";
                        }
                        return $"{(invert ? "not " : "")}(stringMatch(class.Name, \"{cond.Value}\") or stringMatch(class.Key, \"{cond.Value}\"))";
                    }
                    case "WEAPONPROFICIENCY":
                    {
                        if (cond.TryRemovePrefix("FEAT=", out var featKey))
                        {
                            return $"{(invert ? "not " : "")}WeaponProficiencyWasChosenBy(weapon, \"{featKey.Value}\")";
                        }
                        if (cond.TryRemovePrefix("TYPE=", out var type))
                        {
                            return $"{(invert ? "not " : "")}weapon.IsType(\"{type.Value}\")";
                        }
                        if (cond.TryRemovePrefix("WIELD=", out var wield))
                        {
                            return $"{(invert ? "not " : "")}weapon.IsWieldable(\"{wield.Value}\")";
                        }

                        switch (cond.Value)
                        {
                            case "ALL":
                            case "ANY":
                            case "EQUIPMENT":
                                return invert ? "false" : "true";
                            case "DEITYWEAPON":
                                return $"{(invert ? "not " : "")}character.Diety.Favors(weapon)";
                            case "PC":
                                return $"{(invert ? "not " : "")}character.IsProficientWith(weapon)";
                            case "QUALIFIED":
                                return (invert ? "not " : "") + "character.IsQualifiedFor(weapon)";
                            case "SPELLCASTER":
                                return (invert ? "not " : "") + "character.CanCastSpells";
                        }

                        return $"{(invert ? "not " : "")}stringMatch(weapon.Name, \"{cond.Value}\")";
                    }
                    case "SCHOOL":
                    {
                        if (cond.TryRemovePrefix("FEAT=", out var featKey))
                        {
                            return $"{(invert ? "not " : "")}SchoolWasChosenBy(school, \"{featKey.Value}\")";
                        }

                        switch (cond.Value)
                        {
                            case "ALL":
                                return invert ? "false" : "true";
                        }

                        return $"{(invert ? "not " : "")}stringMatch(school.Name, \"{cond.Value}\")";
                    }
                    default:
                        throw new NotImplementedException("CHOOSE:" + kind);
                }
            }
            while (enumerator.MoveNext())
            {
                var current = enumerator.Current;
                var anded = new List<string>();
                int index = 0;
                foreach (var c in current.Split(',').SelectMany(c => c.Split('[')).SelectMany(c => c.Split(';')))
                {
                    var cond = c;
                    if (cond.EndsWith(']'))
                    {
                        cond = cond.Substring(0, cond.Value.Length - 1);
                    }
                    anded.Add(ProcessCondition(cond, index));
                    index++;
                }

                conditions.Add(anded);
            }

            var fnName = kind[0..1].ToUpperInvariant() + kind[1..].ToLowerInvariant();
            var paramName = kind.ToLowerInvariant();
            if (kind == "ABILITYSELECTION")
            {
                paramName = "ability";
            }

            if (kind == "WEAPONPROFICIENCY")
            {
                paramName = "weapon";
            }

            that.Chooses.Add($@"
Choose{fnName}(function (character, {paramName})
  return {string.Join(" or ", conditions.Select(list => string.Join(" and ", list)).Select(c => $"({c})"))}
end)
".Replace("\r\n", "\n").Trim());
        }
    }

    internal interface IChooseable
    {
        List<string> Chooses { get; }
        string Selections { get; }
    }
}