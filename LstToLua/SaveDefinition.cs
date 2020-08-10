namespace Primordially.LstToLua
{
    internal class SaveDefinition : LuaObject
    {
        public string? Name { get; private set; }
        public string? SortKey { get; private set; }
        public Bonus? Bonus { get; private set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("SortKey", SortKey);
            if (Bonus != null)
                output.WriteKeyValue("Bonus", Bonus);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("SORTKEY:", out var sk))
            {
                SortKey = sk.Value;
                return;
            }

            if (field.TryRemovePrefix("BONUS:", out var b))
            {
                Bonus = LstToLua.Bonus.Parse(b);
                return;
            }

            base.AddField(field);
        }


        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineSave(");
            base.Dump(output);
            output.Write(")");
        }
    }
}