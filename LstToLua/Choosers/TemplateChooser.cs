namespace Primordially.LstToLua.Choosers
{
    class TemplateChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out var featKey))
            {
                condition = $"TemplateWasChosenBy(template, \"{featKey.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out var type))
            {
                condition = $"template.IsType(\"{type.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(template)";
            else if (value.Value == "PC")
                condition = "character.HasTemplate(template)";
            else
                condition = $"(stringMatch(template.Name, \"{value.Value}\") or stringMatch(template.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseTemplate(function (character, template)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}