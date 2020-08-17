namespace Primordially.LstToLua.Definitions
{
    internal class AbilityCategoryDefinition : TopLevelLuaObject
    {
        public override string ObjectType => "AbilityCategory";

        public AbilityCategoryDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("ABILITYCATEGORY", "Name"),
                Property.String("CATEGORY", "Category"),
                Property.String("PLURAL", "Plural"),
                Property.String("DISPLAYLOCATION", "DisplayLocation"),
                Property.Boolean("VISIBLE", "Visible"),
                Property.Boolean("EDITABLE", "Editable"),
                Property.Boolean("EDITPOOL", "EditPool"),
                Property.Boolean("FRACTIONALPOOL", "FractionalPool"),
                Property.String("POOL", "Pool"),
                Property.String("ABILITYLIST", "AbilityList"),
                Property.SeparatedList<string>('.', "TYPE", "Types"),
            });
        }
    }
}
