namespace Primordially.LstToLua
{
    internal class SubClassLevel : ClassOrClassLevel
    {
        public string Level { get; }

        public SubClassLevel(string level)
        {
            Level = level;
        }

        public override void AddField(TextSpan field)
        {
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Level", Level);
            base.DumpMembers(output);
        }
    }
}