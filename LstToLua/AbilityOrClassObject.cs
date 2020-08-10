using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class AbilityOrClassObject : DataObject
    {
        public (string format, List<string> arguments)? Description { get; private set; }
        public List<ObjectVariableDefinition> Definitions { get; } = new List<ObjectVariableDefinition>();
        public List<AbilityReference> Abilities { get; } = new List<AbilityReference>();
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public List<string> Types { get; } = new List<string>();
        public DamageReduction? DamageReduction { get; private set; }
        public string? SpellResistance { get; private set; }

        public string? TemporaryBonusDescription { get; private set; }
        public List<(string target, Bonus bonus)> TemporaryBonuses { get; } = new List<(string target, Bonus bonus)>();
        public Dictionary<string, int> Movement { get; } = new Dictionary<string, int>();
        public List<AutomaticLanguage> AutomaticLanguages { get; } = new List<AutomaticLanguage>();
        public List<string> ClassSkills { get; } = new List<string>();
        public List<(string vision, List<Condition> conditions)> Vision { get; } = new List<(string vision, List<Condition> conditions)>();
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
                case "ABILITY":
                    Abilities.Add(AbilityReference.Parse(v));
                    return;
                case "CSKILL":
                    ClassSkills.AddRange(v.Value.Split('|'));
                    return;
                case "SPELLLEVEL":
                    SpellLists.AddRange(SpellList.Parse(v));
                    return;
                case "DR":
                {
                    DamageReduction = new DamageReduction();
                    foreach (var f in v.Split('|'))
                    {
                        DamageReduction.AddField(f);
                    }
                    return;
                }
                case "SR":
                    SpellResistance = v.Value;
                    return;
                case "BONUS":
                    Bonuses.Add(Bonus.Parse(v));
                    return;
                case "TEMPDESC":
                    TemporaryBonusDescription = v.Value;
                    return;
                case "TEMPBONUS":
                    var (target, bonus) = v.SplitTuple('|');
                    string targetValue = target.Value;
                    if (target.Value == "EQ")
                    {
                        TextSpan type;
                        (type, bonus) = bonus.SplitTuple('|');
                        targetValue += '|' + type.Value;
                    }

                    TemporaryBonuses.Add((targetValue, Bonus.Parse(bonus)));
                    return;
                case "TYPE":
                    Types.AddRange(v.Value.Split('.'));
                    return;
                case "DESC":
                {
                    var parts = v.Value.Split('|');
                    var format = parts[0];
                    var args = parts.Skip(1).ToList();
                    Description = (format, args);
                    return;
                }
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
                case "VISION":
                    var conditions = new List<Condition>();
                    var visions = new List<string>();
                    foreach (var part in v.Split('|'))
                    {
                        if (Condition.TryParse(part, out var cond))
                        {
                            conditions.Add(cond);
                        }
                        else
                        {
                            visions.Add(part.Value);
                        }
                    }

                    foreach (var vision in visions)
                    {
                        Vision.Add((vision, conditions));
                    }
                    return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            if (Description.HasValue)
            {
                output.WriteObjectValue("Description", () =>
                {
                    output.WriteKeyValue("Format", Description.Value.format);
                    output.WriteListValue("Arguments", Description.Value.arguments);
                });
            }
            if (Definitions.Any())
            {
                output.WriteListValue("Definitions", Definitions);
            }

            output.WriteListValue("ClassSkills", ClassSkills);
            output.WriteListValue("Bonuses", Bonuses);
            output.WriteListValue("Abilities", Abilities);
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

            if (DamageReduction != null)
            {
                output.WriteKeyValue("DamageReduction", DamageReduction);
            }
            if (SpellResistance != null)
            {
                output.WriteKeyValue("SpellResistance", SpellResistance);
            }
            if (TemporaryBonuses.Any())
            {
                output.WriteObjectValue("TemporaryBonuses", () =>
                {
                    if (TemporaryBonusDescription != null)
                    {
                        output.WriteKeyValue("Description", TemporaryBonusDescription);
                    }
                    output.WriteObjectValue("Bonuses", () =>
                    {
                        foreach (var (target, bonus) in TemporaryBonuses)
                        {
                            output.WriteStartObject();
                            output.WriteKeyValue("Target", target);
                            output.WriteKeyValue("Bonus", bonus);
                            output.WriteEndObject();
                            output.Write(",\n");
                        }
                    });
                });
            }

            if (Vision.Any())
            {
                output.WriteObjectValue("Vision", () =>
                {
                    foreach (var (vision, conditions) in Vision)
                    {
                        output.WriteStartObject();
                        output.WriteKeyValue("Vision", vision);
                        output.WriteListValue("Conditions", conditions);
                        output.WriteEndObject();
                        output.Write(",\n");
                    }
                });
            }
        }
    }

    internal class DamageReduction : ConditionalObject
    {
        public string? Value { get; private set; }

        public override void AddField(TextSpan field)
        {
            if (Value == null)
            {
                Value = field.Value;
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Value", Value);
            base.DumpMembers(output);
        }
    }
}