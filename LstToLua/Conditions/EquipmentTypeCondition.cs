﻿using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class EquipmentTypeCondition : MultiCondition
    {
        public EquipmentTypeCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        protected override string Arguments => "item";

        public static Condition Parse(TextSpan value, bool invert)
        {
            int? count = null;
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (!count.HasValue)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                if (part.TryRemovePrefix("EQMOD=", out var eqmod))
                {
                    conditions.Add($"item.HasModifier(\"{eqmod.Value}\")");
                }
                else if (part.TryRemovePrefix("EQMODTYPE=", out var eqmodType))
                {
                    conditions.Add($"item.HasModifierType(\"{eqmodType.Value}\")");
                }
                else
                {
                    conditions.Add($"item.IsType(\"{part.Value}\")");
                }
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse equipment PRETYPE");
            }

            return new EquipmentTypeCondition(invert, count.Value, conditions);
        }
    }
}