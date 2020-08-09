using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class SubClassDefinition : ClassOrSubClass
    {
        public SubClassDefinition(string name) : base(name)
        {
        }

        public string? ChoiceKind { get; private set; }
        public string? ChoiceValue { get; private set; }
        public int Cost { get; private set; } = 0;
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
            var (k, v) = field.SplitTuple(':');

            switch (k.Value)
            {
                case "CHOICE":
                    var (kind, value) = v.SplitTuple('|');
                    ChoiceKind = kind.Value;
                    ChoiceValue = value.Value;
                    return;
                case "COST":
                    Cost = Helpers.ParseInt(v);
                    return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteObjectValue("Choice", () =>
            {
                output.WriteKeyValue("Kind", ChoiceKind);
                output.WriteKeyValue("Value", ChoiceValue);
            });
            output.WriteKeyValue("Cost", Cost);
            output.WriteListValue("Levels", Levels);
            base.DumpMembers(output);
        }
    }
}