namespace Primordially.LstToLua.Definitions
{
    internal class StatStartingKitLine : StartingKitLine
    {
        internal class StatValue : LuaObject
        {
            public StatValue(TextSpan value)
            {
                var (s, v) = value.SplitTuple('=');
                Properties["Stat"] = s.Value;
                Properties["Value"] = new Formula(v);
            }
        }

        protected override string MethodName => "SetStats";

        public StatStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.SeparatedList<StatValue>('|', "STAT", "Stats"),
            });
        }
    }
}