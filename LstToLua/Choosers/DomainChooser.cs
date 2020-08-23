namespace Primordially.LstToLua.Choosers
{
    class DomainChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("DEITY=", out value))
            {
                condition = $"DeityHasDomain(domain, \"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"DomainWasChosenBy(domain, \"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out value))
            {
                condition = $"domain.IsType(\"{value.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(domain)";
            else if (value.Value == "PC")
                condition = "character.HasDomain(domain)";
            else
                condition = $"(stringMatch(domain.Name, \"{value.Value}\") or stringMatch(domain.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseClass(function (character, domain)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}