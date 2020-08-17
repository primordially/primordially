namespace Primordially.LstToLua
{
    internal class BonusType : IDumpable
    {
        public BonusType(string name, bool replace, bool stack)
        {
            Name = name;
            Replace = replace;
            Stack = stack;
        }

        public string Name { get; }
        /// <summary>
        ///   'Replace' bonuses stack with other 'Replace' bonuses,
        ///   then the final value of all 'Replace' bonuses is treated as a "normal" non-stacking bonus
        /// </summary>
        public bool Replace { get; }
        /// <summary>
        ///   'Stack' bonuses stack with all other bonuses.
        /// </summary>
        public bool Stack { get; }

        public static bool TryParse(TextSpan value, out BonusType? type)
        {
            if (!value.StartsWith("TYPE="))
            {
                type = null;
                return false;
            }

            value = value.Substring("TYPE=".Length);
            var name = value;
            var dotIdx = name.IndexOf('.');
            if (dotIdx >= 0)
            {
                name = name.Substring(0, dotIdx);
            }

            bool replace = value.EndsWith(".REPLACE");
            bool stack = value.EndsWith(".STACK");
            type = new BonusType(name.Value, replace, stack);
            return true;
        }

        public void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            output.WriteProperty("Name", Name);
            if (Replace)
                output.WriteProperty("Replace", Replace);
            if (Stack)
                output.WriteProperty("Stack", Stack);
            output.WriteEndObject();
        }
    }
}