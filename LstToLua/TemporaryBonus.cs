namespace Primordially.LstToLua
{
    internal class TemporaryBonus : LuaObject
    {
        public TemporaryBonus(string target, Bonus bonus)
        {
            Properties["Target"] = target;
            Properties["Bonus"] = bonus;
        }
    }
}