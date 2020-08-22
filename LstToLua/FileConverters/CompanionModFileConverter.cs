using System.Linq;
using Primordially.LstToLua.Definitions;

namespace Primordially.LstToLua.FileConverters
{
    internal class CompanionModFileConverter : FileConverter
    {
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            if (line.Fields.Any() && !line.Fields.First().Value.StartsWith("SOURCE"))
            {
                var firstField = line.Fields.First();
                if (firstField.StartsWith("FOLLOWER:"))
                {
                    var def = new FollowerBonusDefinition();
                    foreach (var field in line.Fields)
                    {
                        def.AddField(field);
                    }

                    def.Dump(luaWriter);
                    luaWriter.Write("\n");
                    return;
                }
                if (firstField.StartsWith("MASTERBONUSRACE:"))
                {
                    var def = new FolloweeBonusDefinition();
                    foreach (var field in line.Fields)
                    {
                        def.AddField(field);
                    }

                    def.Dump(luaWriter);
                    luaWriter.Write("\n");
                    return;
                }
            }
            base.ConvertLine(luaWriter, line);
        }
    }
}