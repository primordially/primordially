namespace Primordially.LstToLua
{
    internal class HitDie : LuaObject
    {
        public HitDie(TextSpan value)
        {
            if (value.TryRemoveInfix("|", out value, out var condition))
            {
                if (condition.TryRemovePrefix("CLASS.TYPE=", out condition))
                {
                    Properties["ClassType"] = condition.Value;
                }
                else if (condition.TryRemovePrefix("CLASS=", out condition))
                {
                    Properties["ClassName"] = condition.Value;
                }
                else
                {
                    throw new ParseFailedException(condition, "Unable to parse HITDIE");
                }
            }

            Properties["Formula"] = new Formula(value);
        }
    }
}