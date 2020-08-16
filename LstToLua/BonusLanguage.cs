namespace Primordially.LstToLua
{
    internal class BonusLanguage : LuaObject
    {
        public BonusLanguage(TextSpan value)
        {
            if (value.Value == "ALL")
            {
                All = true;
            }
            else if (value.TryRemovePrefix("TYPE=", out value))
            {
                Type = value.Value;
            }
            else
            {
                Name = value.Value;
            }
        }

        public bool All { get; }
        public string? Name { get; }
        public string? Type { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            if (All)
            {
                output.WriteProperty("All", true);
            }
            else if (string.IsNullOrEmpty(Type))
            {
                output.WriteProperty("Name", Name);
            }
            else
            {
                output.WriteProperty("Type", Type);
            }
        }
    }
}