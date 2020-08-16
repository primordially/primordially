namespace Primordially.LstToLua
{
    internal sealed class DamageReduction : LuaObject
    {
        public DamageReduction(TextSpan value)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            foreach (var part in value.Split('|'))
            {
                AddField(part);
            }
        }

        public override void AddField(TextSpan field)
        {
            if (!Properties.ContainsKey("Value"))
            {
                Properties["Value"] = field.Value;
                return;
            }
            base.AddField(field);
        }
    }
}
