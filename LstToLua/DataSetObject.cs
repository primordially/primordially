using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class DataSetObject : ConditionalObject
    {
        public Dictionary<string, string?> Clear { get; } = new Dictionary<string, string?>();
        public List<(string key, string value)> Facts { get; } = new List<(string key, string value)>();
        public string? SourceShort { get; private set; }
        public string? SourcePage { get; private set; }
        public string? SourceLong { get; private set; }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("FACT:", out var fact) || field.TryRemovePrefix("FACTSET:", out fact))
            {
                var parts = fact.Split('|').ToArray();
                if (parts.Length != 2)
                {
                    throw new ParseFailedException(field, "Unable to parse fact.");
                }

                Facts.Add((parts[0].Value, parts[1].Value));
                return;
            }
            if (field.TryRemovePrefix("SOURCEPAGE:", out var sp))
            {
                SourcePage = sp.Value;
                return;
            }
            if (field.TryRemovePrefix("SOURCESHORT:", out var ss))
            {
                SourceShort = sp.Value;
                return;
            }
            if (field.TryRemovePrefix("SOURCELONG:", out var sl))
            {
                SourceLong = sl.Value;
                return;
            }

            if (field.Value == "PRE:.CLEAR")
            {
                Clear["Conditions"] = null;
                return;
            }

            if (Condition.TryParse(field, out var condition))
            {
                Conditions.Add(condition);
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Facts.Any())
            {
                output.WriteObjectValue("Facts", () =>
                {
                    foreach (var (k, v) in Facts)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }
            if (!string.IsNullOrEmpty(SourcePage))
            {
                output.WriteKeyValue("SourcePage", SourcePage);
            }
            if (!string.IsNullOrEmpty(SourceShort))
            {
                output.WriteKeyValue("SourceShort", SourceShort);
            }
            if (!string.IsNullOrEmpty(SourceLong))
            {
                output.WriteKeyValue("SourceLong", SourceLong);
            }

            if (Clear.Any())
            {
                output.WriteObjectValue("Clear", () =>
                {
                    foreach (var (k, v) in Clear)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }
            base.DumpMembers(output);
        }
    }
}