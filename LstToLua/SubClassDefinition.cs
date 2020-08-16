using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class SubClassDefinition : LuaObject
    {
        public SubClassDefinition(string name)
        {
            AddPropertyDefinitions(() => new []
            {
                Property.Integer("COST", "Cost"),
            });
            Properties["Name"] = name;
        }

        public string? ChoiceKind { get; private set; }
        public string? ChoiceValue { get; private set; }
        public List<SubClassLevel> Levels { get; } = new List<SubClassLevel>();

        public void AddLine(TsvLine line)
        {
            var firstField = line.Fields.First();
            if (firstField.StartsWith("SUBCLASS:"))
            {
                foreach (var field in line.Fields.Skip(1))
                {
                    AddField(field);
                }
            }
            else if (firstField.StartsWith("SUBCLASSLEVEL:"))
            {
                var level = firstField.SplitTuple(':').right.Value;
                AddLevel(level, line.Fields.Skip(1));
            }
            else
            {
                throw new ParseFailedException(firstField, "Unknown tag.");
            }
        }

        private void AddLevel(string level, IEnumerable<TextSpan> fields)
        {
            var classLevel = new SubClassLevel(level);
            foreach (var field in fields)
            {
                classLevel.AddField(field);
            }
            Levels.Add(classLevel);
        }

        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("CHOICE:", out field))
            {
                if (!field.TryRemoveInfix("|", out var k, out var v))
                {
                    throw new ParseFailedException(field, "Unable to parse CHOICE");
                }
                ChoiceKind = k.Value;
                ChoiceValue = v.Value;
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteObjectValue("Choice", () =>
            {
                output.WriteProperty("Kind", ChoiceKind);
                output.WriteProperty("Value", ChoiceValue);
            });
            output.WriteProperty("Levels", Levels);
            base.DumpMembers(output);
        }
    }
}
