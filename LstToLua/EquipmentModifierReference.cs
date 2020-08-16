using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class EquipmentModifierReference : LuaObject
    {
        private EquipmentModifierReference(TextSpan value)
        {
            bool first = true;
            foreach (var p in value.Split('|'))
            {
                var part = p;
                if (first)
                {
                    Key = part.Value;
                    first = false;
                    continue;
                }

                Parameters.Add(part.Value);
            }

            if (Key == null)
            {
                throw new ParseFailedException(value, "Unable to parse EQMOD:");
            }
        }

        public string Key { get; } = null!;
        public List<Formula> Parameters { get; } = new List<Formula>();

        public static IEnumerable<EquipmentModifierReference> ParseAll(TextSpan value)
        {
            return value.Split('.').Select(s => new EquipmentModifierReference(s));
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty(nameof(Key), Key);
            output.WriteProperty(nameof(Parameters), Parameters);
            base.DumpMembers(output);
        }
    }
}