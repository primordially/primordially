namespace Primordially.LstToLua.Choosers
{
    class StatBonusChooser : QualifiedChooser
    {
        public string? Stat { get; private set; }
        public int? Min { get; private set; }
        public int? Max { get; private set; }
        public override string ProcessConditions(TextSpan value)
        {
            foreach (var part in value.Split('|'))
            {
                if (part.TryRemovePrefix("MIN=", out var min))
                {
                    Min = Helpers.ParseInt(min);
                }
                else if (part.TryRemovePrefix("MAX=", out var max))
                {
                    Max = Helpers.ParseInt(max);
                }
                else if (Stat == null)
                {
                    Stat = part.Value;
                }
                else
                {
                    throw new ParseFailedException(part, "Unable to parse CHOOSE:NUMBER");
                }
            }

            return "";
        }

        public override string ProcessCondition(TextSpan value)
        {
            throw new System.NotSupportedException();
        }

        public override string Process(TextSpan value)
        {
            base.Process(value);
            return $@"
ChooseStatBonus({Min}, {Max}, {Stat ?? "nil"}{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}