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
        public List<Bonus> Bonuses { get; } = new List<Bonus>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("Description", Description);
            output.WriteListValue("ClassSkills", ClassSkills);
            output.WriteListValue("Bonuses", Bonuses);
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
                case "CSKILL":
                    ClassSkills.AddRange(v.Value.Split('|'));
                    return;
                case "SPELLLEVEL":
                    SpellLists.AddRange(SpellList.Parse(v));
                    return;
                case "BONUS":
                    Bonuses.Add(Bonus.Parse(v));
                    return;
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