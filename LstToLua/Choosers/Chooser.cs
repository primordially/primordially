using System.Linq;

namespace Primordially.LstToLua.Choosers
{
    internal abstract class Chooser
    {
        public static string Convert(TextSpan value, out int? choiceCount)
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

            var (kind, rest) = value.SplitTuple('|', throwOnError: false);
            switch (kind.Value)
            {
                case "EQBUILDER.SPELL":
                    return new EquipmentSpellChooser().Process(rest);
                case "STATBONUS":
                    return new StatBonusChooser().Process(rest);
                case "USERINPUT":
                    return new UserInputChooser().Process(rest);
                case "STRING":
                    return new StringChooser().Process(rest);
                case "ABILITY":
                    return new AbilityChooser().Process(rest);
                case "ABILITYSELECTION":
                    return new AbilitySelectionChooser().Process(rest);
                case "SKILL":
                    return new SkillChooser().Process(rest);
                case "SKILLBONUS":
                    return new SkillBonusChooser().Process(rest);
                case "LANG":
                    return new LanguageChooser().Process(rest);
                case "SPELLS":
                    return new SpellChooser().Process(rest);
                case "SCHOOLS":
                    return new SchoolChooser().Process(rest);
                case "CLASS":
                    return new ClassChooser().Process(rest);
                case "DOMAIN":
                    return new DomainChooser().Process(rest);
                case "NUMBER":
                    return new NumberChooser().Process(rest);
                case "TEMPLATE":
                    return new TemplateChooser().Process(rest);
                case "WEAPONPROFICIENCY":
                    return new WeaponProficiencyChooser().Process(rest);

            }
            throw new ParseFailedException(value, "Cannot parse CHOOSE");
        }

        public abstract string ProcessCondition(TextSpan value);

        public virtual string ProcessConditions(TextSpan value)
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
}
