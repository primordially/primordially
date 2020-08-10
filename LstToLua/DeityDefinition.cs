using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class DeityDefinition : DataSetObject
    {
        public string? Name { get; private set; }
        public string? Alignment { get; private set; }
        public bool NameIsProductIdentity { get; private set; }
        public string? Description { get; private set; }
        public string? Group { get; private set; }

        public List<string> DeityWeapons { get; } = new List<string>();
        public List<(List<Condition> conditions, List<string> domains)> Domains { get; } =
            new List<(List<Condition> conditions, List<string> domains)>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("Alignment", Alignment);
            output.WriteKeyValue("NameIsProductIdentity", NameIsProductIdentity);
            output.WriteKeyValue("Description", Description);
            output.WriteKeyValue("Group", Group);
            output.WriteListValue("DeityWeapons", DeityWeapons);
            output.WriteObjectValue("Domains", () =>
            {
                foreach (var (conditions, domains) in Domains)
                {
                    output.WriteStartObject();
                    output.WriteListValue("Domains", domains);
                    output.WriteListValue("Conditions", conditions);
                    output.WriteEndObject();
                    output.Write(",\n");
                }
            });
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("NAMEISPI:", out var nipi))
            {
                NameIsProductIdentity = Helpers.ParseBool(nipi);
                return;
            }

            if (field.TryRemovePrefix("ALIGN:", out var align))
            {
                Alignment = align.Value;
                return;
            }

            if (field.TryRemovePrefix("DESC:", out var desc))
            {
                Description = desc.Value;
                return;
            }

            if (field.TryRemovePrefix("DOMAINS:.CLEAR", out var rest))
            {
                if (!string.IsNullOrEmpty(rest.Value))
                {
                    Clear[nameof(Domains)] = rest.Value.Substring(1);
                }
                else
                {
                    Clear[nameof(Domains)] = null;
                }

                Domains.Clear();

                return;
            }

            if (field.TryRemovePrefix("DOMAINS:", out var domainsText))
            {
                var (domainsSpan, conditionSpan) = domainsText.SplitTuple('|');
                var domains = domainsSpan.Value.Split(',').ToList();
                var conditions = new List<Condition>();
                foreach (var part in conditionSpan.Split('|'))
                {
                    if (!Condition.TryParse(part, out var condition))
                    {
                        throw new ParseFailedException(part, "Unable to parse Condition");
                    }

                    conditions.Add(condition);
                }
                Domains.Add((conditions, domains));
                return;
            }

            if (field.Value == "DEITYWEAP:.CLEAR")
            {
                Clear[nameof(DeityWeapons)] = null;
                DeityWeapons.Clear();
                return;
            }

            if (field.TryRemovePrefix("DEITYWEAP:", out var deityWep))
            {
                DeityWeapons.AddRange(deityWep.Value.Split('|'));
                return;
            }

            if (field.TryRemovePrefix("GROUP:", out var group))
            {
                Group = group.Value;
                return;
            }

            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineDeity(");
            base.Dump(output);
            output.Write(")");
        }
    }
}