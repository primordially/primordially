using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class TemplateCondition : BooleanMultiCondition
    {
        public TemplateCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            int count = Helpers.ParseInt(parts.First());
            var conditions = new List<string>();
            foreach (var part in parts.Skip(1))
            {
                conditions.Add($"any(character.Templates, function (template) return stringMatch(template.Name, \"{part.Value}\") end)");
            }
            return new TemplateCondition(invert, count, conditions);
        }
    }
}