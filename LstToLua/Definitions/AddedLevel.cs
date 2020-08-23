namespace Primordially.LstToLua.Definitions
{
    internal class AddedLevel : LuaObject
    {
        public AddedLevel(string clazz, int levels)
        {
            Properties["Class"] = clazz;
            Properties["Levels"] = levels;
        }
    }
}