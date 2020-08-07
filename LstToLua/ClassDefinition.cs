using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    /// <summary>
    ///   Contains anything that can be on the class line(s)
    /// </summary>
    internal class ClassDefinition : ClassOrSubClass
    {
        public ClassDefinition(string name) : base(name)
        {
        }

        public string? ExClass { get; private set; }
        public int HitDie { get; private set; }
        public int MaxLevel { get; private set; }
        public int SkillPointsPerLevel { get; private set; }
        public bool Visible { get; private set; } = true;
        public bool Memorize { get; private set; } = true;
        public bool AllowBaseClass { get; private set; } = true;
        public bool SpellBook { get; private set; } = false;
        public string? ItemCreationCasterLevel { get; private set; }
        public List<string> Roles { get; } = new List<string>();
        public List<string> Types { get; } = new List<string>();
        public List<(string key, string value)> Facts { get; } = new List<(string key, string value)>();
        public List<BonusLanguage> BonusLanguages { get; } = new List<BonusLanguage>();
        public List<KnownSpell> AutomaticKnownSpells { get; } = new List<KnownSpell>();
        public List<AutomaticLanguage> AutomaticLanguages { get; } = new List<AutomaticLanguage>();

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

        public override void AddField(TextSpan field)
        {
            var (k, v) = field.SplitTuple(':');
            var value = v.Value;

            if (AutomaticLanguage.TryParse(field, out var automaticLanguage))
            {
                AutomaticLanguages.Add(automaticLanguage);
                return;
            }

            switch (k.Value)
            {
                case "EXCLASS":
                    ExClass = value;
                    return;
                case "HD":
                    HitDie = Helpers.ParseInt(v);
                    return;
                case "STARTSKILLPTS":
                    SkillPointsPerLevel = Helpers.ParseInt(v);
                    return;
                case "TYPE":
                    Types.AddRange(value.Split('.'));
                    return;
                case "ROLE":
                    Roles.AddRange(value.Split('.'));
                    return;
                case "MAXLEVEL":
                    MaxLevel = Helpers.ParseInt(v);
                    return;
                case "VISIBLE":
                    Visible = value != "NO";
                    return;
                case "MEMORIZE":
                    Memorize = value != "NO";
                    return;
                case "ALLOWBASECLASS":
                    AllowBaseClass = v.Value != "NO";
                    return;
                case "SPELLBOOK":
                    SpellBook = v.Value != "NO";
                    return;
                case "ITEMCREATE":
                    var formula = value;
                    if (!formula.Contains("CL"))
                    {
                        formula = "CL*" + formula;
                    }

                    ItemCreationCasterLevel = formula;
                    return;
                case "KNOWNSPELLS":
                {
                    var parts = v.Split('|').ToArray();
                    foreach (var part in parts)
                    {
                        AutomaticKnownSpells.Add(KnownSpell.Parse(part));
                    }

                    return;
                }
                case "LANGBONUS":
                {
                    var parts = v.Split(',').ToArray();
                    foreach (var part in parts)
                    {
                        BonusLanguages.Add(BonusLanguage.Parse(part));
                    }

                    return;
                }
                case "FACT":
                {
                    var parts = v.Split('|').ToArray();
                    if (parts.Length != 2)
                    {
                        throw new ParseFailedException(field, "Unable to parse fact.");
                    }

                    Facts.Add((parts[0].Value, parts[1].Value));
                    return;
                }
            }

            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineClass(");
            base.Dump(output);
            output.Write(")\n");
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteKeyValue("HitDie", HitDie);
            output.WriteKeyValue("MaxLevel", MaxLevel);
            output.WriteKeyValue("SkillPointsPerLevel", SkillPointsPerLevel);
            if (ExClass != null)
            {
                output.WriteKeyValue("ExClass", ExClass);
            }
            if (ItemCreationCasterLevel != null)
            {
                output.WriteKeyValue("ItemCreationCasterLevel", ItemCreationCasterLevel);
            }
            if (Visible == false)
            {
                output.WriteKeyValue("Visible", Visible);
            }
            if (Memorize == false)
            {
                output.WriteKeyValue("Memorize", Memorize);
            }
            if (AllowBaseClass == false)
            {
                output.WriteKeyValue("AllowBaseClass", AllowBaseClass);
            }
            if (SpellBook)
            {
                output.WriteKeyValue("Spellbook", SpellBook);
            }
            output.WriteList("BonusLanguages", BonusLanguages);
            output.WriteList("Roles", Roles);
            output.WriteList("Types", Types);
            output.WriteObjectValue("Facts", () =>
            {
                foreach (var (k, v) in Facts)
                {
                    output.WriteKeyValue(k, v);
                }
            });
            output.WriteList("AutomaticLanguages", AutomaticLanguages);

            output.WriteList("AutomaticKnownSpells", AutomaticKnownSpells);

            output.WriteList("Levels", Levels);
            output.WriteList("SubClasses", SubClasses);
        }
    }
}