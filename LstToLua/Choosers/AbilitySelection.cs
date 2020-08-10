using System.Linq;

namespace Primordially.LstToLua.Choosers
{
    internal abstract class Chooser
    {
        public static string? Convert(TextSpan value, out int? choiceCount)
        {
            choiceCount = null;
            if (value.TryRemovePrefix("NUMCHOICES=", out value))
            {
                var (num, r) = value.SplitTuple('|');
                choiceCount = Helpers.ParseInt(num);
                value = r;
            }

            if (value.Value == "NOCHOICE")
            {
                return "ChooseNothing()";
            }
            var (kind, rest) = value.SplitTuple('|');
            switch (kind.Value)
            {
                case "USERINPUT":
                    return new UserInputChooser().Process(rest);
                case "STRING":
                    return new StringChooser().Process(rest);
                case "ABILITYSELECTION":
                    return new AbilitySelectionChooser().Process(rest);
                case "SKILL":
                    return new SkillChooser().Process(rest);
                case "LANG":
                    return new LanguageChooser().Process(rest);
                case "SPELLS":
                    return new SpellChooser().Process(rest);
                case "SCHOOLS":
                    return new SchoolChooser().Process(rest);
                case "CLASS":
                    return new ClassChooser().Process(rest);
                case "WEAPONPROFICIENCY":
                    return new WeaponProficiencyChooser().Process(rest);

            }
            throw new ParseFailedException(value, "Cannot parse CHOOSE");
        }

        public abstract string ProcessCondition(TextSpan value);

        public string ProcessConditions(TextSpan value)
        {
            return string.Join(" or ", value.Split('|', quotedBy: ('[', ']')).Select(part =>
            {
                var cond = string.Join(" and ", part.Split(',', quotedBy: ('[', ']')).SelectMany(p => p.Split(';', quotedBy: ('[', ']'))).Select(innerPart =>
                {
                    string? nestedCondition = null;
                    if (innerPart.Value.Contains('[') && innerPart.Value.EndsWith(']'))
                    {
                        var openIndex = innerPart.IndexOf('[');
                        var nested = innerPart.Substring(openIndex + 1).Substring(0, -1);
                        nestedCondition = ProcessConditions(nested);
                        innerPart = innerPart.Substring(0, openIndex);
                    }
                    var c = ProcessCondition(innerPart);
                    if (nestedCondition != null)
                    {
                        c += $" and ({nestedCondition})";
                    }

                    return $"({c})";
                }));

                return $"({cond})";
            }));
        }

        public virtual string Process(TextSpan value)
        {
            return ProcessConditions(value);
        }
    }

    internal class StringChooser
    {
        public string Process(TextSpan value)
        {
            var strings = value.Value.Split('|').Select(s => $"\"{s}\"");
            return $"ChooseString({{{string.Join(", ", strings)}}})";
        }
    }

    internal class UserInputChooser
    {
        public string Process(TextSpan value)
        {
            bool first = true;
            int count = 1;
            string? title = null;
            foreach (var item in value.Split('|'))
            {
                if (first)
                {
                    first = false;
                    if (int.TryParse(item.Value, out count))
                    {
                        continue;
                    }
                    count = 1;
                }

                if (item.TryRemovePrefix("TITLE=", out var titleSpan))
                {
                    title = titleSpan.Value;
                    continue;
                }
                throw new ParseFailedException(item, "Unable to parse CHOOSE:USERINPUT");
            }

            if (title == null)
            {
                throw new ParseFailedException(value, "Unable to parse CHOOSE:USERINPUT");
            }

            return $"ChooseUserInput({count}, \"{title}\")";
        }
    }

    abstract class QualifiedChooser : Chooser
    {
        public string? Title { get; private set; }

        public override string Process(TextSpan value)
        {
            var (maybeValue, titleMaybe) = value.SplitTuple('|', true, false);
            if (titleMaybe.Value != null)
            {
                if (titleMaybe.TryRemovePrefix("TITLE=", out var titleSpan))
                {
                    Title = titleSpan.Value;
                    value = maybeValue;
                }
            }
            return base.Process(value);
        }
    }

