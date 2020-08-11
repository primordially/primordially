namespace Primordially.LstToLua.Choosers
{
    class ClassChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"ClassWasChosenBy(class, \"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out value))
            {
                condition = $"class.IsType(\"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("SPELLTYPE=", out value))
            {
                condition = $"class.CanCast(\"{value.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(class)";
            else if (value.Value == "PC")
                condition = "character.HasClass(class)";
            else if (value.Value == "SPELLCASTER")
                condition = "class.CanCastSpells";
            else
                condition = $"(stringMatch(class.Name, \"{value.Value}\") or stringMatch(class.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseClass(function (character, class)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}