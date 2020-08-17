using System;
using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Definitions
{
    internal class SpellDefinition : StandardNamedLuaObject
    {
        internal sealed class Domain : LuaObject
        {
            public Domain(TextSpan value)
            {
                AddPropertyDefinitions(() => new []
                {
                    CommonProperties.Conditions,
                });
                if (value.TryRemoveInfix("[", out var level, out var conditions))
                {
                    if (!conditions.TryRemoveSuffix("]", out conditions))
                    {
                        throw new ParseFailedException(value, "Unable to parse DOMAINS");
                    }

                    Properties["Level"] = Helpers.ParseInt(level);
                    AddField(conditions);
                }
                else
                {
                    Properties["Level"] = Helpers.ParseInt(value);
                }
            }
        }

        internal class Item : IDumpable
        {
            public string Value { get; }
            public Item(TextSpan value)
            {
                if (value.TryRemovePrefix("[", out value) &&
                    value.TryRemoveSuffix("]", out value))
                {
                    Value = $"!{value.Value}";
                }
                else
                {
                    Value = value.Value;
                }
            }

            public void Dump(LuaTextWriter output)
            {
                output.WriteValue(Value.AsSpan());
            }
        }

        public override string ObjectType => "Spell";

        public Dictionary<string, int> Levels => Properties.GetDictionary<string, int>(nameof(Levels));
        public Dictionary<string, Domain> Domains => Properties.GetDictionary<string, Domain>(nameof(Domains));

        public SpellDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                CommonProperties.Types,
                CommonProperties.Description,
                CommonProperties.TemporaryBonus,
                Property.SeparatedList<string>('|', "SCHOOL", "Schools"),
                Property.SeparatedList<string>('|', "SUBSCHOOL", "SubSchools"),
                Property.SeparatedList<string>('|', "DESCRIPTOR", "Descriptors"),
                Property.SeparatedList<string>('|', "COMPS", "Components"),
                Property.SeparatedList<string>('|', "CASTTIME", "CastTime"),
                Property.SeparatedList<string>('|', "RANGE", "Range"),
                Property.SeparatedList<string>('|', "SAVEINFO", "Save"),
                Property.SeparatedList<string>('|', "VARIANTS", "Variants"),
                Property.ClearableSingle<string>("TARGETAREA", "TargetArea"),
                Property.ClearableSingle<string>("SPELLRES", "SpellResistance"),
                Property.SeparatedList<Formula>('|', "DURATION", "Duration"),
                Property.SeparatedList<Item>('|', "ITEM", "ItemTypes"),
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("CLASSES:", out field))
            {
                foreach (var part in field.Split('|'))
                {
                    var (classes, levelText) = part.SplitTuple('=');
                    var level = Helpers.ParseInt(levelText);
                    foreach (var c in classes.Split(','))
                    {
                        Levels[c.Value] = level;
                    }
                }

                return;
            }

            if (field.TryRemovePrefix("DOMAINS:", out field))
            {
                foreach (var part in field.Split('|'))
                {
                    var (domains, levelText) = part.SplitTuple('=');
                    var d = new Domain(levelText);
                    foreach (var c in domains.Split(','))
                    {
                        Domains[c.Value] = d;
                    }
                }

                return;
            }

            base.AddField(field);
        }
    }
}