    class SchoolChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"SchoolWasChosenBy(school, \"{value.Value}\")";
            }
            else if (value.Value == "ALL")
                condition = "true";
            else
                condition = $"(stringMatch(school.Name, \"{value.Value}\") or stringMatch(school.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseSchool(function (character, school)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }

    class SpellChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("TYPE=", out var type) || value.TryRemovePrefix("SPELLTYPE=", out type))
            {
                condition = $"spell.IsType(\"{type.Value}\")";
            }
            else if (value.TryRemovePrefix("SCHOOL=", out var school))
            {
                condition = $"spell.School == \"{school.Value}\"";
            }
            else if (value.TryRemovePrefix("SUBSCHOOL=", out var subSchool))
            {
                condition = $"spell.SubSchool == \"{subSchool.Value}\"";
            }
            else if (value.TryRemovePrefix("DESCRIPTOR=", out var desc))
            {
                condition = $"spell.Descriptor == \"{desc.Value}\"";
            }
            else if (value.TryRemovePrefix("PROHIBITED=", out var prohib))
            {
                condition = $"spell.Prohibited == {Helpers.ParseBool(prohib)}";
            }
            else if (value.TryRemovePrefix("SPELLBOOK=", out var spellbook))
            {
                condition = $"spell.SpellBook == \"{spellbook.Value}\"";
            }
            else if (value.TryRemovePrefix("CLASSLIST=", out var classList))
            {
                condition = $"spell.IsInClassList(\"{classList.Value}\")";
            }
            else if (value.TryRemovePrefix("DOMAINLIST=", out var domainList))
            {
                condition = $"spell.IsInDomainList(\"{domainList.Value}\")";
            }
            else if (value.TryRemovePrefix("KNOWN=", out var k))
            {
                var known = Helpers.ParseBool(k);
                condition = known ? "character.KnowsSpell(spell)" : "not character.KnowsSpell(spell)";
            }
            else if (value.TryRemovePrefix("LEVELMIN=", out var lvlMin))
            {
                var level = lvlMin.Value == "MAXCASTABLE"
                    ? "character.MaxCastableSpellLevel"
                    : Helpers.ParseInt(lvlMin).ToString();
                condition = $"spell.Level >= {level}";
            }
            else if (value.TryRemovePrefix("LEVELMAX=", out var lvlMax))
            {
                var level = lvlMax.Value == "MAXCASTABLE"
                    ? "character.MaxCastableSpellLevel"
                    : Helpers.ParseInt(lvlMax).ToString();
                condition = $"spell.Level <= {level}";
            }
            else if (value.Value == "ALL")
                condition = "true";
            else
                condition = $"(stringMatch(spell.Name, \"{value.Value}\") or stringMatch(spell.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseSpell(function (character, spell)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }

    class LanguageChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out var featKey))
            {
                condition = $"LanguageWasChosenBy(lang, \"{featKey.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out var type))
            {
                condition = $"lang.IsType(\"{type.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(lang)";
            else if (value.Value == "PC")
                condition = "character.HasLanguage(lang)";
            else if (value.Value == "LANGBONUS")
                condition = "character.IsBonusLanguage(lang)";
            else
                condition = $"(stringMatch(lang.Name, \"{value.Value}\") or stringMatch(lang.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseLanguage(function (character, lang)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }

    class SkillChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out var featKey))
            {
                condition = $"SkillWasChosenBy(skill, \"{featKey.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out var type))
            {
                condition = $"skill.IsType(\"{type.Value}\")";
            }
            else if (value.TryRemovePrefix("RANKS=", out var ranksSpan))
            {
                var ranks = ranksSpan.Value == "MAXRANK" ? "character.MaxSkillRank" : Helpers.ParseInt(ranksSpan).ToString();
                condition = $"character.Ranks(skill) >= {ranks}";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(skill)";
            else if (value.Value == "USEUNTRAINED")
                condition = "skill.CanUseUntrained";
            else if (value.Value == "CLASS")
                condition = "character.IsClassSkill(skill.Name)";
            else if (value.Value == "CROSSCLASS")
                condition = "character.IsClassSkill(skill.Name)";
            else if (value.Value == "EXCLUSIVE")
                condition = "character.IsExclusiveSkill(skill.Name)";
            else if (value.Value == "NORANK")
                condition = $"character.Ranks(skill) == 0";
            else
                condition = $"(stringMatch(skill.Name, \"{value.Value}\") or stringMatch(skill.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseSkill(function (character, skill)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }

    class ClassChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"ClassWasChosenBy(class, \"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out value))
            {
                condition = $"class.IsType(\"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("SPELLTYPE=", out value))
            {
                condition = $"class.CanCast(\"{value.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(class)";
            else if (value.Value == "PC")
                condition = "character.HasClass(class)";
            else if (value.Value == "SPELLCASTER")
                condition = "class.CanCastSpells";
            else
                condition = $"(stringMatch(class.Name, \"{value.Value}\") or stringMatch(class.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseClass(function (character, class)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }

    class WeaponProficiencyChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"WeaponWasChosenBy(weapon, \"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out value))
            {
                condition = $"weapon.IsType(\"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("WIELD=", out value))
            {
                condition = $"weapon.IsWieldable(\"{value.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY" || value.Value == "EQUIPMENT")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(weapon)";
            else if (value.Value == "PC")
                condition = "character.IsProficientWith(weapon)";
            else if (value.Value == "SPELLCASTER")
                condition = "character.CanCastSpells";
            else if (value.Value == "DEITYWEAPON")
                condition = "character.Deity.Favors(weapon)";
            else
                condition = $"(stringMatch(weapon.Name, \"{value.Value}\") or stringMatch(weapon.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseWeaponProficiency(function (character, weapon)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }

    class AbilitySelectionChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string result;
            if (value.TryRemovePrefix("TYPE=", out var type))
            {
                result = $"ability.IsType(\"{type.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
            {
                result = "true";
            }
            else if (value.Value == "PC")
            {
                result = "character.HasAbility(ability)";
            }
            else if (value.Value == "QUALIFIED")
            {
                result = "character.IsQualifiedFor(ability)";
            }
            else
            {
                result = $"(stringMatch(ability.Name, \"{value.Value}\") or stringMatch(ability.Key, \"{value.Value}\"))";
            }

            if (invert)
            {
                return $"not ({result})";
            }

            return result;
        }

        public override string Process(TextSpan value)
        {
            var (category, rest) = value.SplitTuple('|');

            var condition = base.Process(rest);


            return $@"
ChooseAbilitySelection(function (character, ability)
  if ability.Category ~= ""{category.Value}"" then
    return false
  end
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}
