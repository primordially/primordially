using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AutomaticLanguage : ConditionalObject
    {
        public bool Clear { get; }
        public List<string> Selectors{ get; }
        public AutomaticLanguage(List<string> selectors, bool clear)
        {
            Selectors = selectors;
            Clear = clear;
        }

        public static bool TryParse(TextSpan field, [NotNullWhen(true)] out AutomaticLanguage? result)
        {
            if (!field.TryRemovePrefix("AUTO:LANG|", out var value))
            {
                result = null;
                return false;
            }

            var selectors = new List<string>();
            var conditions = new List<Condition>();
            var clear = false;

            foreach (var part in value.Split('|'))
            {
                if (part.TryRemovePrefix("TYPE=", out var type) ||
                    part.TryRemovePrefix("!TYPE=", out type))
                {
                    var selector = $"language.IsType(\"{type.Value}\")";
                    if (part.StartsWith("!"))
                    {
                        selector = "not " + selector;
                    }
                    selectors.Add(selector);
                }
                else if (part.Value == "ALL")
                {
                    selectors.Add("true");
                }
                else if (part.Value == ".CLEAR")
                {
                    clear = true;
                    selectors.Clear();
                }
                else if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                }
                else
                {
                    selectors.Add($"stringMatch(language.Name, \"{part.Value}\")");
                }
            }

            result = new AutomaticLanguage(selectors, clear);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return true;
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Clear)
            {
                output.WriteKeyValue("Clear", true);
            }
            output.Write("Selector=");
            output.WriteStartFunction("language");
            output.Write($"return {string.Join(" or ", Selectors)}\n");
            output.WriteEndFunction();
            output.Write(",\n");
            base.DumpMembers(output);
        }
    }
}
