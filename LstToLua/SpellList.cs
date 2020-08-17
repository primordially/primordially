using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class SpellList : LuaObject
    {
        public SpellList(SpellListKind kind, string name)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            Kind = kind;
            Name = name;
        }

        public SpellListKind Kind { get; }
        public string Name { get; }
        public List<SpellListLevel> Levels { get; } = new List<SpellListLevel>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Kind", Kind.ToString());
            output.WriteProperty("Name", Name);
            output.WriteProperty("Levels", Levels);
            base.DumpMembers(output);
        }

        public static List<SpellList> Parse(TextSpan textSpan)
        {
            var parts = textSpan.Split('|').ToArray();
            var kind = parts[0].Value switch
            {
                "DOMAIN" => SpellListKind.Domain,
                "CLASS" => SpellListKind.Class,
                _ => throw new ParseFailedException(parts[0], "Unable to parse SPELLLEVEL or SPELLKNOWN"),
            };
            var spellLists = new Dictionary<string, SpellList>();
            SpellList? currentList = null;
            int? currentLevel = null;
            foreach (var part in parts.Skip(1))
            {
                if (part.Value.Contains("="))
                {
                    var (nameSpan, levelStr) = part.SplitTuple('=');
                    var name = nameSpan.Value;
                    currentList = spellLists.GetOrAdd(name, () => new SpellList(kind, name));
                    currentLevel = Helpers.ParseInt(levelStr);
                }
                else if (part.StartsWith("PRE") && currentList != null)
                {
                    currentList.AddField(part);
                }
                else
                {
                    if (!currentLevel.HasValue || currentList == null)
                    {
                        throw new ParseFailedException(part, "Unable to parse SPELLLEVEL or SPELLKNOWN");
                    }
                    var spells = part.Split(',').Select(s => s.Value);
                    var level = new SpellListLevel(currentLevel.Value);
                    level.Spells.AddRange(spells);
                    currentList.Levels.Add(level);
                }
            }

            return spellLists.Values.ToList();
        }
    }
}
