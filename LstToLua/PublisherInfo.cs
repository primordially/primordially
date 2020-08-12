namespace Primordially.LstToLua
{
    internal class PublisherInfo : LuaObject
    {
        public string? NameShort { get; set; }
        public string? NameLong { get; set; }
        public string? Url { get; set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("NameShort", NameShort);
            output.WriteKeyValue("NameLong", NameLong);
            output.WriteKeyValue("Url", Url);
            base.DumpMembers(output);
        }
    }
}