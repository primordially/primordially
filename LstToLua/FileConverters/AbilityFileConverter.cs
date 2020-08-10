namespace Primordially.LstToLua
{
    internal class AbilityFileConverter : FileConverter
    {
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            var def = AbilityDefinition.Parse(line.Fields);
            if (def != null)
            {
                def.Dump(luaWriter);
                luaWriter.Write("\n");
                return;
            }
            base.ConvertLine(luaWriter, line);
        }
    }
}