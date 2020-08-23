using System.Linq;

namespace Primordially.LstToLua.FileConverters
{
    internal class SingleObjectFileConverter<T> : FileConverter
        where T : LuaObject, new()
    {
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            if (line.Fields.Any() && !line.Fields.First().Value.StartsWith("SOURCE"))
            {
                var def = new T();
                foreach (var field in line.Fields)
                {
                    def.AddField(field);
                }

                def.Dump(luaWriter);
                luaWriter.Write("\n");
                return;
            }
            base.ConvertLine(luaWriter, line);
        }
    }
}