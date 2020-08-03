namespace PCSharpGen.LstToLua
{
    internal interface IDumpable
    {
        void Dump(LuaTextWriter output);
    }
}