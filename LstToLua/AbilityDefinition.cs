using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class AbilityDefinition : AbilityOrClassObject, IChooseable
    {
        public bool IsMod { get; private set; } = false;
        public string? Name { get; private set; }
        public string? Key { get; private set; }
        public string? Category { get; private set; }
        public int? AddedSpellLevels { get; private set; }
        public string? SpellPrefix { get; private set; }
        public List<Aspect> Aspects { get; } = new List<Aspect>();
        public List<Benefit> Benefits { get; } = new List<Benefit>();
        public double? Cost { get; private set; }
        public bool AllowMultiple { get; private set; } = false;
        public bool Stackable { get; private set; } = false;
        public List<string> Templates { get; } = new List<string>();
        public List<string> TemplateChoices { get; } = new List<string>();
        public bool Visible { get; private set; } = true;
        public Choice? Choice { get; set; }
        public Formula? Selections { get; private set; }

        public override void Dump(LuaTextWriter output)
        {
            if (IsMod)
            {
                output.Write("ModifyAbility(");
            }
            else
            {
                output.Write("DefineAbility(");
            }
            base.Dump(output);
            output.Write(")\n");
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            if (Key != null)
            {
                output.WriteKeyValue("Key", Key);
            }
            output.WriteKeyValue("Category", Category);
            output.WriteKeyValue("AllowMultiple", AllowMultiple);
            output.WriteKeyValue("Stackable", Stackable);
            if (!Visible)
            {
                output.WriteKeyValue("Visible", Visible);
            }
            if (Cost.HasValue)
            {
                output.WriteKeyValue("Cost", Cost.Value);
            }
            if (AddedSpellLevels.HasValue)
            {
                output.WriteKeyValue("AddedSpellLevels", AddedSpellLevels.Value);
            }
            if (SpellPrefix != null)
            {
                output.WriteKeyValue("SpellPrefix", SpellPrefix);
            }
            output.WriteListValue("Aspects", Aspects);
            output.WriteListValue("Benefits", Benefits);
            output.WriteListValue("Templates", Templates);
            output.WriteListValue("TemplateChoices", TemplateChoices);
            if (Choice != null)
            {
                output.WriteKeyValue("Choice", Choice);
                output.WriteKeyValue("Selections", Selections);
            }

            base.DumpMembers(output);
        }

        public static AbilityDefinition? Parse(IEnumerable<TextSpan> fields)
        {
            var def = new AbilityDefinition();
            using var enumerator = fields.GetEnumerator();
            if (!enumerator.MoveNext())
            {
                return null;
            }

            if (enumerator.Current.Value.Contains(':'))
            {
                return null;
            }

            var nameSpan = enumerator.Current;
            if (nameSpan.StartsWith("CATEGORY=") && nameSpan.EndsWith(".MOD"))
            {
                nameSpan = nameSpan.Substring("CATEGORY=".Length, nameSpan.Value.Length - "CATEGROY=".Length - ".MOD".Length);
                var (c, n) = nameSpan.SplitTuple('|');
                def.Category = c.Value;
                def.Name = n.Value;
                def.IsMod = true;
            }
            else
            {
                def.Name = nameSpan.Value;
            }

            while (enumerator.MoveNext())
            {
                var field = enumerator.Current;
                def.AddField(field);
            }

            return def;
        }

        public override void AddField(TextSpan field)
        {
            var (k, v) = field.SplitTuple(':');
            switch (k.Value)
            {
                case "ADDSPELLLEVEL":
                    AddedSpellLevels = Helpers.ParseInt(v);
                    return;
                case "APPLIEDNAME":
                    SpellPrefix = v.Value;
                    return;
                case "CATEGORY":
                    Category = v.Value;
                    return;
                case "COST":
                    Cost = Helpers.ParseDouble(v);
                    return;
                case "MULT":
                    AllowMultiple = Helpers.ParseBool(v);
                    return;
                case "STACK":
                    Stackable = Helpers.ParseBool(v);
                    return;
                case "VISIBLE":
                    Visible = Helpers.ParseBool(v);
                    return;
                case "KEY":
                    Key = v.Value;
                    return;
                case "CHOOSE":
                    Helpers.ParseChoose(v, this);
                    return;
                case "SELECT":
                    Selections = v.Value;
                    return;
                case "TEMPLATE":
                    if (v.StartsWith("ADDCHOICE:"))
                    {
                        var choices = v.Substring("ADDCHOICE:".Length).Value.Split('|');
                        TemplateChoices.AddRange(choices);
                        return;
                    }

                    if (v.StartsWith("CHOOSE:"))
                    {
                        var choices = v.Substring("CHOOSE:".Length).Value.Split('|');
                        TemplateChoices.AddRange(choices);
                        return;
                    }
                    Templates.AddRange(v.Value.Split('|'));
                    return;
                case "ASPECT":
                    var aspect = new Aspect();
                    foreach (var f in v.Split('|'))
                    {
                        aspect.AddField(f);
                    }
                    Aspects.Add(aspect);
                    return;
                case "BENEFIT":
                    if (v.Value == ".CLEAR")
                    {
                        Benefits.Clear();
                        Clear[nameof(Benefits)] = null;
                        return;
                    }
                    if (v.StartsWith(".CLEAR"))
                    {
                        throw new ParseFailedException(v, ".CLEAR with regex not yet supported");
                    }

                    var benefit = new Benefit();
                    foreach (var f in v.Split('|'))
                    {
                        benefit.AddField(f);
                    }
                    Benefits.Add(benefit);
                    return;
            }
            base.AddField(field);
        }
    }
}