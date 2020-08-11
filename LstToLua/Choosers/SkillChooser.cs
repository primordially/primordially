namespace Primordially.LstToLua.Choosers
{
    class SkillChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out var featKey))
            {
                condition = $"SkillWasChosenBy(skill, \"{featKey.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out var type))
            {
                condition = $"skill.IsType(\"{type.Value}\")";
            }
            else if (value.TryRemovePrefix("RANKS=", out var ranksSpan))
            {
                var ranks = ranksSpan.Value == "MAXRANK" ? "character.MaxSkillRank" : Helpers.ParseInt(ranksSpan).ToString();
                condition = $"character.Ranks(skill) >= {ranks}";
            }
            else if (value.Value == "ALL" || value.Value == "ANY")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(skill)";
            else if (value.Value == "USEUNTRAINED")
                condition = "skill.CanUseUntrained";
            else if (value.Value == "CLASS")
                condition = "character.IsClassSkill(skill.Name)";
            else if (value.Value == "CROSSCLASS")
                condition = "character.IsClassSkill(skill.Name)";
            else if (value.Value == "EXCLUSIVE")
                condition = "character.IsExclusiveSkill(skill.Name)";
            else if (value.Value == "NORANK")
                condition = $"character.Ranks(skill) == 0";
            else
                condition = $"(stringMatch(skill.Name, \"{value.Value}\") or stringMatch(skill.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseSkill(function (character, skill)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}