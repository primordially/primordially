namespace Primordially.LstToLua.Definitions
{
    internal class AlignmentDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Alignment";

        public AlignmentDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("KEY", "Key"),
                Property.String("SORTKEY", "SortKey"),
                Property.String("ABB", "Abbreviation"),
                Property.Boolean("VALIDFORDEITY", "ValidForDeity"),
                Property.Boolean("VALIDFORFOLLOWER", "ValidForFollower"),
            });
        }
    }
}
