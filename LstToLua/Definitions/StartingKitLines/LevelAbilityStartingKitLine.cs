namespace Primordially.LstToLua.Definitions
{
    internal class LevelAbilityStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddLevelAbility";

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("LEVELABILITY:", out field))
            {
                var (n, l) = field.SplitTuple('=');
                Properties["Class"] = n.Value;
                Properties["Level"] = l.Value;
                return;
            }

            if (field.TryRemovePrefix("ABILITY:PROMPT:", out field))
            {
                Properties["Choice"] = field.Value;
                return;
            }
            base.AddField(field);
        }
    }
}