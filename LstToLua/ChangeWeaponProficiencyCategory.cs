using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class ChangeWeaponProficiencyCategory : LuaObject
    {
        public Dictionary<string, List<string>> Changes { get; }

        private ChangeWeaponProficiencyCategory(Dictionary<string, List<string>> changes)
        {
            Changes = changes;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            foreach (var (category, weapons) in Changes)
            {
                output.WriteListValue(category, weapons);
            }
            base.DumpMembers(output);
        }

        public static ChangeWeaponProficiencyCategory Parse(TextSpan value)
        {
            var changes = new Dictionary<string, List<string>>();
            foreach (var part in value.Split('|'))
            {
                var (weapons, category) = part.SplitTuple('=');
                changes[category.Value] = weapons.Value.Split(',').ToList();
            }

            return new ChangeWeaponProficiencyCategory(changes);
        }
    }
}