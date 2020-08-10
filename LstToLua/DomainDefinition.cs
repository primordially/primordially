using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class DomainDefinition : DataSetObject
    {
        public string? Name { get; private set; }
        public string? Description { get; private set; }

        public bool IsMod { get; private set; }

        public List<string> ClassSkills { get; } = new List<string>();
        public List<SpellList> SpellLists { get; } = new List<SpellList>();
        public List<ObjectVariableDefinition> Definitions { get; } = new List<ObjectVariableDefinition>();
        public List<AbilityReference> Abilities { get; } = new List<AbilityReference>();
        public List<Bonus> Bonuses { get; } = new List<Bonus>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("Description", Description);
            if (Definitions.Any())
            {
                output.WriteListValue("Definitions", Definitions);
            }
            output.WriteListValue("ClassSkills", ClassSkills);
            output.WriteListValue("Bonuses", Bonuses);
            output.WriteListValue("Abilities", Abilities);
            output.WriteListValue("SpellLists", SpellLists);
            base.DumpMembers(output);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (field.TryRemoveSuffix(".MOD", out field))
                {
                    IsMod = true;
                }
                Name = field.Value;
                return;
            }

            var (k, v) = field.SplitTuple(':');
            switch (k.Value)
            {
                case "DESC":
                    Description = v.Value;
                    return;
                case "ABILITY":
                    Abilities.Add(AbilityReference.Parse(v));
                    return;
                case "CSKILL":
                    ClassSkills.AddRange(v.Value.Split('|'));
                    return;
                case "SPELLLEVEL":
                    SpellLists.AddRange(SpellList.Parse(v));
                    return;
                case "BONUS":
                    Bonuses.Add(Bonus.Parse(v));
                    return;
                case "DEFINE":
                {
                    var parts = v.Split('|').ToArray();
                    if (parts.Length != 2)
                    {
                        throw new ParseFailedException(field, "Unable to parse variable definition.");
                    }

                    Definitions.Add(new ObjectVariableDefinition(parts[0].Value, parts[1].Value));
                    return;
                }
            }

            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            if (IsMod)
            {
                output.Write("ModifyDomain(");
            }
            else
            {
                output.Write("DefineDomain(");
            }
            base.Dump(output);
            output.Write(")");
        }
    }
}