namespace Primordially.LstToLua
{
    internal class BonusLanguage : LuaObject
    {
        public BonusLanguage(bool all, string? name, string? type)
        {
            All = all;
            Name = name;
            Type = type;
        }

        public bool All { get; }
        public string? Name { get; }
        public string? Type { get; }

        public static BonusLanguage Parse(TextSpan part)
        {
            if (part.Value == "ALL")
            {
                return new BonusLanguage(true, null, null);
            }

            if (part.StartsWith("TYPE="))
            {
                return new BonusLanguage(false, null, part.Substring("TYPE=".Length).Value);
            }

            return new BonusLanguage(false, part.Value, null);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            if (All)
            {
                output.WriteKeyValue("All", true);
            }
            else if (string.IsNullOrEmpty(Type))
            {
                output.WriteKeyValue("Name", Name);
            }
            else
            {
                output.WriteKeyValue("Type", Type);
            }
        }
    }
}