namespace Primordially.LstToLua.Definitions
{
    internal class TableStartingKitLine : StartingKitLine
    {
        internal class TableValue : LuaObject
        {
            public TableValue(string thing, int min, int max)
            {
                Properties["What"] = thing;
                Properties["Min"] = min;
                Properties["Max"] = max;
            }
        }

        protected override string MethodName => "AddTable";

        public TableStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("TABLE", "Name"),
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("VALUES:", out field))
            {
                string? thing = null;
                foreach (var part in field.Split('|'))
                {
                    if (thing == null)
                    {
                        thing = part.Value;
                        continue;
                    }

                    var (min, max) = part.SplitTuple(',');
                    Properties.GetList<TableValue>("Values")
                        .Add(new TableValue(thing, Helpers.ParseInt(min), Helpers.ParseInt(max)));
                    thing = null;
                }
                return;
            }
            base.AddField(field);
        }
    }
}