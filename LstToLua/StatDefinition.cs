using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class StatDefinition : LuaObject
    {
        public string? Name { get; private set; }
        public string? SortKey { get; private set; }
        public string? Abbreviation { get; private set; }
        public string? Key { get; private set; }
        public string? StatModFormula { get; private set; }
        public List<(string target, string action, string value)> Modifications { get; } = new List<(string target, string action, string value)>();
        public List<ObjectVariableDefinition> Definitions { get; } = new List<ObjectVariableDefinition>();
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public List<AbilityReference> Abilities { get; } = new List<AbilityReference>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("SortKey", SortKey);
            output.WriteKeyValue("Abbreviation", Abbreviation);
            output.WriteKeyValue("Key", Key);
            output.WriteKeyValue("StatModFormula", StatModFormula);
            output.WriteObjectValue("Modifications", () =>
            {
                foreach (var (target, action, value) in Modifications)
                {
                    output.WriteStartObject();
                    output.WriteKeyValue("Target", target);
                    output.WriteKeyValue("Action", action);
                    output.WriteKeyValue("Value", value);
                    output.WriteEndObject();
                    output.Write(",\n");
                }
            });
            output.WriteListValue("Definitions", Definitions);
            output.WriteListValue("Bonuses", Bonuses);
            output.WriteListValue("Abilities", Abilities);
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

            if (field.TryRemovePrefix("ABB:", out var ab))
            {
                Abbreviation = ab.Value;
                return;
            }

            if (field.TryRemovePrefix("KEY:", out var k))
            {
                Key = k.Value;
                return;
            }

            if (field.TryRemovePrefix("STATMOD:", out var sm))
            {
                StatModFormula = sm.Value;
                return;
            }

            if (field.TryRemovePrefix("MODIFY:", out var mod))
            {
                var parts = mod.Split('|').ToArray();
                if (parts.Length != 3)
                {
                    throw new ParseFailedException(field, "Cannot parse MODIFY");
                }

                Modifications.Add((parts[0].Value, parts[1].Value, parts[2].Value));
                return;
            }

            if (field.TryRemovePrefix("BONUS:", out var b))
            {
                Bonuses.Add(Bonus.Parse(b));
                return;
            }

            if (field.TryRemovePrefix("DEFINE:", out var def))
            {
                var (key, v) = def.SplitTuple('|');
                Definitions.Add(new ObjectVariableDefinition(key.Value, v.Value));
                return;
            }

            if (field.TryRemovePrefix("ABILITY:", out var ability))
            {
                Abilities.Add(AbilityReference.Parse(ability));
                return;
            }
            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineStat(");
            base.Dump(output);
            output.Write(")");
        }
    }
}