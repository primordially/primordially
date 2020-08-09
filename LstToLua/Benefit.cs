using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class Benefit : ConditionalObject
    {
        public string? FormatString { get; private set; }
        public List<string> Arguments { get; } = new List<string>();

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
            output.WriteKeyValue("FormatString", FormatString);
            output.WriteListValue("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}