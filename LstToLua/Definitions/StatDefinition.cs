using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Definitions
{
    internal class StatDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Stat";

        public StatDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.String("SORTKEY", "SortKey"),
                Property.String("ABB", "Abbreviation"),
                Property.String("KEY", "Key"),
                Property.Formula("STATMOD", "StatMod"),
                CommonProperties.Bonuses,
                CommonProperties.Definitions,
                CommonProperties.Abilities,
            });
        }

        public List<(string target, string action, Formula value)> Modifications { get; } = new List<(string target, string action, Formula value)>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            var definitions = Properties.GetList<ObjectVariableDefinition>("Definitions");
            definitions = definitions.Where(d => !d.IsUseless).ToList();
            Properties["Definitions"] = definitions;


            base.DumpMembers(output);
            output.WriteObjectValue("Modifications", () =>
            {
                foreach (var (target, action, value) in Modifications)
                {
                    output.WriteStartObject();
                    output.WriteProperty("Target", target);
                    output.WriteProperty("Action", action);
                    output.WriteProperty("Value", value);
                    output.WriteEndObject();
                    output.Write(",\n");
                }
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("MODIFY:", out var mod))
            {
                var parts = mod.Split('|').ToArray();
                if (parts.Length != 3)
                {
                    throw new ParseFailedException(field, "Cannot parse MODIFY");
                }

                Modifications.Add((parts[0].Value, parts[1].Value, new Formula(parts[2].Value)));
                return;
            }

            base.AddField(field);
        }
    }
}
