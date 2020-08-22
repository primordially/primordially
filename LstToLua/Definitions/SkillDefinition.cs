namespace Primordially.LstToLua.Definitions
{
    internal class SkillDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Skill";

        public SkillDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.String("KEY", "Key"),
                Property.String("SORTKEY", "SortKey"),
                Property.String("KEYSTAT", "KeyStat"),
                Property.SeparatedList<string>('.', "TYPE", "Types"),
                Property.Parsed("ACHECK", "ArmorCheckPenalty", value => value.Value switch
                {
                    "NO" => SkillArmorCheckPenalty.No,
                    "YES" => SkillArmorCheckPenalty.Yes,
                    "PROFICIENT" => SkillArmorCheckPenalty.IfNotProficient,
                    "DOUBLE" => SkillArmorCheckPenalty.Double,
                    "WEIGHT" => SkillArmorCheckPenalty.WeightPenaltyApplies,
                    _ => throw new ParseFailedException(value, "Cannot parse ACHECK"),
                }),
                Property.SeparatedList<string>('|', "CLASSES", "IsClassSkillFor"),
                Property.SeparatedList<string>('|', "SITUATION", "Situations"),
                Property.Boolean("USEUNTRAINED", "UseUntrained"),
                Property.Boolean("VISIBLE", "Visible"),
                CommonProperties.Choose,
                CommonProperties.Auto,
                CommonProperties.Bonuses,
                CommonProperties.Conditions,
                CommonProperties.TemporaryBonus,
                CommonProperties.Definitions,
            });
        }
    }
}
