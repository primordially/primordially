using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AutomaticProficiency : ConditionalObject
    {
        public List<string> Names { get; }
        public List<string> Types { get; }
        public ProficiencyKind Kind { get; }
        public bool DietyWeapons { get; }

        public AutomaticProficiency(List<string> names, List<string> types, bool dietyWeapons, ProficiencyKind kind)
        {
            Names = names;
            Types = types;
            DietyWeapons = dietyWeapons;
            Kind = kind;
        }

        public static bool TryParse(TextSpan field, [NotNullWhen(true)] out AutomaticProficiency? result)
        {
            if (!field.TryRemovePrefix("AUTO:WEAPONPROF|", out var value) &&
                !field.TryRemovePrefix("AUTO:ARMORPROF|", out value) &&
                !field.TryRemovePrefix("AUTO:SHIELDPROF|", out value))
            {
                result = null;
                return false;
            }

            var kind =
                field.StartsWith("AUTO:WEAPON") ? ProficiencyKind.Weapon :
                field.StartsWith("AUTO:ARMOR") ? ProficiencyKind.Armor :
                field.StartsWith("AUTO:SHIELD") ? ProficiencyKind.Shield :
                throw new InvalidOperationException("How did we get here?");

            var types = new List<string>();
            var names = new List<string>();
            var dietyWeapons = false;
            var conditions = new List<Condition>();

            foreach (var part in value.Split('|'))
            {
                if (part.TryRemovePrefix("TYPE=", out var type) ||
                    part.TryRemovePrefix("TYPE.", out type) ||
                    part.TryRemovePrefix("ARMORTYPE=", out type) ||
                    part.TryRemovePrefix("SHIELDTYPE=", out type))
                {
                    types.Add(type.Value);
                }
                else if (part.Value == "DIETYWEAPONS")
                {
                    dietyWeapons = true;
                }
                else if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                }
                else
                {
                    names.Add(part.Value);
                }
            }

            result = new AutomaticProficiency(names, types, dietyWeapons, kind);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return true;
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Kind", Kind.ToString());
            output.WriteListValue("Names", Names);
            output.WriteListValue("Types", Types);
            if (DietyWeapons)
            {
                output.WriteKeyValue("DietyWeapons", DietyWeapons);
            }
            base.DumpMembers(output);
        }
    }
}