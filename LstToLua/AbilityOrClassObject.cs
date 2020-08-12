using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AbilityOrClassObject : DataObject
    {
        public FormattedString? Description { get; private set; }
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public List<string> Types { get; } = new List<string>();

        public Dictionary<string, int> Movement { get; } = new Dictionary<string, int>();
        public List<AutomaticLanguage> AutomaticLanguages { get; } = new List<AutomaticLanguage>();
        public List<string> ClassSkills { get; } = new List<string>();
        public List<SpellList> SpellLists { get; } = new List<SpellList>();

        public override void AddField(TextSpan field)
        {
            if (AutomaticLanguage.TryParse(field, out var automaticLanguage))
            {
                AutomaticLanguages.Add(automaticLanguage);
                return;
            }

            var (k, v) = field.SplitTuple(':');
            switch (k.Value)
            {
                case "CSKILL":
                    ClassSkills.AddRange(v.Value.Split('|'));
                    return;
                case "SPELLLEVEL":
                    SpellLists.AddRange(SpellList.Parse(v));
                    return;
                case "BONUS":
                    Bonuses.Add(Bonus.Parse(v));
                    return;
                case "TYPE":
                    Types.AddRange(v.Value.Split('.'));
                    return;
                case "DESC":
                {
                    var parts = v.Value.Split('|');
                    var format = parts[0];
                    var args = parts.Skip(1).ToList();
                    Description = new FormattedString(format, args);
                    return;
                }
                case "MOVE":
                    string? curKind = null;
                    foreach (var part in v.Split(','))
                    {
                        if (curKind != null)
                        {
                            Movement[curKind] = Helpers.ParseInt(part);
                            curKind = null;
                        }
                        else
                        {
                            curKind = part.Value;
                        }
                    }

                    if (curKind != null)
                    {
                        throw new ParseFailedException(v, "Invalid MOVE tag");
                    }
                    return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            if (Description != null)
            {
                output.WriteKeyValue("Description", Description);
            }

            output.WriteListValue("ClassSkills", ClassSkills);
            output.WriteListValue("Bonuses", Bonuses);
            output.WriteListValue("Types", Types);
            output.WriteListValue("SpellLists", SpellLists);
            if (Movement.Any())
            {
                output.WriteObjectValue("Movement", () =>
                {
                    foreach (var (k, v) in Movement)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }
            output.WriteListValue("AutomaticLanguages", AutomaticLanguages);
        }
    }
}