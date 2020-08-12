using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Xml;

namespace Primordially.LstToLua.Choosers
{
    class EquipmentSpellChooser
    {
        private string ProcessCondition(TextSpan value)
        {
            if (value.TryRemovePrefix("SCHOOL.", out var school))
            {
                return $"spell.School == \"{school.Value}\"";
            }
            if (value.TryRemovePrefix("SUBSCHOOL.", out var subschool))
            {
                return $"spell.SubSchool == \"{subschool.Value}\"";
            }
            if (value.TryRemovePrefix("DESCRIPTOR.", out var desc))
            {
                return $"spell.Descriptor == \"{desc.Value}\"";
            }

            return $"spell.IsType(\"{value.Value}\")";
        }

        public string Process(TextSpan value)
        {
            int? minLevel = null;
            int? maxLevel = null;
            var conditions = new List<string>();
            foreach (var part in value.Split('|'))
            {
                if (int.TryParse(part.Value, out var i))
                {
                    if (minLevel == null)
                    {
                        minLevel = i;
                    }
                    else if (maxLevel == null)
                    {
                        maxLevel = i;
                    }
                    else
                    {
                        throw new ParseFailedException(value, "Unable to parse CHOOSE:EQBUILDER.SPELL");
                    }

                    continue;
                }

                conditions.Add(string.Join(" and ",
                    part.Split(',').SelectMany(p => p.Split(';'))
                        .Select(ProcessCondition).Select(s => $"({s})")));
            }

            var condition = string.Join(" or ", conditions.Select(c => $"({c})"));

            if (minLevel.HasValue || maxLevel.HasValue)
            {
                condition = $"({condition})";
            }

            if (minLevel.HasValue)
            {
                condition += $" and spell.Level >= {minLevel.Value}";
            }
            if (maxLevel.HasValue)
            {
                condition += $" and spell.Level <= {maxLevel.Value}";
            }
            return $@"
ChooseSpell(function (character, spell)
  return {condition}
end)
".Replace("\r\n", "\n").Trim();
        }
    }
}