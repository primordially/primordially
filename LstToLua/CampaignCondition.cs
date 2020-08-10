using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class CampaignCondition : IDumpable
    {
        public CampaignCondition(bool invert, int count, List<string> conditions)
        {
            Invert = invert;
            Count = count;
            Conditions = conditions;
        }

        public bool Invert { get; }
        public int Count { get; set; }
        public List<string> Conditions { get; }

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
                if (part.StartsWith("BOOKTYPE="))
                {
                    conditions.Add($"source.IsBookType('{part.Substring("BOOKTYPE=".Length).Value}')");
                }
                else if (part.StartsWith("INCLUDES="))
                {
                    conditions.Add($"source.Includes('{part.Substring("INCLUDES=".Length).Value}')");
                }
                else if (part.StartsWith("INCLUDESBOOKTYPE="))
                {
                    conditions.Add($"source.IncludesBookType('{part.Substring("INCLUDESBOOKTYPE=".Length).Value}')");
                }
                else
                {
                    conditions.Add($"source.Name == \"{part.Value.Replace("\"", "\\\"")}\"");
                }
            }

            return new CampaignCondition(invert, count, conditions);
        }

        public void Dump(LuaTextWriter output)
        {
            output.WriteStartFunction("source");
            output.Write("local count = 0\n");
            foreach (var condition in Conditions)
            {
                output.Write($"if {condition} then\n");
                output.Write("  count = count + 1\n");
                output.Write("end\n");
            }

            if (Invert)
            {
                output.Write($"return count < {Count}\n");
            }
            else
            {
                output.Write($"return count >= {Count}\n");
            }
            output.WriteEndFunction();
        }
    }
}