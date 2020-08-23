using System;
using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class VariableCondition : Condition
    {
        public string Op { get; }
        public IReadOnlyList<(string name, string value)> Pairs { get; }

        private VariableCondition(bool invert, string op, List<(string name, string value)> pairs) : base(invert)
        {
            Op = op;
            Pairs = pairs;
        }

        public static Condition Parse(TextSpan value, bool invert, string op)
        {
            var pairs = new List<(string name, string value)>();
            string? currentName = null;
            foreach (var part in value.Split(','))
            {
                if (currentName != null)
                {
                    pairs.Add((currentName, part.Value));
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
                "NEQ"  => "~=",
                _ => throw new InvalidOperationException($"Unknown PREVAR operation {Op}"),
            };

            output.Write(string.Join(" and ",
                Pairs.Select(pair =>
                    $"(character.Variables[\"{pair.name.Replace("\"", "\\\"")}\"] {op} {(int.TryParse(pair.value, out _) ? pair.value : $"\"{pair.value.Replace("\"", "\\\"")}\"")})")));

            if (Inverted)
            {
                output.Write(")");
            }
        }
    }
}