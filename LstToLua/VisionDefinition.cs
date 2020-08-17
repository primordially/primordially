namespace Primordially.LstToLua
{
    internal sealed class VisionDefinition : LuaObject
    {
        public VisionDefinition(TextSpan value)
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

        protected override void UnknownField(TextSpan field)
        {
            var list = Properties.GetList<string>("Kind");
            list.Add(field.Value);
        }
    }
}
