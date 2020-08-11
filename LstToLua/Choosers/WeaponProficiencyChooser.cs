namespace Primordially.LstToLua.Choosers
{
    class WeaponProficiencyChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("FEAT=", out value))
            {
                condition = $"WeaponWasChosenBy(weapon, \"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("TYPE=", out value))
            {
                condition = $"weapon.IsType(\"{value.Value}\")";
            }
            else if (value.TryRemovePrefix("WIELD=", out value))
            {
                condition = $"weapon.IsWieldable(\"{value.Value}\")";
            }
            else if (value.Value == "ALL" || value.Value == "ANY" || value.Value == "EQUIPMENT")
                condition = "true";
            else if (value.Value == "QUALIFIED")
                condition = "character.IsQualifiedFor(weapon)";
            else if (value.Value == "PC")
                condition = "character.IsProficientWith(weapon)";
            else if (value.Value == "SPELLCASTER")
                condition = "character.CanCastSpells";
            else if (value.Value == "DEITYWEAPON")
                condition = "character.Deity.Favors(weapon)";
            else
                condition = $"(stringMatch(weapon.Name, \"{value.Value}\") or stringMatch(weapon.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseWeaponProficiency(function (character, weapon)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}