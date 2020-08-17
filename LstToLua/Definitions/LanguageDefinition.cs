namespace Primordially.LstToLua.Definitions
{
    internal class LanguageDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Language";

        public LanguageDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.SeparatedList<string>('.', "TYPE", "Types"),
                CommonProperties.Conditions,
            });
        }
    }
}
