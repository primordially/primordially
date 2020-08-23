namespace Primordially.LstToLua.Definitions
{
    internal class AgeStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "SetAge";

        public AgeStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.Integer("AGE", "Age"),
            });
        }
    }
}