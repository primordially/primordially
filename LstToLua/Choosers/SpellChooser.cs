namespace Primordially.LstToLua.Choosers
{
    class SpellChooser : QualifiedChooser
    {
        public override string ProcessCondition(TextSpan value)
        {
            bool invert = value.TryRemovePrefix("!", out value);
            string condition;
            if (value.TryRemovePrefix("TYPE=", out var type) || value.TryRemovePrefix("SPELLTYPE=", out type))
            {
                condition = $"spell.IsType(\"{type.Value}\")";
            }
            else if (value.TryRemovePrefix("SCHOOL=", out var school))
            {
                condition = $"spell.School == \"{school.Value}\"";
            }
            else if (value.TryRemovePrefix("SUBSCHOOL=", out var subSchool))
            {
                condition = $"spell.SubSchool == \"{subSchool.Value}\"";
            }
            else if (value.TryRemovePrefix("DESCRIPTOR=", out var desc))
            {
                condition = $"spell.Descriptor == \"{desc.Value}\"";
            }
            else if (value.TryRemovePrefix("PROHIBITED=", out var prohib))
            {
                condition = $"spell.Prohibited == {Helpers.ParseBool(prohib)}";
            }
            else if (value.TryRemovePrefix("SPELLBOOK=", out var spellbook))
            {
                condition = $"spell.SpellBook == \"{spellbook.Value}\"";
            }
            else if (value.TryRemovePrefix("CLASSLIST=", out var classList))
            {
                condition = $"spell.IsInClassList(\"{classList.Value}\")";
            }
            else if (value.TryRemovePrefix("DOMAINLIST=", out var domainList))
            {
                condition = $"spell.IsInDomainList(\"{domainList.Value}\")";
            }
            else if (value.TryRemovePrefix("KNOWN=", out var k))
            {
                var known = Helpers.ParseBool(k);
                condition = known ? "character.KnowsSpell(spell)" : "not character.KnowsSpell(spell)";
            }
            else if (value.TryRemovePrefix("LEVELMIN=", out var lvlMin))
            {
                var level = lvlMin.Value == "MAXCASTABLE"
                    ? "character.MaxCastableSpellLevel"
                    : Helpers.ParseInt(lvlMin).ToString();
                condition = $"spell.Level >= {level}";
            }
            else if (value.TryRemovePrefix("LEVELMAX=", out var lvlMax))
            {
                var level = lvlMax.Value == "MAXCASTABLE"
                    ? "character.MaxCastableSpellLevel"
                    : Helpers.ParseInt(lvlMax).ToString();
                condition = $"spell.Level <= {level}";
            }
            else if (value.Value == "ALL")
                condition = "true";
            else
                condition = $"(stringMatch(spell.Name, \"{value.Value}\") or stringMatch(spell.Key, \"{value.Value}\"))";

            if (invert)
                condition = $"not ({condition})";
            return condition;
        }

        public override string Process(TextSpan value)
        {
            var condition = base.Process(value);
            return $@"
ChooseSpell(function (character, spell)
  return {condition}
end{(Title != null ? $", \"{Title}\"" : "")})
".Replace("\r\n", "\n").Trim();
        }
    }
}