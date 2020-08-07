namespace Primordially.LstToLua
{
    internal interface IDumpable
    {
        void Dump(LuaTextWriter output);
    }
}