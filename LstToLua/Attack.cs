using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class Attack : LuaObject
    {
        public string CriticalHitMultiplier { get; set; } = "x2";
        public string CriticalHitRange { get; set; } = "1";
        public DiceFormula? Damage { get; set; }
        public List<string> Types { get; } = new List<string>();
        public List<EquipmentModifierReference> EquipmentModifiers { get; } = new List<EquipmentModifierReference>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty(nameof(CriticalHitMultiplier), CriticalHitMultiplier);
            output.WriteProperty(nameof(CriticalHitRange), CriticalHitRange);
            output.WriteProperty(nameof(Damage), Damage);
            output.WriteProperty(nameof(Types), Types);
            output.WriteProperty(nameof(EquipmentModifiers), EquipmentModifiers);
            base.DumpMembers(output);
        }
    }
}