using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class AutomaticProficiency : LuaObject
    {
        public List<string> Names => Properties.GetList<string>("Names");
        public List<string> Types => Properties.GetList<string>("Types");

        public ProficiencyKind Kind
        {
            get => Properties[nameof(Kind)] as ProficiencyKind? ?? default;
            set => Properties[nameof(Kind)] = value;

        }

        public bool DeityWeapons
        {
            get => Properties[nameof(DeityWeapons)] as bool? ?? false;
            set => Properties[nameof(DeityWeapons)] = value;
        }

        public AutomaticProficiency(ProficiencyKind kind, TextSpan value)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });

            Kind = kind;
            foreach (var part in value.Split('|'))
            {
                AddField(part);
            }
        }

        protected override void UnknownField(TextSpan field)
        {
            if (field.TryRemovePrefix("TYPE=", out field) ||
                field.TryRemovePrefix("TYPE.", out field) |
                field.TryRemovePrefix("ARMORTYPE=", out field) ||
                field.TryRemovePrefix("SHIELDTYPE=", out field))
            {
                Types.Add(field.Value);
            }
            else if (field.Value == "DEITYWEAPONS")
            {
                DeityWeapons = true;
            }
            else
            {
                Names.Add(field.Value);
            }
        }
    }
}
