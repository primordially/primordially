namespace Primordially.LstToLua
{
    internal class Choice : LuaObject
    {
        public string? Choose { get; set; }
        public int? MaxTimes { get; set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKey("Choose");
            output.Write("=");
            output.Write(Choose);
            output.Write(",\n");
            if (MaxTimes.HasValue)
                output.WriteProperty("MaxTimes", MaxTimes.Value);
            base.DumpMembers(output);
        }
    }
}