using System.Collections.Generic;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class FollowerType : ConditionalObject
    {
        public string Type { get; }
        public List<string> FollowerConditions { get; }
        public int FollowerLevelAdjustment { get; }

        private FollowerType(string type, List<string> followerConditions, int followerLevelAdjustment)
        {
            Type = type;
            FollowerConditions = followerConditions;
            FollowerLevelAdjustment = followerLevelAdjustment;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.Write("IsValidFollower=");
            output.WriteStartFunction("follower");
            output.Write($"return {string.Join(" or ", FollowerConditions)}");
            output.WriteEndFunction();
            output.Write(",\n");
            output.WriteKeyValue("FollowerLevelAdjustment", FollowerLevelAdjustment);
            base.DumpMembers(output);
        }

        public static FollowerType Parse(TextSpan field)
        {
            string? type = null;
            int followerLevelAdjustment = 0;
            var conditions = new List<Condition>();
            var followerConditions = new List<string>();
            foreach (var part in field.Split('|'))
            {
                if (type == null)
                {
                    type = part.Value;
                    continue;
                }
                if (Condition.TryParse(part, out var condition))
                {
                    conditions.Add(condition);
                    continue;
                }

                foreach (var subPart in part.Split(','))
                {
                    if (subPart.TryRemovePrefix("RACETYPE=", out var raceType))
                    {
                        followerConditions.Add($"follower.RaceType == \"{raceType.Value}\"");
                    }
                    else if (subPart.TryRemovePrefix("RACESUBTYPE=", out var raceSubType))
                    {
                        followerConditions.Add($"follower.RaceSubType == \"{raceSubType.Value}\"");
                    }
                    else if (subPart.TryRemovePrefix("FOLLOWERADJUSTMENT:", out var adjustment))
                    {
                        followerLevelAdjustment = Helpers.ParseInt(adjustment);
                    }
                    else if (subPart.Value == "ANY")
                    {
                        followerConditions.Add("true");
                    }
                    else
                    {
                        followerConditions.Add($"follower.Name == \"{subPart.Value}\"");
                    }
                }
            }

            if (type == null)
            {
                throw new ParseFailedException(field, "Unable to parse COMPANIONLIST");
            }

            var result = new FollowerType(type, followerConditions, followerLevelAdjustment);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return result;
        }
    }
}