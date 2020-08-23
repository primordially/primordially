using System.Linq;
using Primordially.LstToLua.Definitions;

namespace Primordially.LstToLua.FileConverters
{
    internal class DataControlFileConverter : FileConverter
    {
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            var firstField = line.Fields.First();
            if (firstField.StartsWith("FACTDEF"))
            {
                var def = new FactDefinition();
                foreach (var field in line.Fields)
                {
                    def.AddField(field);
                }

                def.Dump(luaWriter);
                luaWriter.Write("\n");
                return;
            }

            if (firstField.TryRemovePrefix("DEFAULTVARIABLEVALUE:", out var defVar))
            {
                var (v, value) = defVar.SplitTuple('|');
                luaWriter.Write($"SetDefaultVariableValue(\"{v.Value}\", \"{value.Value}\")\n");
                return;
            }

            if (firstField.StartsWith("FUNCTION:"))
            {
                var def = new FunctionDefinition();
                foreach (var field in line.Fields)
                {
                    def.AddField(field);
                }

                def.Dump(luaWriter);
                luaWriter.Write("\n");
                return;
            }

            if (firstField.StartsWith("FACTSETDEF"))
            {
                // Ignoring this one for now
                return;
            }
            base.ConvertLine(luaWriter, line);
        }
    }
}