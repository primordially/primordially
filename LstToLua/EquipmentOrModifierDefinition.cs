using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class EquipmentOrModifierDefinition : DataSetObject
    {
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public string? Key { get; private set; }
        public List<string> Types { get; } = new List<string>();
        public List<FormattedString> SpecialProperties { get; } = new List<FormattedString>();
        public FormattedString? Description { get; private set; }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("KEY:", out var key))
            {
                Key = key.Value;
                return;
            }

            if (field.TryRemovePrefix("TYPE:", out var type))
            {
                Types.AddRange(type.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("BONUS:", out var bonus))
            {
                Bonuses.Add(Bonus.Parse(bonus, true));
                return;
            }

            if (field.TryRemovePrefix("SPROP:", out var sprop))
            {
                SpecialProperties.Add(new FormattedString(sprop));
                return;
            }

            if (field.TryRemovePrefix("DESC:", out var desc))
            {
                Description = new FormattedString(desc);
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Key), Key);
            output.WriteKeyValue(nameof(Description), Description);
            output.WriteListValue(nameof(Types), Types);
            output.WriteListValue(nameof(Bonuses), Bonuses);
            output.WriteListValue(nameof(SpecialProperties), SpecialProperties);
            base.DumpMembers(output);
        }
    }
}