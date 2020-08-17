namespace Primordially.LstToLua.Definitions
{
    internal class TemplateDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Template";

        public TemplateDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.Boolean("VISIBLE", "Visible"),
                Property.Integer("REACH", "Reach"),
                Property.Integer("LEGS", "LegCount"),
                Property.Integer("HANDS", "HandCount"),
                CommonProperties.Template,
                CommonProperties.Abilities,
                CommonProperties.Bonuses,
                CommonProperties.Kit,
                CommonProperties.Conditions,
                CommonProperties.HitDie,
                CommonProperties.Size,
                CommonProperties.DamageReduction,
                CommonProperties.Description,
                CommonProperties.Definitions,
                CommonProperties.TemporaryBonus,
                CommonProperties.Choose,
                CommonProperties.Types,
                CommonProperties.Movement,
                CommonProperties.Vision,
                CommonProperties.NaturalAttacks,
                CommonProperties.BonusLanguages,
            });
        }
    }
}