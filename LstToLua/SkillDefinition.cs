using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal enum SkillArmorCheckPenalty
    {
        No,
        Yes,
        IfNotProficient,
        Double,
        WeightPenaltyApplies,
    }

    internal class SkillDefinition : DataSetObject, IChooseable
    {
        public bool IsDelete { get; private set; }
        public bool IsMod { get; private set; }
        public string? Name { get; private set; }
        public string? Key { get; private set; }
        public string? KeyStat { get; private set; }
        public SkillArmorCheckPenalty? ArmorCheckPenalty { get; private set; }
        public List<string> Types { get; } = new List<string>();
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public bool UseUntrained { get; private set; } = true;
        public bool Visible { get; private set; } = true;
        public Choice? Choice { get; set; }
        public Formula? Selections { get; private set; }
        public AutomaticLanguage? AutomaticLanguage { get; private set; }
        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (field.TryRemoveSuffix(".MOD", out field))
                {
                    IsMod = true;
                }
                else if (field.TryRemoveSuffix(".FORGET", out field))
                {
                    IsDelete = true;
                }
                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("KEY:", out var key))
            {
                Key = key.Value;
                return;
            }

            if (field.TryRemovePrefix("KEYSTAT:", out var ks))
            {
                KeyStat = ks.Value;
                return;
            }

            if (field.TryRemovePrefix("TYPE:", out var types))
            {
                Types.AddRange(types.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("ACHECK:", out var acheck))
            {
                ArmorCheckPenalty = acheck.Value switch
                {
                    "NO" => SkillArmorCheckPenalty.No,
                    "YES" => SkillArmorCheckPenalty.Yes,
                    "PROFICIENT" => SkillArmorCheckPenalty.IfNotProficient,
                    "DOUBLE" => SkillArmorCheckPenalty.Double,
                    "WEIGHT" => SkillArmorCheckPenalty.WeightPenaltyApplies,
                    _ => throw new ParseFailedException(acheck, "Cannot parse ACHECK"),
                };
                return;
            }

            if (field.TryRemovePrefix("USEUNTRAINED:", out var uut))
            {
                UseUntrained = Helpers.ParseBool(uut);
                return;
            }

            if (field.TryRemovePrefix("VISIBLE:", out var visible))
            {
                Visible = Helpers.ParseBool(visible);
                return;
            }

            if (field.TryRemovePrefix("CHOOSE:", out var choose))
            {
                Helpers.ParseChoose(choose, this);
                return;
            }

            if (field.TryRemovePrefix("SELECT:", out var select))
            {
                Selections = select.Value;
                return;
            }

            if (AutomaticLanguage.TryParse(field, out var lang))
            {
                AutomaticLanguage = lang;
                return;
            }

            if (field.TryRemovePrefix("BONUS:", out var bonus))
            {
                Bonuses.Add(Bonus.Parse(bonus, true));
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Name), Name);
            output.WriteListValue(nameof(Types), Types);
            output.WriteKeyValue(nameof(KeyStat), KeyStat);
            if (!UseUntrained)
                output.WriteKeyValue(nameof(UseUntrained), UseUntrained);
            if (!Visible)
                output.WriteKeyValue(nameof(Visible), Visible);
            output.WriteKeyValue(nameof(Choice), Choice);
            output.WriteKeyValue(nameof(Selections), Selections);
            output.WriteKeyValue(nameof(ArmorCheckPenalty), ArmorCheckPenalty?.ToString());
            output.WriteKeyValue(nameof(AutomaticLanguage), AutomaticLanguage);
            output.WriteListValue(nameof(Bonuses), Bonuses);
            base.DumpMembers(output);
        }

        public override void Dump(LuaTextWriter output)
        {
            if (IsDelete)
            {
                output.Write($"DeleteSkill(\"{Name}\")");
                return;
            }
            if (IsMod)
            {
                output.Write("ModifySkill(");
            }
            else
            {
                output.Write("DefineSkill(");
            }
            base.Dump(output);
            output.Write(")");
        }
    }
}