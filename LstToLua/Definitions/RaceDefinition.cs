﻿namespace Primordially.LstToLua.Definitions
{
    internal class RaceDefinition : StandardNamedLuaObject
    {
        public override string ObjectType => "Race";
        public (string clazz, int level)? MonsterClass { get; private set; }

        public RaceDefinition()
        {
            AddPropertyDefinitions(() => new[]
            {
                Property.SeparatedList<string>('.', "TYPE", "Types"),
                Property.String("KEY", "Key"),
                Property.String("SORTKEY", "SortKey"),
                Property.String("RACETYPE", "RaceType"),
                Property.String("ROLE", "Role"),
                Property.SeparatedList<string>('|', "RACESUBTYPE", "RaceSubTypes"),
                Property.Multiple<Bonus>("BONUS", "Bonuses"),
                Property.Integer("STARTFEATS", "StartingFeats"),
                Property.Integer("LEGS", "LegCount"),
                Property.Integer("HANDS", "HandCount"),
                Property.Integer("REACH", "Reach"),
                CommonProperties.ChallengeRating,
                CommonProperties.DamageReduction,
                CommonProperties.SpellResistance,
                CommonProperties.Template,
                CommonProperties.Size,
                CommonProperties.Kit,
                CommonProperties.Movement,
                CommonProperties.Vision,
                CommonProperties.Facts,
                CommonProperties.Abilities,
                CommonProperties.ServesAs,
                CommonProperties.DisplayName,
                CommonProperties.Conditions,
                CommonProperties.Definitions,
                CommonProperties.NaturalAttacks,
                CommonProperties.ClassSkills,
                CommonProperties.Auto,
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("MONSTERCLASS:", out var mc))
            {
                var (c, l) = mc.SplitTuple(':');
                MonsterClass = (c.Value, Helpers.ParseInt(l));
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            if (MonsterClass.HasValue)
            {
                output.WriteObjectValue("MonsterClass", () =>
                {
                    output.WriteProperty("Class", MonsterClass.Value.clazz);
                    output.WriteProperty("Level", MonsterClass.Value.level);
                });
            }
        }
    }
}
