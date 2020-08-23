namespace Primordially.LstToLua.Definitions
{
    internal class ProficiencyStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddProficiency";

        public ProficiencyStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.SeparatedList<string>('|', "PROF", "Weapons"),
                Property.Integer("COUNT", "Count"),
                Property.Boolean("RACIAL", "Racial"),
            });
        }
    }
}