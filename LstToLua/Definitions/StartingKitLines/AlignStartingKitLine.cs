namespace Primordially.LstToLua.Definitions
{
    internal class AlignStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "SetAlignment";

        public AlignStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("ALIGN", "Alignment"),
            });
        }
    }
}