using System.Collections.Generic;
using System.Linq;

namespace PCSharpGen.LstToLua.Conditions
{
    internal class ClassCondition : Condition
    {
        public int Count { get; }
        public bool Any { get; }
        public IReadOnlyDictionary<string, int> RequiredClassLevels { get; }
        public IReadOnlyDictionary<string, int> RequiredSpellCastingLevels { get; }
        public IReadOnlyDictionary<string, int> RequiredClassTypeLevels { get; }
        public ClassCondition(bool inverted, int count, bool any, IReadOnlyDictionary<string, int> requiredClassLevels, IReadOnlyDictionary<string, int> requiredSpellCastingLevels, IReadOnlyDictionary<string, int> requiredClassTypeLevels) : base(inverted)
        {
            Count = count;
            Any = any;
            RequiredClassLevels = requiredClassLevels;
            RequiredSpellCastingLevels = requiredSpellCastingLevels;
            RequiredClassTypeLevels = requiredClassTypeLevels;
        }

        public static ClassCondition Parse(TextSpan value, bool invert)
        {
            bool any = false;
            Dictionary<string, int> requiredClasses = new Dictionary<string, int>();
            Dictionary<string, int> requiredSpellCasting = new Dictionary<string, int>();
            Dictionary<string, int> requiredTypes = new Dictionary<string, int>();

            var parts = value.Split(',').ToArray();
            if (parts.Length < 2)
            {
                throw new ParseFailedException(value, "Unable to parse PRECLASS");
            }

            int count = Helpers.ParseInt(parts[0]);
            foreach (var part in parts.Skip(1))
            {
                if (part.Value == "ANY")
                {
                    any = true;
                    continue;
                }

                var (k, v) = part.SplitTuple('=');
                if (k.Value == "SPELLCASTER")
                {
                    requiredSpellCasting[""] = Helpers.ParseInt(v);
                }
                else if (k.StartsWith("SPELLCASTER."))
                {
                    var kind = k.Substring("SPELLCASTER.".Length);
                    requiredSpellCasting[kind.Value] = Helpers.ParseInt(v);
                }
                else if (k.StartsWith("TYPE."))
                {
                    var type = k.Substring("TYPE.".Length);
                    requiredTypes[type.Value] = Helpers.ParseInt(v);
                }
                else
                {
                    requiredClasses[k.Value] = Helpers.ParseInt(v);
                }
            }

            return new ClassCondition(invert, count, any, requiredClasses, requiredSpellCasting, requiredTypes);
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            if (Inverted)
            {
                output.Write("not (");
            }

            output.Write(Count.ToString());
            output.Write(" <= #filter(ipairs(character.ClassLevels),\n");
            output.WriteStartFunction("class, level");
            if (Any)
            {
                output.Write("return true\n");
            }
            else
            {
                output.Write("return ");

                var conditions = RequiredClassLevels.Select(t => $"class == \"{t.Key}\" and level >= {t.Value}").Concat(
                    RequiredSpellCastingLevels.Select(t => $"GetSpellCastingType(class) == \"{t.Key}\" and level >= {t.Value}")).Concat(
                    RequiredClassTypeLevels.Select(t => $"ClassIsType(class, \"{t.Key}\") and level >= {t.Value}"));

                output.Write(string.Join(" or ", conditions.Select(c => $"({c})")));
                output.WriteLine();
            }
            output.WriteEndFunction();
            output.Write(")");

            if (Inverted)
            {
                output.Write(")");
            }
        }
    }
}