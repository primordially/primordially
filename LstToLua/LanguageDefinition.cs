using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class LanguageDefinition : ConditionalObject
    {
        public string? Name { get; private set; }
        public List<string> Types { get; } = new List<string>();

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                Helpers.CheckForMODorCOPYorCLEAR(field);
                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("TYPE:", out var types))
            {
                Types.AddRange(types.Value.Split('.'));
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Name), Name);
            output.WriteListValue(nameof(Types), Types);
            base.DumpMembers(output);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineLanguage(");
            base.Dump(output);
            output.Write(")");
        }
    }
}