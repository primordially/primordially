using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class FormattedString : LuaObject
    {
        public string Format { get; }
        public List<Formula> Arguments { get; }

        public FormattedString(TextSpan value)
        {
            Format = null!;
            Arguments = new List<Formula>();
            foreach (var part in value.Split('|'))
            {
                if (Format == null)
                {
                    Format = part.Value;
                }
                else
                {
                    Arguments.Add(part.Value);
                }
            }
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Format", Format);
            output.WriteProperty("Arguments", Arguments);
            base.DumpMembers(output);
        }
    }
}