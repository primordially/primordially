namespace Primordially.LstToLua
{
    internal class FactDefinition : LuaObject
    {
        public string? Category { get; private set; }
        public string? Key { get; private set; }
        public string? DataFormat { get; private set; }
        public string? DisplayName { get; private set; }
        public string? Explanation { get; private set; }
        public bool Required { get; private set; } = false;
        public bool Selectable { get; private set; } = false;
        public bool Visible { get; private set; } = false;

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Category", Category);
            output.WriteKeyValue("Key", Key);
            output.WriteKeyValue("DataFormat", DataFormat);
            if (DisplayName != null)
                output.WriteKeyValue("DisplayName", DisplayName);
            if (Explanation != null)
                output.WriteKeyValue("Explanation", Explanation);
            if (Required)
                output.WriteKeyValue("Required", true);
            if (Selectable)
                output.WriteKeyValue("Selectable", true);
            if (Visible)
                output.WriteKeyValue("Visible", true);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("FACTDEF:", out var def))
            {
                var (c, k) = def.SplitTuple('|');
                Category = c.Value;
                Key = k.Value;
                return;
            }

            if (field.TryRemovePrefix("DATAFORMAT:", out var df))
            {
                DataFormat = df.Value;
                return;
            }

            if (field.TryRemovePrefix("DISPLAYNAME:", out var displayName))
            {
                DisplayName = displayName.Value;
                return;
            }

            if (field.TryRemovePrefix("EXPLANATION:", out var exp))
            {
                Explanation = exp.Value;
                return;
            }

            if (field.TryRemovePrefix("SELECTABLE:", out var sel))
            {
                Selectable = Helpers.ParseBool(sel);
                return;
            }

            if (field.TryRemovePrefix("VISIBLE:", out var vis))
            {
                Visible = Helpers.ParseBool(vis);
                return;
            }

            if (field.TryRemovePrefix("REQUIRED:", out var req))
            {
                Required = Helpers.ParseBool(req);
                return;
            }
            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineFact(");
            base.Dump(output);
            output.Write(")");
        }
    }
}