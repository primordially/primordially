using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class ChangeWeaponProficiencyCategory : LuaObject
    {
        public Dictionary<string, List<string>> Changes { get; } = new Dictionary<string, List<string>>();

        public ChangeWeaponProficiencyCategory(TextSpan value)
        {
            foreach (var part in value.Split('|'))
            {
                var (weapons, category) = part.SplitTuple('=');
                Changes[category.Value] = weapons.Value.Split(',').ToList();
            }
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            foreach (var (category, weapons) in Changes)
            {
                output.WriteProperty(category, weapons);
            }
            base.DumpMembers(output);
        }
    }
}