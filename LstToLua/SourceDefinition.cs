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
            //SOURCELONG: Core Rulebook    SOURCESHORT: CR SOURCEWEB:http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj	SOURCEDATE:2009-08

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
            output.WriteKeyValue("SourceLong", SourceLong);
            output.WriteKeyValue("SourceShort", SourceShort);
            output.WriteKeyValue("SourceWeb", SourceWeb);
            output.WriteKeyValue("SourceDate", SourceDate);
            base.DumpMembers(output);
        }
    }
}