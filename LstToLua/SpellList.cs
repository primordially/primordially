using System;
using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class SpellList : ConditionalObject
    {
        public SpellList(SpellListKind kind, string name)
        {
            Kind = kind;
            Name = name;
        }

        public SpellListKind Kind { get; }
        public string Name { get; }
        public List<SpellListLevel> Levels { get; } = new List<SpellListLevel>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Kind", Kind.ToString());
            output.WriteKeyValue("Name", Name);
            output.WriteListValue("Levels", Levels);
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
                else if (Condition.TryParse(part, out var condition) && currentList != null)
                {
                    currentList.Conditions.Add(condition);
                }
                else
                {
                    if (!currentLevel.HasValue || currentList == null)
                    {
                        throw new ParseFailedException(part, "Unable to parse SPELLLEVEL");
                    }
                    var spells = part.Split(',').Select(s => s.Value);
                    var level = new SpellListLevel(currentLevel.Value);
                    level.Spells.AddRange(spells);
                    currentList.Levels.Add(level);
                }
            }

            return spellLists.Values.ToList();
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }
    }
}