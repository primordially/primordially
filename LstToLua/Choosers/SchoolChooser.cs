namespace Primordially.LstToLua.Choosers
{
    class SchoolChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"SchoolWasChosenBy(school, \"{value.Value}\")";
            }
            else if (value.Value == "ALL")
                condition = "true";
            else
                condition = $"(stringMatch(school.Name, \"{value.Value}\") or stringMatch(school.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseSchool(function (character, school)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}