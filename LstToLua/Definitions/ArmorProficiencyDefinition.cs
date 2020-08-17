namespace Primordially.LstToLua.Definitions
{
    internal class ArmorProficiencyDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "ArmorProficiency";

        public ArmorProficiencyDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("KEY", "Key"),
            });
        }
    }
}