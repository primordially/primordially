namespace PCSharpGen.LstToLua
{
    internal class KnownSpell : LuaObject
    {
        public KnownSpell(int? level, string? name, string? type)
        {
            Level = level;
            Name = name;
            Type = type;
        }

        public int? Level { get; }
        public string? Name { get; }
        public string? Type { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Level != null)
            {
                output.WriteKeyValue("Level", Level.Value);
            }
            if (Name != null)
            {
                output.WriteKeyValue("Name", Name);
            }
            if (Type != null)
            {
                output.WriteKeyValue("Type", Type);
            }
            base.DumpMembers(output);
        }

        public static KnownSpell Parse(TextSpan value)
        {
            var parts = value.Split(',');

            int? level = null;
            string? name = null;
            string? type = null;

            foreach (var part in parts)
            {
                if (part.StartsWith("LEVEL="))
                {
                    level = Helpers.ParseInt(part.Substring("LEVEL=".Length));
                }
                else if (part.StartsWith("TYPE="))
                {
                    type = part.Substring("TYPE=".Length).Value;
                }
                else
                {
                    name = part.Value;
                }
            }

            return new KnownSpell(level, name, type);
        }
    }
}