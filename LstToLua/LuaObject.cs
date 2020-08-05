namespace PCSharpGen.LstToLua
{
    internal class LuaObject : IDumpable
    {
        public string? SourcePage { get; protected set; }

        public virtual void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            DumpMembers(output);
            output.WriteEndObject();
        }

        protected virtual void DumpMembers(LuaTextWriter output)
        {
            if (!string.IsNullOrEmpty(SourcePage))
            {
                output.WriteKeyValue("SourcePage", SourcePage);
            }
        }
    }
}