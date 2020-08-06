using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AutomaticLanguage : ConditionalObject
    {
        public string? Name { get; }
        public string? Type { get; }
        public bool Invert { get; }
        public bool All { get; }
        public AutomaticLanguage(IList<Condition> conditions, string? name, string? type, bool invert, bool all) : base(conditions)
        {
            Name = name;
            Type = type;
            Invert = invert;
            All = all;
        }

        public static bool TryParse(TextSpan field, [NotNullWhen(true)] out AutomaticLanguage? result)
        {
            if (!field.StartsWith("AUTO:LANG|"))
            {
                result = null;
                return false;
            }

            var value = field.Substring("AUTO:LANG|".Length);
            var parts = value.Split('|').ToArray();
            Helpers.CheckForMODorCOPYorCLEAR(parts[0]);

            var firstPart = parts[0];
            string? name = null;
            string? type = null;
            bool invert = false;
            bool all = false;

            if (firstPart.StartsWith("TYPE="))
            {
                type = firstPart.Substring("TYPE=".Length).Value;
            }
            else if (firstPart.StartsWith("!TYPE="))
            {
                type = firstPart.Substring("!TYPE=".Length).Value;
                invert = true;
            }
            else if (firstPart.Value == "ALL")
            {
                all = true;
            }
            else
            {
                name = firstPart.Value;
            }

            var conditions = new List<Condition>();
            foreach (var part in parts.Skip(1))
            {
                if (!Condition.TryParse(part, out Condition? condition))
                {
                    throw new ParseFailedException(part, "Unable to parse Condition.");
                }
                conditions.Add(condition);
            }

            result = new AutomaticLanguage(conditions, name, type, invert, all);
            return true;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Name != null)
            {
                output.WriteKeyValue("Name", Name);
            }
            else if (Type != null)
            {
                output.WriteKeyValue("Type", Type);
                if (Invert)
                {
                    output.WriteKeyValue("Invert", Invert);
                }
            }
            else if (All)
            {
                output.WriteKeyValue("All", All);
            }
            base.DumpMembers(output);
        }
    }
}