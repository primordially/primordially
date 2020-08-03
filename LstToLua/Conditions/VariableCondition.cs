using System;
using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.LstToLua.Conditions
{
    internal class VariableCondition : Condition
    {
        public string Op { get; }
        public IReadOnlyList<(string name, int value)> Pairs { get; }

        private VariableCondition(bool invert, string op, List<(string name, int value)> pairs) : base(invert)
        {
            Op = op;
            Pairs = pairs;
        }

        public static Condition Parse(TextSpan value, bool invert, string op)
        {
            var pairs = new List<(string name, int value)>();
            string? currentName = null;
            foreach (var part in value.Split(','))
            {
                if (currentName != null)
                {
                    var v = Helpers.ParseInt(part);
                    pairs.Add((currentName, v));
                    currentName = null;
                }
                else
                {
                    currentName = part.Value;
                }
            }

            if (currentName != null)
            {
                throw new ParseFailedException(value, "PREVAR** must have an even number of parts.");
            }
            return new VariableCondition(invert, op, pairs);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            if (Inverted)
            {
                output.Write("not (");
            }

            var op = Op switch
            {
                "EQ"   => "==",
                "LT"   => "<",
                "LTEQ" => "<=",
                "GT"   => ">",
                "GTEQ" => ">=",
                "NEQ"  => "!=",
                _ => throw new InvalidOperationException($"Unknown PREVAR operation {Op}"),
            };

            output.Write(string.Join(" and ", Pairs.Select(pair => $"(character.Variables[\"{pair.name}\"] {op} {pair.value})")));

            if (Inverted)
            {
                output.Write(")");
            }
        }
    }
}