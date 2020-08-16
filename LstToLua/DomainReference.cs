using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class DomainReference : LuaObject
    {
        public List<string> Names { get; } = new List<string>();

        public DomainReference(TextSpan value)
        {
            AddPropertyDefinitions(() => new[]
            {
                CommonProperties.Conditions,
            });
            foreach (var part in value.Split('|'))
            {
                AddField(part);
            }
        }

        protected override void UnknownField(TextSpan field)
        {
            Names.Add(field.Value);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty(nameof(Names), Names);
            base.DumpMembers(output);
        }
    }
}
