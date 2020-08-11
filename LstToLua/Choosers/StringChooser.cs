using System.Linq;

namespace Primordially.LstToLua.Choosers
{
    internal class StringChooser
    {
        public string Process(TextSpan value)
        {
            var strings = value.Value.Split('|').Select(s => $"\"{s}\"");
            return $"ChooseString({{{string.Join(", ", strings)}}})";
        }
    }
}