namespace PCSharpGen.LstToLua.Conditions
{
    internal class TotalAttackBonusCondition : Condition
    {
        public int RequiredBonus { get; }

        public TotalAttackBonusCondition(bool inverted, int requiredBonus) : base(inverted)
        {
            RequiredBonus = requiredBonus;
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            return new TotalAttackBonusCondition(invert, Helpers.ParseInt(value));
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var condition = $"character.TotalAttackBonus >= {RequiredBonus}";
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }
    }
}