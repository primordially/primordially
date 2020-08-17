namespace Primordially.LstToLua
{
    internal class SubClassLevel : LuaObject
    {
        public string Level { get; }

        public SubClassLevel(string level)
        {
            AddPropertyDefinitions(() => new[]
            {
                CommonProperties.Abilities,
                CommonProperties.Conditions,
            });
            Level = level;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Level", Level);
            base.DumpMembers(output);
        }
    }
}