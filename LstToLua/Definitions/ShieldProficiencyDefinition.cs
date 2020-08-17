namespace Primordially.LstToLua.Definitions
{
    internal class ShieldProficiencyDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "ShieldProficiency";

        public ShieldProficiencyDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("KEY", "Key"),
            });
        }
    }
}