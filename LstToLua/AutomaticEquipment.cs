using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class AutomaticEquipment : LuaObject
    {
        public List<string> Names => Properties.GetList<string>("Names");

        public AutomaticEquipment(TextSpan value)
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
            Names.Add(field.Value);
        }
    }
}
