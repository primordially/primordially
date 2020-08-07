using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class ClassLevel : ClassOrClassLevel
    {
        public string Level { get; }
        public List<int> SpellsPerDay { get; } = new List<int>();
        public List<int> SpellsKnown { get; } = new List<int>();

        public ClassLevel(string level)
        {
            Level = level;
        }

        public override void AddField(TextSpan field)
        {
            var (k, v) = field.SplitTuple(':');
            Helpers.CheckForMODorCOPYorCLEAR(v);

            switch (k.Value)
            {
                case "CAST":
                    SpellsPerDay.Clear();
                    SpellsPerDay.AddRange(v.Split(',').Select(Helpers.ParseInt).ToList());
                    return;
                case "KNOWN":
                    SpellsKnown.Clear();
                    SpellsKnown.AddRange(v.Split(',').Select(Helpers.ParseInt).ToList());
                    return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Level", Level);
            output.WriteList("SpellsPerDay", SpellsPerDay.Cast<object>());
            output.WriteList("SpellsKnown", SpellsKnown.Cast<object>());
            base.DumpMembers(output);
        }
    }
}