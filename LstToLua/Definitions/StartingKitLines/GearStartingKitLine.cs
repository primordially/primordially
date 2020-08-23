namespace Primordially.LstToLua.Definitions
{
    internal class GearStartingKitLine : StartingKitLine
    {
        internal class EqMod : LuaObject
        {
            public EqMod(TextSpan value)
            {
                foreach (var part in value.Split('|'))
                {
                    if (!Properties.ContainsKey("Name"))
                    {
                        Properties["Name"] = part.Value;
                        continue;
                    }

                    Properties.GetList<string>("Parameters").Add(part.Value);
                }
            }
        }

        internal class GearLookup : LuaObject
        {
            public GearLookup(TextSpan value)
            {
                var (table, formula) = value.SplitTuple(',');
                Properties["TableName"] = table.Value;
                Properties["Value"] = new Formula(formula);
            }
        }

        protected override string MethodName => "AddGear";

        public GearStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("GEAR", "ItemName"),
                Property.SeparatedList<EqMod>('.', "EQMOD", "Modifiers"),
                Property.Formula("QTY", "Quantity"),
                Property.String("LOCATION", "EquipLocation"),
                Property.String("SIZE", "Size"),
                Property.Multiple<GearLookup>("LOOKUP", "Lookups"),
                Property.Integer("MAXCOST", "MaximumCost"),
            });
        }
    }
}