namespace Primordially.LstToLua.Definitions
{
    internal class TemplateDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Template";

        public TemplateDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.String("KEY", "Key"),
                Property.Boolean("VISIBLE", "Visible"),
                Property.Boolean("REMOVABLE", "Removable"),
                Property.Integer("REACH", "Reach"),
                Property.Integer("LEGS", "LegCount"),
                Property.Integer("HANDS", "HandCount"),
                Property.String("SUBRACE", "SubRace"),
                Property.String("RACETYPE", "RaceType"),
                Property.String("RACESUBTYPE", "RaceSubType"),
                CommonProperties.ChallengeRating,
                CommonProperties.Template,
                CommonProperties.Abilities,
                CommonProperties.Bonuses,
                CommonProperties.Kit,
                CommonProperties.Conditions,
                CommonProperties.HitDie,
                CommonProperties.Size,
                CommonProperties.DamageReduction,
                CommonProperties.Description,
                CommonProperties.Definitions,
                CommonProperties.TemporaryBonus,
                CommonProperties.Choose,
                CommonProperties.Types,
                CommonProperties.Movement,
                CommonProperties.Vision,
                CommonProperties.NaturalAttacks,
                CommonProperties.BonusLanguages,
                CommonProperties.SpellLevel,
                CommonProperties.HitDieStuff,
                CommonProperties.Facts,
                CommonProperties.SpellResistance,
                CommonProperties.DefineStat,
                CommonProperties.Add,
                CommonProperties.PreText,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("ADDLEVEL:", out field))
            {
                var (l, n) = field.SplitTuple('|');
                var list = Properties.GetList<AddedLevel>("AddedLevels");
                list.Add(new AddedLevel(l.Value, Helpers.ParseInt(n)));
                return;
            }
            base.AddField(field);
        }
    }
}