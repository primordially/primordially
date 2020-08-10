using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class ServesAs : LuaObject
    {
        public string? Ability { get; private set; }
        public bool Class { get; private set; }
        public bool Race { get; private set; }
        public bool Skill { get; private set; }
        public List<string> Names { get; } = new List<string>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Ability != null)
            {
                output.WriteKeyValue("Ability", Ability);
            }
            else if (Class)
            {
                output.WriteKeyValue("Class", true);
            }
            else if (Race)
            {
                output.WriteKeyValue("Race", true);
            }
            else if (Skill)
            {
                output.WriteKeyValue("Skill", true);
            }
            output.WriteListValue("Names", Names);
            base.DumpMembers(output);
        }

        public static ServesAs Parse(TextSpan value)
        {
            var result = new ServesAs();
            using var enumerator = value.Split('|').GetEnumerator();
            if (!enumerator.MoveNext())
            {
                throw new ParseFailedException(value, "Cannot parse SERVESAS");
            }

            if (enumerator.Current.TryRemovePrefix("ABILITY=", out var ability))
            {
                result.Ability = ability.Value;
            }
            else if (enumerator.Current.Value == "CLASS")
            {
                result.Class = true;
            }
            else if (enumerator.Current.Value == "RACE")
            {
                result.Race = true;
            }
            else if (enumerator.Current.Value == "SKILL")
            {
                result.Skill = true;
            }
            else
            {
                throw new ParseFailedException(enumerator.Current, "Cannot parse SERVESAS");
            }

            while (enumerator.MoveNext())
            {
                result.Names.Add(enumerator.Current.Value);
            }

            return result;
        }
    }
}