namespace Primordially.LstToLua.Definitions
{
    internal class DeityStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "SetDeity";

        public DeityStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("DEITY", "Deity"),
            });
        }
    }
}