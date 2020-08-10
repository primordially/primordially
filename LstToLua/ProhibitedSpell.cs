using System;
using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal class ProhibitedSpell : ConditionalObject, IDumpable
    {
        public ProhibitedSpell(string? alignment, string? descriptor, string? school, string? subSchool, IReadOnlyList<string> names)
        {
            Alignment = alignment;
            Descriptor = descriptor;
            School = school;
            SubSchool = subSchool;
            Names = names;
        }

        public string? Alignment { get; }
        public string? Descriptor { get; }
        public string? School { get; }
        public string? SubSchool { get; }
        public IReadOnlyList<string> Names { get; }
        public static ProhibitedSpell Parse(TextSpan value)
        {
            string? alignment = null;
            string? descriptor = null;
            string? school = null;
            string? subschool = null;
            List<string> names = new List<string>();
            List<Condition> conditions = new List<Condition>();
            var parts = value.Split('|').ToArray();
            if (parts.Length < 1)
            {
                throw new ParseFailedException(value, "Unable to parse PROHIBITSPELL");
            }

            var whatSpell = parts[0];
            if (whatSpell.StartsWith("ALIGNMENT."))
            {
                alignment = whatSpell.Substring("ALIGNMENT.".Length).Value;
            }
            else if (whatSpell.StartsWith("DESCRIPTOR."))
            {
                descriptor = whatSpell.Substring("DESCRIPTOR.".Length).Value;
            }
            else if (whatSpell.StartsWith("SCHOOL."))
            {
                school = whatSpell.Substring("SCHOOL.".Length).Value;
            }
            else if (whatSpell.StartsWith("SUBSCHOOL."))
            {
                subschool = whatSpell.Substring("SUBSCHOOL.".Length).Value;
            }
            else if (whatSpell.StartsWith("SPELL."))
            {
                var spells = whatSpell.Substring("SPELL.".Length);
                foreach (var spell in spells.Split(','))
                {
                    names.Add(spell.Value);
                }
            }
            else
            {
                throw new ParseFailedException(value, "Unable to parse PROHIBITSPELL");
            }
            foreach (var extra in parts.Skip(1))
            {
                if (!Condition.TryParse(extra, out var condition))
                {
                    throw new ParseFailedException(value, "Expected condition in PROHIBITSPELL definition.");
                }

                conditions.Add(condition);
            }

            var result = new ProhibitedSpell(alignment, descriptor, school, subschool, names);
            foreach (var condition in conditions)
                result.Conditions.Add(condition);
            return result;
        }

        public override void AddField(TextSpan field)
        {
            throw new NotSupportedException();
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Alignment != null)
            {
                output.WriteKeyValue("Alignment", Alignment);
            }

            if (Descriptor != null)
            {
                output.WriteKeyValue("Descriptor", Descriptor);
            }

            if (School != null)
            {
                output.WriteKeyValue("School", School);
            }

            if (SubSchool != null)
            {
                output.WriteKeyValue("SubSchool", SubSchool);
            }

            if (Names.Any())
            {
                output.WriteObjectValue("Names", () =>
                {
                    foreach (var name in Names)
                    {
                        output.WriteValue(name);
                        output.Write(",\n");
                    }
                });
            }
            base.DumpMembers(output);
        }
    }
}