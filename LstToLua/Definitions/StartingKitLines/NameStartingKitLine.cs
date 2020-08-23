namespace Primordially.LstToLua.Definitions
{
    internal class NameStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "SetName";

        public NameStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("NAME", "Name"),
            });
        }
    }
}