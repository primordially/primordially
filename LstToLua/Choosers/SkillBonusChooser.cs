namespace Primordially.LstToLua.Choosers
{
    class SkillBonusChooser : QualifiedChooser
    {
        public int? Min { get; private set; }
        public int? Max { get; private set; }
        public string? Type { get; private set; }
        public string? Name { get; private set; }
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
                else if (part.TryRemovePrefix("TYPE=", out var type))
                {
                    Type = type.Value;
                }
                else
                {
                    Name = part.Value;
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

            string PrintNil(string? val)
            {
                if (val == null)
                    return "nil";
                return $"\"{val}\"";
            }

            return $@"
ChooseSkillBonus({PrintNil(Name)}, {PrintNil(Type)}, {Min}, {Max}{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}