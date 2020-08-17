namespace Primordially.LstToLua
{
    internal class EquipmentBonus : Bonus
    {
        public EquipmentBonus(TextSpan value) : base(value)
        {
        }

        public override bool IsEquipment => true;
    }
}