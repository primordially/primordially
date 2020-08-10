using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class AbilityCategoryDefinition : LuaObject
    {
        public string? Name { get; private set; }
        public string? Category { get; private set; }
        public string? Plural { get; private set; }
        public string? DisplayLocation { get; private set; }
        public bool Visible { get; private set; }
        public bool Editable { get; private set; }
        public bool EditPool { get; private set; }
        public bool FractionalPool { get; private set; }
        public string? Pool { get; private set; }
        public string? AbilityList { get; private set; }
        public List<string> Types { get; } = new List<string>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("Category", Category);
            if (Plural != null)
                output.WriteKeyValue("Plural", Plural);
            if (DisplayLocation != null)
                output.WriteKeyValue("DisplayLocation", DisplayLocation);
            output.WriteListValue("Types", Types);
            output.WriteKeyValue("Visible", Visible);
            output.WriteKeyValue("Editable", Editable);
            output.WriteKeyValue("EditPool", EditPool);
            output.WriteKeyValue("FractionalPool", FractionalPool);
            if (Pool != null)
                output.WriteKeyValue("PoolName", Pool);
            if (AbilityList != null)
                output.WriteKeyValue("AbilityList", AbilityList);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("ABILITYCATEGORY:", out var cat))
            {
                Name = cat.Value;
                return;
            }

            if (field.TryRemovePrefix("CATEGORY:", out var c))
            {
                Category = c.Value;
                return;
            }

            if (field.TryRemovePrefix("TYPE:", out var t))
            {
                Types.AddRange(t.Value.Split("."));
                return;
            }

            if (field.TryRemovePrefix("PLURAL:", out var p))
            {
                Plural = p.Value;
                return;
            }

            if (field.TryRemovePrefix("DISPLAYLOCATION:", out var d))
            {
                DisplayLocation = d.Value;
                return;
            }

            if (field.TryRemovePrefix("VISIBLE:", out var visible))
            {
                Visible = Helpers.ParseBool(visible);
                return;
            }

            if (field.TryRemovePrefix("EDITABLE:", out var e))
            {
                Editable = Helpers.ParseBool(e);
                return;
            }

            if (field.TryRemovePrefix("EDITPOOL:", out var ep))
            {
                EditPool = Helpers.ParseBool(ep);
                return;
            }

            if (field.TryRemovePrefix("FRACTIONALPOOL:", out var fp))
            {
                FractionalPool = Helpers.ParseBool(fp);
                return;
            }

            if (field.TryRemovePrefix("POOL:", out var pool))
            {
                Pool = pool.Value;
                return;
            }

            if (field.TryRemovePrefix("ABILITYLIST:", out var list))
            {
                AbilityList = list.Value;
                return;
            }
            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineAbilityCategory(");
            base.Dump(output);
            output.Write(")");
        }
    }
}