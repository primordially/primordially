namespace Primordially.LstToLua.Definitions
{
    internal class SkillStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddSkill";

        public SkillStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.SeparatedList<string>('|', "SKILL", "Skills"),
                Property.SeparatedList<string>(',', "SELECTION", "Selections"),
                Property.Integer("RANK", "Ranks"),
                Property.Integer("COUNT", "Count"),
                Property.Boolean("FREE", "Free"),
            });
        }
    }
}