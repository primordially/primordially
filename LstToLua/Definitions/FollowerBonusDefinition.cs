using System.Linq;

namespace Primordially.LstToLua.Definitions
{
    internal class FollowerBonusDefinition : TopLevelLuaObject
    {
        public override string ObjectType => "FollowerBonus";
        public string? Condition { get; private set; }

        public FollowerBonusDefinition()
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
                CommonProperties.Types,
                CommonProperties.Definitions,
                CommonProperties.Bonuses,
                CommonProperties.Abilities,
                CommonProperties.Auto,
                CommonProperties.DefineStat,
                CommonProperties.Template,
                Property.Integer("HD", "AdditionalHitDie"),
                Property.String("RACETYPE", "NewRaceType"),
                Property.Formula("COPYMASTERBAB", "CopyFolloweeAttackBonus"),
                Property.Parsed("COPYMASTERCHECK", "CopyFolloweeChecks", v => v.Value == "MASTER"),
                Property.Formula("COPYMASTERHP", "CopyFolloweeHitPoints"),
                Property.Boolean("USEMASTERSKILL", "UseFolloweeSkills"),
            });
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("FOLLOWER:", out field))
            {
                var (cv, lvlStr) = field.SplitTuple('=');
                var lvl = Helpers.ParseInt(lvlStr);

                Condition = string.Join(" or ", cv.Value.Split(',').Select(
                    c => $"character.GetLevel(\"{c}\") >= {lvl} or character.GetVariable(\"{c}\") >= {lvl}"));
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteKey("Condition");
            output.Write("=");
            output.WriteStartFunction("character");
            output.Write("return ");
            output.Write(Condition);
            output.Write("\n");
            output.WriteEndFunction();
            output.Write(",\n");
        }
    }
}