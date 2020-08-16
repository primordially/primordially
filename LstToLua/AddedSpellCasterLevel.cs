using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class AddedSpellCasterLevel : LuaObject
    {
        public AddedSpellCasterLevel(bool any, string? casterType, List<string>? classNames)
        {
            Any = any;
            CasterType = casterType;
            ClassNames = classNames;
        }

        public bool Any { get; }
        public string? CasterType { get; }
        public List<string>? ClassNames { get; }
        public static AddedSpellCasterLevel Parse(TextSpan field)
        {
            bool any = false;
            string? type = null;
            List<string>? names = null;
            switch (field.Value)
            {
                case "ANY":
                    any = true;
                    break;
                case "Divine":
                case "Arcane":
                    type = field.Value;
                    break;
                default:
                    names = field.Split(',').Select(s => s.Value).ToList();
                    break;
            }
            return new AddedSpellCasterLevel(any, type, names);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Any)
            {
                output.WriteProperty("Any", Any);
            }
            if (CasterType != null)
            {
                output.WriteProperty("Type", CasterType);
            }
            if (ClassNames != null)
            {
                output.WriteProperty("ClassNames", ClassNames);
            }
            base.DumpMembers(output);
        }
    }
}