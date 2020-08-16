using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class FollowerType : LuaObject
    {
        public string? Type { get; private set; }
        public List<string> FollowerConditions { get; } = new List<string>();
        public int FollowerLevelAdjustment { get; private set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Type", Type);
            output.Write("IsValidFollower=");
            output.WriteStartFunction("follower");
            output.Write($"return {string.Join(" or ", FollowerConditions)}\n");
            output.WriteEndFunction();
            output.Write(",\n");
            output.WriteProperty("FollowerLevelAdjustment", FollowerLevelAdjustment);
            base.DumpMembers(output);
        }

        public FollowerType(TextSpan value)
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
            });
            foreach (var part in value.Split('|'))
            {
                AddField(part);
            }
        }

        public override void AddField(TextSpan field)
        {
            if (Type == null)
            {
                Type = field.Value;
                return;
            }

            base.AddField(field);
        }

        protected override void UnknownField(TextSpan field)
        {
            foreach (var subPart in field.Split(','))
            {
                if (subPart.TryRemovePrefix("RACETYPE=", out var raceType))
                {
                    FollowerConditions.Add($"follower.RaceType == \"{raceType.Value}\"");
                }
                else if (subPart.TryRemovePrefix("RACESUBTYPE=", out var raceSubType))
                {
                    FollowerConditions.Add($"follower.RaceSubType == \"{raceSubType.Value}\"");
                }
                else if (subPart.TryRemovePrefix("FOLLOWERADJUSTMENT:", out var adjustment))
                {
                    FollowerLevelAdjustment = Helpers.ParseInt(adjustment);
                }
                else if (subPart.Value == "ANY")
                {
                    FollowerConditions.Add("true");
                }
                else
                {
                    FollowerConditions.Add($"follower.Name == \"{subPart.Value}\"");
                }
            }
        }
    }
}
