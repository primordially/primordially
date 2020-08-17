namespace Primordially.LstToLua.Definitions
{
    internal class WeaponProficiencyDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "WeaponProficiency";

        public WeaponProficiencyDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("KEY", "Key"),
                Property.Formula("HANDS", "Hands"),
                CommonProperties.Types,
            });
        }
    }
}