using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class Benefit : LuaObject
    {
        public string? FormatString { get; private set; }
        public List<string> Arguments { get; } = new List<string>();

        public Benefit(TextSpan value)
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

        public override void AddField(TextSpan field)
        {
            if (FormatString == null)
            {
                FormatString = field.Value;
                return;
            }
            if (!field.Value.Contains(':'))
            {
                Arguments.Add(field.Value);
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("FormatString", FormatString);
            output.WriteProperty("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}
