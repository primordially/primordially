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

        private NaturalAttack(string name, string[] types, string count, string damage, string? specialDescription)
        {
            Name = name;
            Types = types;
            Count = count;
            Damage = damage;
            SpecialDescription = specialDescription;
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteListValue("Types", Types);
            output.WriteKeyValue("Count", Count);
            output.WriteKeyValue("Damage", Damage);
            if (SpecialDescription != null)
            {
                output.WriteKeyValue("SpecialDescription", SpecialDescription);
            }
            base.DumpMembers(output);
        }

        public static IEnumerable<NaturalAttack> ParseAll(TextSpan value)
        {
            foreach (var part in value.Split('|'))
            {
                yield return Parse(part);
            }
        }

        private static NaturalAttack Parse(TextSpan value)
        {
            var parts = value.Split(',').ToList();
            if (parts.Count != 4 && parts.Count != 5)
            {
                throw new ParseFailedException(value, "Unable to parse NATURALATTACKS");
            }

            string? specialDescription = null;
            if (parts.Count == 5)
            {
                specialDescription = parts[4].Value;
            }

            return new NaturalAttack(parts[0].Value, parts[1].Value.Split('.'), parts[2].Value, parts[3].Value, specialDescription);
        }
    }
}