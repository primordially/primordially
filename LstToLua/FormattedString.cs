using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal sealed class FormattedString : LuaObject
    {
        public string? Format { get; private set; }
        public List<Formula> Arguments { get; } = new List<Formula>();

        public FormattedString(TextSpan value)
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
            if (Format == null)
            {
                Format = field.Value;
                return;
            }

            Arguments.Add(field.Value);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Format", Format);
            output.WriteProperty("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}