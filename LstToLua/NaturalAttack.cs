using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class NaturalAttack : LuaObject
    {
        public string Name { get; }
        public string[] Types { get; }
        public string Count { get; }
        public DiceFormula Damage { get; }
        public string? SpecialDescription { get; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteProperty("Name", Name);
            output.WriteProperty("Types", Types);
            output.WriteProperty("Count", Count);
            output.WriteProperty("Damage", Damage);
            if (SpecialDescription != null)
            {
                output.WriteProperty("SpecialDescription", SpecialDescription);
            }
            base.DumpMembers(output);
        }

        public static IEnumerable<NaturalAttack> ParseAll(TextSpan value)
        {
            foreach (var part in value.Split('|'))
            {
                yield return new NaturalAttack(part);
            }
        }

        public NaturalAttack(TextSpan value)
        {
            var parts = value.Split(',').ToList();
            if (parts.Count != 4 && parts.Count != 5)
            {
                throw new ParseFailedException(value, "Unable to parse NATURALATTACKS");
            }

            if (parts.Count == 5)
            {
                SpecialDescription = parts[4].Value;
            }
            Name = parts[0].Value;
            Types = parts[1].Value.Split('.');
            Count = parts[2].Value;
            Damage = parts[3].Value;
        }
    }
}