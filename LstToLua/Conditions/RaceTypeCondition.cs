using System;

namespace Primordially.LstToLua.Conditions
{
    internal class RaceTypeCondition : Condition
    {
        public string RequiredRaceType { get; }

        private RaceTypeCondition(bool invert, string requiredRaceType) : base(invert)
        {
            RequiredRaceType = requiredRaceType;
        }

        public override void DumpCondition(LuaTextWriter output)
        {
            output.Write("character.Race.IsType(");
            output.WriteValue(RequiredRaceType.AsSpan());
            output.Write(")");
        }

        public static Condition Parse(TextSpan value, bool invert)
        {
            return new RaceTypeCondition(invert, value.Value);
        }
    }
}