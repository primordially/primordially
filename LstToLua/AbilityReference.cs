using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class AbilityReference : LuaObject
    {
        public string? Category { get; private set; }
        public string? Nature { get; private set; }
        public List<string> Names { get; } = new List<string>();
        public List<string> Types { get; } = new List<string>();

        public AbilityReference(TextSpan value)
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
            if (Category == null)
            {
                Category = field.Value;
                return;
            }

            if (Nature == null)
            {
                Nature = field.Value;
                return;
            }

            if (!field.StartsWith("PRE") && !field.StartsWith("!PRE"))
            {
                if (field.TryRemovePrefix("TYPE=", out field))
                {
                    Types.Add(field.Value);
                    return;
                }

                Names.Add(field.Value);
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Category", Category);
            output.WriteProperty("Nature", Nature);
            output.WriteProperty("Names", Names);
            output.WriteProperty("Types", Types);
            base.DumpMembers(output);
        }
    }
}
