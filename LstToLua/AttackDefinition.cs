using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class AttackDefinition : LuaObject
    {
        public string CritMultiplier { get; set; } = "x2";
        public string CritRange { get; set; } = "1";
        public DiceFormula? Damage { get; set; }
        public List<string> Types { get; } = new List<string>();
        public List<EquipmentModifierReference> EquipmentModifiers { get; } = new List<EquipmentModifierReference>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(CritMultiplier), CritMultiplier);
            output.WriteKeyValue(nameof(CritRange), CritRange);
            output.WriteKeyValue(nameof(Damage), Damage);
            output.WriteListValue(nameof(Types), Types);
            output.WriteListValue(nameof(EquipmentModifiers), EquipmentModifiers);
            base.DumpMembers(output);
        }
    }
}