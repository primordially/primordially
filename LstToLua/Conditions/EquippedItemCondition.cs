using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class EquippedItemCondition : BooleanMultiCondition
    {
        public EquippedItemCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert, bool primaryHand, bool secondaryHand)
        {
            string defaultFunction =
                primaryHand ? "character.HasEquippedInPrimaryHand" :
                secondaryHand ? "character.HasEquippedInSecondaryHand" :
                "character.HasEquipped";
            int? count = null;
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (!count.HasValue)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                if (part.TryRemovePrefix("TYPE=", out var type) || part.TryRemovePrefix("TYPE.", out type))
                {
                    foreach (var t in type.Split('.'))
                    {
                        conditions.Add($"{defaultFunction}(function (item) return item.IsType(\"{t.Value}\") end)");
                    }
                }
                else if (part.TryRemovePrefix("WIELDCATEGORY=", out var wieldCategory))
                {
                    conditions.Add($"{defaultFunction}(function (item) return item.WieldCategory == \"{wieldCategory.Value}\" end)");
                }
                else if (part.Value == "LIST")
                {
                    conditions.Add("character.IsProficient(character.CurrentArmor)");
                }
                else
                {
                    conditions.Add($"{defaultFunction}(function (item) return stringMatch(item.Name, \"{part.Value}\") end)");
                }
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PREEQUIP");
            }

            return new EquippedItemCondition(invert, count.Value, conditions);
        }
    }
}