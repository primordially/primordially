namespace Primordially.LstToLua.Definitions
{
    internal class DomainStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddDomain";

        public DomainStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.SeparatedList<string>('|', "DOMAIN", "Domains"),
                Property.Integer("COUNT", "Count"),
            });
        }
    }
}