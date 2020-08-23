namespace Primordially.LstToLua.Definitions
{
    internal class ClassLevelStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddClassLevel";

        public ClassLevelStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("CLASS", "ClassName"),
                Property.Formula("LEVEL", "Level"),
            });
        }
    }
}