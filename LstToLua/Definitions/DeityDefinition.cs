namespace Primordially.LstToLua.Definitions
{
    internal sealed class DeityDomains : LuaObject
    {
        public DeityDomains(TextSpan value)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            foreach (var field in value.Split('|'))
            {
                AddField(field);
            }
        }

        protected override void UnknownField(TextSpan field)
        {
            var list = Properties.GetList<string>("Domains");
            list.AddRange(field.Value.Split(','));
        }
    }
    
    internal class DeityDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Deity";

        public DeityDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("ALIGN", "Alignment"),
                Property.String("GROUP", "Group"),
                CommonProperties.Description,
                CommonProperties.FactSets,
                CommonProperties.Facts,
                Property.Multiple<DeityDomains>("DOMAINS", "Domains"),
                Property.SeparatedList<string>('|', "DEITYWEAP", "FavoredWeapons"),
            });
        }
    }
}