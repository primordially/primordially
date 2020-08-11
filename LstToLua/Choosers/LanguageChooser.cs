namespace Primordially.LstToLua.Choosers
{
    class LanguageChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out var featKey))
            {
                condition = $"LanguageWasChosenBy(lang, \"{featKey.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out var type))
            {
                condition = $"lang.IsType(\"{type.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(lang)";
            else if (value.Value == "PC")
                condition = "character.HasLanguage(lang)";
            else if (value.Value == "LANGBONUS")
                condition = "character.IsBonusLanguage(lang)";
            else
                condition = $"(stringMatch(lang.Name, \"{value.Value}\") or stringMatch(lang.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseLanguage(function (character, lang)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}