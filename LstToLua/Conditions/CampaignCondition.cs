using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class CampaignCondition : BooleanMultiCondition
    {
        public CampaignCondition(bool inverted, int count, List<string> conditions) : base(false, count, conditions)
        {
            InvertCampaignCondition = inverted;
        }

        public bool InvertCampaignCondition { get; }

        public static CampaignCondition Parse(bool invert, TextSpan value)
        {
            var parts = value.Split(',').ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "Unable to parse PRECAMPAIGN");
            }

            var count = Helpers.ParseInt(parts[0]);
            var conditions = new List<string>();
            foreach (var part in parts.Skip(1))
            {
                if (part.TryRemovePrefix("BOOKTYPE=", out var bt))
                {
                    conditions.Add($"source.IsBookType(\"{bt.Value.Replace("\"", "\\\"")}\")");
                }
                else if (part.TryRemovePrefix("INCLUDES=", out var includes))
                {
                    conditions.Add($"source.Includes(\"{includes.Value.Replace("\"", "\\\"")}\")");
                }
                else if (part.TryRemovePrefix("INCLUDESBOOKTYPE=", out var incbt))
                {
                    conditions.Add($"source.IncludesBookType(\"{incbt.Value.Replace("\"", "\\\"")}\")");
                }
                else
                {
                    bool invertName = part.TryRemovePrefixSuffix("[", "]", out var name);
                    conditions.Add($"source.Name {(invertName ? "~=" : "==")} \"{name.Value.Replace("\"", "\\\"")}\"");
                    if (invertName)
                    {
                        // for some reason we have to do this
                        // it makes no sense and isn't documented, but this is how it works
                        // every inverted condition increases the required count by 1
                        count++;
                    }
                }
            }

            return new CampaignCondition(invert, count, conditions);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            if (InvertCampaignCondition)
            {
                output.Write("not ");
            }
            output.Write("any(sources, ");
            output.WriteStartFunction("source");
            output.Write("return ");
            base.DumpCondition(output);
            output.Write("\n");
            output.WriteEndFunction();
            output.Write(")");
        }
    }
}