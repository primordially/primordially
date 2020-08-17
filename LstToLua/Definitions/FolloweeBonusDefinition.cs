namespace Primordially.LstToLua.Definitions
{
    internal class FolloweeBonusDefinition : TopLevelLuaObject
    {
        public override string ObjectType => "FolloweeBonus";

        public FolloweeBonusDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Types,
                CommonProperties.Bonuses,
                CommonProperties.Abilities,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("MASTERBONUSRACE:", out field))
            {
                Properties["FollowerRace"] = field.Value;
                return;
            }

            base.AddField(field);
        }
    }
}