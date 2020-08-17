using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class Aspect : LuaObject
    {
        public string? Name { get; private set; }
        public string? FormatString { get; private set; }
        public List<string> Arguments { get; } = new List<string>();

        public Aspect(TextSpan value)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            foreach (var f in value.Split('|'))
            {
                AddField(f);
            }
        }

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
            output.WriteProperty("Name", Name);
            output.WriteProperty("FormatString", FormatString);
            output.WriteProperty("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}
