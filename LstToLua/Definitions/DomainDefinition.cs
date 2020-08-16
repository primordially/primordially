namespace Primordially.LstToLua.Definitions
{
    internal class DomainDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Domain";

        public DomainDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
                CommonProperties.SpellLevel,
                CommonProperties.Description,
                CommonProperties.ClassSkills,
                CommonProperties.Definitions,
                CommonProperties.Abilities,
                CommonProperties.Bonuses,
            });
        }
    }
}
