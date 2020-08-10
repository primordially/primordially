namespace Primordially.LstToLua
{
    internal class AlignmentDefinition : LuaObject
    {
        public string? Name { get; private set; }
        public string? Key { get; private set; }
        public string? SortKey { get; private set; }
        public string? Abbreviation { get; private set; }
        public bool ValidForDeity { get; private set; } = true;
        public bool ValidForFollower { get; private set; } = true;

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("Key", Key);
            output.WriteKeyValue("SortKey", SortKey);
            output.WriteKeyValue("Abbreviation", Abbreviation);
            if (!ValidForDeity)
                output.WriteKeyValue("ValidForDeity", false);
            if (!ValidForFollower)
                output.WriteKeyValue("ValidForFollower", false);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("SORTKEY:", out var sortKey))
            {
                SortKey = sortKey.Value;
                return;
            }

            if (field.TryRemovePrefix("ABB:", out var abb))
            {
                Abbreviation = abb.Value;
                return;
            }

            if (field.TryRemovePrefix("KEY:", out var key))
            {
                Key = key.Value;
                return;
            }

            if (field.TryRemovePrefix("VALIDFORDEITY:", out var vfd))
            {
                ValidForDeity = Helpers.ParseBool(vfd);
                return;
            }

            if (field.TryRemovePrefix("VALIDFORFOLLOWER:", out var vff))
            {
                ValidForFollower = Helpers.ParseBool(vff);
                return;
            }
            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineAlignment(");
            base.Dump(output);
            output.Write(")");
        }
    }
}