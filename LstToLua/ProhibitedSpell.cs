using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal sealed class ProhibitedSpell : LuaObject
    {
        public ProhibitedSpell(TextSpan value)
        {
            AddPropertyDefinitions(() => new[]
            {
                CommonProperties.Conditions,
            });

            if (value.TryRemoveInfix("|", out var newValue, out var conditions))
            {
                foreach (var part in conditions.Split('|'))
                {
                    AddField(part);
                }

                value = newValue;
            }

            if (value.TryRemovePrefix("ALIGNMENT.", out value))
            {
                Alignments.AddRange(value.Value.Split('.'));
            }
            else if (value.TryRemovePrefix("DESCRIPTOR.", out value))
            {
                Descriptors.AddRange(value.Value.Split('.'));
            }
            else if (value.TryRemovePrefix("SCHOOL.", out value))
            {
                Schools.AddRange(value.Value.Split('.'));
            }
            else if (value.TryRemovePrefix("SUBSCHOOL.", out value))
            {
                SubSchools.AddRange(value.Value.Split('.'));
            }
            else if (value.TryRemovePrefix("SPELL.", out value))
            {
                Names.AddRange(value.Value.Split(','));
            }
            else
            {
                throw new ParseFailedException(value, "Unable to parse PROHIBITSPELL");
            }

        }

        public List<string> Alignments { get; } = new List<string>();
        public List<string> Descriptors { get; } = new List<string>();
        public List<string> Schools { get; } = new List<string>();
        public List<string> SubSchools { get; } = new List<string>();
        public List<string> Names { get; } = new List<string>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty(nameof(Alignments), Alignments);
            output.WriteProperty(nameof(Descriptors), Descriptors);
            output.WriteProperty(nameof(Schools), Schools);
            output.WriteProperty(nameof(SubSchools), SubSchools);
            output.WriteProperty(nameof(Names), Names);
            base.DumpMembers(output);
        }
    }
}
