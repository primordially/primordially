namespace Primordially.LstToLua.Definitions
{
    internal class AbilityStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddAbility";

        public AbilityStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.Integer("COUNT", "Count"),
                Property.Boolean("FREE", "Free"),
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("ABILITY:", out field))
            {
                if (!field.TryRemoveInfix("|", out var cat, out field))
                {
                    throw new ParseFailedException(field, "Unable to parse ABILITY");
                }

                if (!cat.TryRemovePrefix("CATEGORY=", out cat))
                {
                    throw new ParseFailedException(cat, "Unable to parse CATEGORY=");
                }

                Properties["Category"] = cat.Value;
                var list = Properties.GetList<string>("Choices");
                list.AddRange(field.Value.Split('|'));
                return;
            }
            base.AddField(field);
        }
    }
}