namespace Primordially.LstToLua.Definitions
{
    internal class TemplateStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddTemplate";

        public TemplateStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.SeparatedList<string>('|', "TEMPLATE", "Template"),
            });
        }
    }
}