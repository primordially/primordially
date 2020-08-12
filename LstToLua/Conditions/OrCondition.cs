using System;
using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class OrCondition : Condition
    {
        public int Count { get; }
        public IReadOnlyList<Condition> Conditions { get; }

        private OrCondition(bool invert, int count, List<Condition> conditions) : base(invert)
        {
            Count = count;
            Conditions = conditions;
        }

        public static Condition Parse(TextSpan value, bool invert, bool isEquipment)
        {
            //PREMULT:1,[PRERACE:Gnome],[PREMULT:2,[PRESIZEGTEQ:M],[PREFEAT:1,Alertness]]

            var parts = value.Split(',', quotedBy: ('[', ']')).ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "PREMULT tag must have at least 2 parts");
            }

            var count = Helpers.ParseInt(parts[0]);
            var conditions = new List<Condition>();
            foreach (var part in parts.Skip(1))
            {
                if (!part.StartsWith('[') || !part.EndsWith(']'))
                {
                    throw new ParseFailedException(part, "PREMULT part must be surrounded by [ and ]");
                }

                var subCondition = part.Substring(1, part.Value.Length - 2);
                if (!Condition.TryParse(subCondition, isEquipment, out var cond))
                {
                    throw new ParseFailedException(subCondition, "PREMULT part must be a condition.");
                }

                conditions.Add(cond);
            }

            return new OrCondition(invert, count, conditions);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.WriteStartFunction("character");
            output.Write("local count = 0\n");
            output.Write("local subCondition\n");
            foreach (var condition in Conditions)
            {
                output.Write("subCondition = ");
                condition.Dump(output);
                output.Write("\n");
                output.Write("if subCondition(character) then\n");
                output.Write("  count = count + 1\n");
                output.Write("end\n");
            }

            output.Write($"return count >= {Count}\n");
            output.WriteEndFunction();
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            throw new NotSupportedException("This should never be called");
        }
    }
}