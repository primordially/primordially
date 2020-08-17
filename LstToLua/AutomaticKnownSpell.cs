namespace Primordially.LstToLua
{
    internal class AutomaticKnownSpell : LuaObject
    {
        public AutomaticKnownSpell(TextSpan value)
        {
            foreach (var part in value.Split(','))
            {
                if (part.TryRemovePrefix("LEVEL=", out var v))
                {
                    Level = Helpers.ParseInt(v);
                }
                else if (part.TryRemovePrefix("TYPE=", out v))
                {
                    Type = v.Value;
                }
                else
                {
                    Name = part.Value;
                }
            }
        }

        public int? Level { get; }
        public string? Name { get; }
        public string? Type { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Level != null)
            {
                output.WriteProperty("Level", Level.Value);
            }
            if (Name != null)
            {
                output.WriteProperty("Name", Name);
            }
            if (Type != null)
            {
                output.WriteProperty("Type", Type);
            }
            base.DumpMembers(output);
        }
    }
}