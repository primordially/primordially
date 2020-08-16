using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal class ServesAs : LuaObject
    {
        public string? Ability { get; }
        public bool Class { get; }
        public bool Race { get; }
        public bool Skill { get; }
        public List<string> Names { get; } = new List<string>();

        public ServesAs(TextSpan value)
        {
            using var enumerator = value.Split('|').GetEnumerator();
            if (!enumerator.MoveNext())
            {
                throw new ParseFailedException(value, "Cannot parse SERVESAS");
            }

            if (enumerator.Current.TryRemovePrefix("ABILITY=", out var ability))
            {
                Ability = ability.Value;
            }
            else if (enumerator.Current.Value == "CLASS")
            {
                Class = true;
            }
            else if (enumerator.Current.Value == "RACE")
            {
                Race = true;
            }
            else if (enumerator.Current.Value == "SKILL")
            {
                Skill = true;
            }
            else
            {
                throw new ParseFailedException(enumerator.Current, "Cannot parse SERVESAS");
            }

            while (enumerator.MoveNext())
            {
                Names.Add(enumerator.Current.Value);
            }
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            if (Ability != null)
            {
                output.WriteProperty("Ability", Ability);
            }
            else if (Class)
            {
                output.WriteProperty("Class", true);
            }
            else if (Race)
            {
                output.WriteProperty("Race", true);
            }
            else if (Skill)
            {
                output.WriteProperty("Skill", true);
            }
            output.WriteProperty("Names", Names);
            base.DumpMembers(output);
        }
    }
}