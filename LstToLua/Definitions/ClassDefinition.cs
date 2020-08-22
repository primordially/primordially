using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Definitions
{
    /// <summary>
    ///   Contains anything that can be on the class line(s)
    /// </summary>
    internal class ClassDefinition : TopLevelLuaObject
    {
        public override string ObjectType => "Class";

        public ClassDefinition(string name)
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.String("EXCLASS", "ExClass"),
                Property.String("SPELLSTAT", "SpellStat"),
                Property.Integer("HD", "HitDie"),
                Property.Integer("MAXLEVEL", "MaxLevel", ("NOLIMIT", -1)),
                Property.Integer("LEVELSPERFEAT", "LevelsPerFeat"),
                Property.Formula("STARTSKILLPTS", "SkillPointsPerLevel"),
                Property.Boolean("VISIBLE", "Visible"),
                Property.Boolean("MEMORIZE", "Memorize"),
                Property.Boolean("ALLOWBASECLASS", "AllowBaseClass"),
                Property.Boolean("SPELLBOOK", "SpellBook"),
                Property.Boolean("MODTOSKILLS", "IntModToSkills"),
                ItemCreationCasterLevel,
                Property.SeparatedList<string>('.', "ROLE", "Roles"),
                Property.SeparatedList<AutomaticKnownSpell>('|', "KNOWNSPELLS", "AutomaticKnownSpells"),
                CommonProperties.ProhibitedSpells,
                CommonProperties.Domains,
                CommonProperties.BonusLanguages,
                WeaponBonusProficiencySelections,
                CommonProperties.SpellsKnown,
                CommonProperties.Types,
                CommonProperties.Definitions,
                CommonProperties.Bonuses,
                CommonProperties.Facts,
                CommonProperties.Conditions,
                CommonProperties.Abilities,
                CommonProperties.Auto,
                CommonProperties.ClassSkills,
                CommonProperties.DisplayName,
                CommonProperties.Template,
                SpellListChoices,
            });
            Name = name;
        }

        public static PropertyDefinition SpellListChoices = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("SPELLLIST:", out value))
            {
                var (count, spells) = value.SplitTuple('|');
                properties["SpellListChoiceCount"] = Helpers.ParseInt(count);
                properties["SpellListChoices"] = spells.Value.Split('|').ToList();
                return true;
            }

            return false;
        };

        public static PropertyDefinition ItemCreationCasterLevel = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("ITEMCREATE:", out value))
            {
                var formula = value.Value;
                if (!formula.Contains("CL"))
                {
                    formula = "CL*" + formula;
                }

                properties["ItemCreationCasterLevel"] = new Formula(formula);
                return true;
            }

            return false;
        };

        public static PropertyDefinition WeaponBonusProficiencySelections = (value, properties, clear) =>
        {
            if (value.TryRemovePrefix("WEAPONBONUS:", out value))
            {
                var list = properties.GetList<List<string>>(nameof(WeaponBonusProficiencySelections));
                list.Add(value.Value.Split('|').ToList());
                return true;
            }

            return false;
        };

        public List<ClassLevel> Levels { get; } = new List<ClassLevel>();
        
        public List<SubClassDefinition> SubClasses { get; } = new List<SubClassDefinition>();
        public SubClassDefinition CurrentSubClass => SubClasses.LastOrDefault();

        public void AddLine(TsvLine line)
        {
            var firstField = line.Fields.First();
            if (firstField.StartsWith("CLASS:"))
            {
                foreach (var field in line.Fields.Skip(1))
                {
                    AddField(field);
                }
            }
            else if (int.TryParse(firstField.Value, out int level))
            {
                AddLevel(level.ToString(), line.Fields.Skip(1));
            }
            else if (firstField.Value.Contains("REPEATLEVEL"))
            {
                var levelStr = ParseRepeatLevel(firstField);
                AddLevel(levelStr, line.Fields.Skip(1));
            }
            else if (firstField.StartsWith("SUBCLASS:"))
            {
                var name = firstField.SplitTuple(':').right;
                SubClasses.Add(new SubClassDefinition(name.Value));
                CurrentSubClass.AddLine(line);
            }
            else if (firstField.StartsWith("SUBCLASSLEVEL:"))
            {
                CurrentSubClass.AddLine(line);
            }
            else
            {
                throw new ParseFailedException(firstField, "Unknown tag.");
            }
        }

        private void AddLevel(string level, IEnumerable<TextSpan> fields)
        {
            var classLevel = new ClassLevel(level);
            foreach (var field in fields)
            {
                classLevel.AddField(field);
            }
            Levels.Add(classLevel);
        }

        private static string ParseRepeatLevel(TextSpan field)
        {
            var parts = field.Split('|').ToArray();
            int? skip = null;
            int? max = null;
            foreach (var part in parts.Skip(1))
            {
                if (part.StartsWith("SKIP="))
                {
                    skip = Helpers.ParseInt(part.Substring("SKIP=".Length));
                }
                else if (part.StartsWith("MAX="))
                {
                    max = Helpers.ParseInt(part.Substring("MAX=".Length));
                }
                else
                {
                    throw new ParseFailedException(field, "Unable to parse REPEATLEVEL spec.");
                }
            }

            var levelSpecParts = parts[0].Split(':').ToArray();
            if (levelSpecParts.Length != 3)
            {
                throw new ParseFailedException(field, "Unable to parse REPEATLEVEL spec.");
            }

            if (levelSpecParts[1].Value != "REPEATLEVEL")
            {
                throw new ParseFailedException(field, "Unable to parse REPEATLEVEL spec.");
            }

            int start = Helpers.ParseInt(levelSpecParts[0]);
            int repeat = Helpers.ParseInt(levelSpecParts[2]);

            var levelStr = $"Start={start},Repeat={repeat}";
            if (skip != null)
            {
                levelStr += $",Skip={skip}";
            }

            if (max != null)
            {
                levelStr += $",Max={max}";
            }

            return levelStr;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteProperty("Levels", Levels);
            output.WriteProperty("SubClasses", SubClasses);
        }
    }
}
