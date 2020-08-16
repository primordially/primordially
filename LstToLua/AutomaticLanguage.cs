using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal sealed class AutomaticLanguage : LuaObject
    {
        public List<string> Selectors { get; } = new List<string>();
        public AutomaticLanguage(TextSpan value)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            foreach (var part in value.Split('|'))
            {
                AddField(part);
            }
        }

        public override void AddField(TextSpan field)
        {
            if (!field.StartsWith("PRE"))
            {
                if (field.TryRemovePrefix("TYPE=", out var type) ||
                    field.TryRemovePrefix("!TYPE=", out type))
                {
                    var types = type.Value.Split('.');
                    var selector = string.Join(" or ", types.Select(t => $"language.IsType(\"{t}\")"));
                    if (field.StartsWith("!"))
                    {
                        selector = $"not ({selector})";
                    }
                    Selectors.Add(selector);
                }
                else if (field.Value == "ALL")
                {
                    Selectors.Add("true");
                }
                else
                {
                    Selectors.Add($"stringMatch(language.Name, \"{field.Value}\")");
                }

                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.Write("Selector=");
            output.WriteStartFunction("language");
            output.Write($"return {string.Join(" or ", Selectors)}\n");
            output.WriteEndFunction();
            output.Write(",\n");
            base.DumpMembers(output);
        }
    }
}
