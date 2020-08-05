using System.Collections.Generic;

namespace PCSharpGen.LstToLua
{
    internal class TsvLine
    {
        public TsvLine(IReadOnlyList<TextSpan> fields)
        {
            Fields = fields;
        }

        public IReadOnlyList<TextSpan> Fields { get; }
    }
}