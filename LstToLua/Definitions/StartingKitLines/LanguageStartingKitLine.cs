namespace Primordially.LstToLua.Definitions
{
    internal class LanguageStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddLanguage";

        public LanguageStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.SeparatedList<string>('|', "LANGBONUS", "Choices"),
            });
        }
    }
}