namespace Primordially.LstToLua.Definitions
{
    internal class SaveDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Save";

        public SaveDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("SORTKEY", "SortKey"),
                Property.Single<Bonus>("BONUS", "Bonus"),
            });
        }
    }
}
