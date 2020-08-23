namespace Primordially.LstToLua.Definitions
{
    internal class GenderStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "SetGender";

        public GenderStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("GENDER", "Gender"),
            });
        }
    }
}