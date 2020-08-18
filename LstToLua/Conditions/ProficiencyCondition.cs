using System;
using System.Collections.Generic;

namespace Primordially.LstToLua.Conditions
{
    internal class ProficiencyCondition : BooleanMultiCondition
    {
        public ProficiencyCondition(bool inverted, int count, List<string> conditions) : base(inverted, count, conditions)
        {
        }

        public static Condition Parse(TextSpan value, bool invert, ProficiencyKind kind)
        {
            var baseFunction =
                kind == ProficiencyKind.Armor ? "character.IsProficientWithArmor" :
                kind == ProficiencyKind.Shield ? "character.IsProficientWithShield" :
                kind == ProficiencyKind.Weapon ? "character.IsProficientWithWeapon" :
                throw new InvalidOperationException("How did we get here?");
            int? count = null;
            var conditions = new List<string>();
            foreach (var part in value.Split(','))
            {
                if (!count.HasValue)
                {
                    count = Helpers.ParseInt(part);
                    continue;
                }

                if (part.TryRemovePrefix("TYPE.", out var type))
                {
                    conditions.Add($"{baseFunction}Type(\"{type.Value}\")");
                }
                else
                {
                    conditions.Add($"{baseFunction}(\"{part.Value}\")");
                }
            }

            if (!count.HasValue)
            {
                throw new ParseFailedException(value, "Unable to parse PREPROF**");
            }

            return new ProficiencyCondition(invert, count.Value, conditions);
        }
    }
}