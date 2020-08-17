using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class Bonus : LuaObject
    {
        public virtual bool IsEquipment => false;
        public Bonus(TextSpan value)
        {
            AddPropertyDefinitions(() => new[]
            {
                IsEquipment ? CommonProperties.ConditionForEquipment : CommonProperties.Conditions,
            });

            if (!value.TryRemoveInfix("|", out var category, out value))
            {
                throw new ParseFailedException(value, "Unable to parse bonus.");
            }
            if (!value.TryRemoveInfix("|", out var variableSpan, out value))
            {
                throw new ParseFailedException(value, "Unable to parse bonus.");
            }

            Category = category.Value;
            foreach (var part in value.Split('|'))
            {
                // This is fine, Provided that the only inheritor is EquipmentBonus
                // and it only overrides the IsEquipment property
                // ReSharper disable once VirtualMemberCallInConstructor
                AddField(part);
            }
            
            Formula ??= "%CHOICEVALUE";
            switch (Category)
            {
                case "ITEMCOST":
                    Variables.Add("Cost");
                    if (!variableSpan.TryRemovePrefix("TYPE.", out var types))
                    {
                        throw new ParseFailedException(value, "Unable to parse bonus.");
                    }
                    var allTypes = types.Value.Split('.').Select(t => $"item.IsType(\"{t}\")").ToList();
                    Properties.GetList<Condition>("Conditions")
                        .Add(new EquipmentTypeCondition(false, allTypes.Count, allTypes));
                    break;
                default:
                    Variables.AddRange(variableSpan.Value.Split(','));
                    break;
            }
        }

        public string? Category
        {
            get => Get<string>(nameof(Category));
            set => Set(nameof(Category), value);
        }

        public List<string> Variables => Properties.GetList<string>(nameof(Variables));

        public Formula? Formula
        {
            get => Get<Formula>(nameof(Formula));
            set => Set(nameof(Formula), value);
        }

        public BonusType? Type
        {
            get => Get<BonusType>(nameof(Type));
            set => Set(nameof(Type), value);
        }

        public override void AddField(TextSpan field)
        {
            if (BonusType.TryParse(field, out var t))
            {
                Type = t;
                return;
            }
            base.AddField(field);
        }

        protected override void UnknownField(TextSpan field)
        {
            if (Formula == null)
            {
                Formula = field.Value;
                return;
            }
            base.UnknownField(field);
        }
    }
}
