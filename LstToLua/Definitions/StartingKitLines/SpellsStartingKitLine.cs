namespace Primordially.LstToLua.Definitions
{
    internal class SpellsStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddSpells";

        public SpellsStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.Integer("COUNT", "Count"),
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("SPELLS:LEVEL=", out field))
            {
                Properties["Level"] = Helpers.ParseInt(field);
                return;
            }
            if (field.TryRemovePrefix("SPELLS:", out field))
            {
                Properties.GetList<string>("Spells").AddRange(field.Value.Split('|'));
            }
            base.AddField(field);
        }
    }
}