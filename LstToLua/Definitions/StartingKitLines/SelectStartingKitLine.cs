namespace Primordially.LstToLua.Definitions
{
    internal class SelectStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "Select";

        public SelectStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.Formula("SELECT", "Value"),
            });
        }
    }
}