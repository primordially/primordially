using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.LstToLua.Conditions
{
    internal class LanguageCondition : Condition
    {
        public int Count { get; }
        public bool Any { get; }
        public IReadOnlyList<string> LanguageNames { get; }
        public IReadOnlyList<string> LanguageTypes { get; }

        private LanguageCondition(bool invert, int count, bool any, List<string> languageNames, List<string> languageTypes) : base(invert)
        {
            Count = count;
            Any = any;
            LanguageNames = languageNames;
            LanguageTypes = languageTypes;
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            string matchingLanguageCount;
            if (Any)
            {
                matchingLanguageCount = "#character.Languages";
            }
            else
            {
                matchingLanguageCount = $"#filter(character.Languages, function (lang)\n{string.Join("", LanguageNames.Select(n => $"if lang.Name == \"{n}\" then return true end\n").Concat(LanguageTypes.Select(t => $"if lang.Type == \"{t}\" then return true end\n")))} end)";
            }
            var condition = $"({matchingLanguageCount}) >= {Count}";
            if (Inverted)
            {
                condition = $"not ({condition})";
            }

            output.Write(condition);
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "Invalid PRELANG");
            }

            int count = Helpers.ParseInt(parts[0]);
            bool any = false;
            var languageNames = new List<string>();
            var languageTypes = new List<string>();
            foreach (var part in parts.Skip(1))
            {
                if (part.Value == "ANY")
                {
                    any = true;
                }
                else if (part.Value.StartsWith("TYPE="))
                {
                    languageTypes.Add(part.Substring("TYPE=".Length).Value);
                }
                else
                {
                    languageNames.Add(part.Value);
                }
            }

            return new LanguageCondition(invert, count, any, languageNames, languageTypes);
        }
    }
}