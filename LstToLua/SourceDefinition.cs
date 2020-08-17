using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class SourceDefinition : LuaObject
    {
        public string? SourceLong { get; set; }
        public string? SourceShort { get; set; }
        public string? SourceWeb { get; set; }
        public string? SourceDate { get; set; }

        public SourceDefinition()
        {
        }

        private SourceDefinition(string? sourceLong, string? sourceShort, string? sourceWeb, string? sourceDate)
        {
            SourceLong = sourceLong;
            SourceShort = sourceShort;
            SourceWeb = sourceWeb;
            SourceDate = sourceDate;
        }

        public static SourceDefinition Parse(IReadOnlyList<TextSpan> fields)
        {
            string? sourceLong = null;
            string? sourceShort = null;
            string? sourceWeb = null;
            string? sourceDate = null;
            foreach (var field in fields)
            {
                var (k, v) = field.SplitTuple(':');

                var value = v.Value;
                switch (k.Value)
                {
                    case "SOURCELONG":
                        sourceLong = value;
                        break;
                    case "SOURCESHORT":
                        sourceShort = value;
                        break;
                    case "SOURCEWEB":
                        sourceWeb = value;
                        break;
                    case "SOURCEDATE":
                        sourceDate = value;
                        break;
                    default:
                        throw new ParseFailedException(field, $"Unknown source field '{k}'");
                }

            }
            return new SourceDefinition(sourceLong, sourceShort, sourceWeb, sourceDate);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("SourceLong", SourceLong);
            output.WriteProperty("SourceShort", SourceShort);
            output.WriteProperty("SourceWeb", SourceWeb);
            output.WriteProperty("SourceDate", SourceDate);
            base.DumpMembers(output);
        }
    }
}