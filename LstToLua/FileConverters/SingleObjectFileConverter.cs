using System.Linq;

namespace Primordially.LstToLua
{
    internal class SingleObjectFileConverter<T> : FileConverter
        where T : LuaObject, new()
    {
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            if (line.Fields.Any())
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