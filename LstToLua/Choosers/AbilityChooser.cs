namespace Primordially.LstToLua.Choosers
{
    class AbilityChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string result;
            if (value.TryRemovePrefix("TYPE=", out var type))
            {
                result = $"ability.IsType(\"{type.Value}\")";
            }
            else if (value.TryRemovePrefix("FEAT=", out var feat))
            {
                result = $"ability.WasChosenByFeat(\"{feat.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
            {
                result = "true";
            }
            else if (value.Value == "PC")
            {
                result = "character.HasAbility(ability)";
            }
            else if (value.Value == "QUALIFIED")
            {
                result = "character.IsQualifiedFor(ability)";
            }
            else
            {
                result =
                    $"(stringMatch(ability.Name, \"{value.Value}\") or stringMatch(ability.Key, \"{value.Value}\"))";
            }

            if (invert)
            {
                return $"not ({result})";
            }

            return result;
        }

        public override string Process(TextSpan value)
        {
            var (category, rest) = value.SplitTuple('|');

            var condition = base.Process(rest);

            return $@"
ChooseAbility(""{category.Value}"", function (character, ability)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}