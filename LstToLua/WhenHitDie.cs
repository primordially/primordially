namespace Primordially.LstToLua
{
    internal class WhenHitDie : LuaObject
    {
        public WhenHitDie(string when)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.DamageReduction,
                CommonProperties.SpellResistance,
                CommonProperties.Template,
                CommonProperties.ChallengeRating,
                Property.String("SA", "SpecialAbility"),
                Property.String("FEAT", "Feat"),
            });
            Properties["WhenHitDieIs"] = new Formula(when);
        }
    }
}