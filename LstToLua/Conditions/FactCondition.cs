using System.Linq;

namespace Primordially.LstToLua.Conditions
{
    internal class FactCondition : Condition
    {
        public string Type { get; }
        public string Identifier { get; }
        public string Value { get; }

        private FactCondition(bool invert, string type, string identifier, string value) : base(invert)
        {
            Type = type;
            Identifier = identifier;
            Value = value;
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            var condition = $"character.Facts[\"{Type}\"][\"{Identifier}\"] == \"{Value}\"";
            if (Inverted)
            {
                condition = $"not ({condition})";
            }
            output.Write(condition);
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            var parts = value.Split(',').ToArray();
            if (parts.Length != 3)
            {
                throw new ParseFailedException(value, "Unable to parse PREFACT");
            }

            if (parts[0].Value != "1")
            {
                throw new ParseFailedException(value, "Unable to parse PREFACT");
            }

            var type = parts[1].Value;
            if (type == "ABILITIES")
            {
                type = "ABILITY";
            }
            var (ident, requiredValue) = parts[2].SplitTuple('=');
            return new FactCondition(invert, type, ident.Value, requiredValue.Value);
        }
    }
}