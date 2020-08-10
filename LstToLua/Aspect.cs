using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class Aspect : ConditionalObject
    {
        public string? Name { get; private set; }
        public string? FormatString { get; private set; }
        public List<string> Arguments { get; } = new List<string>();

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                Name = field.Value;
                return;
            }
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
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("FormatString", FormatString);
            output.WriteListValue("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}