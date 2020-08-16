namespace Primordially.LstToLua
{
    internal class PublisherInfo : LuaObject
    {
        public string? NameShort { get; set; }
        public string? NameLong { get; set; }
        public string? Url { get; set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("NameShort", NameShort);
            output.WriteProperty("NameLong", NameLong);
            output.WriteProperty("Url", Url);
            base.DumpMembers(output);
        }
    }
}