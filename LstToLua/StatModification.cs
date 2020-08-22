using System;

namespace Primordially.LstToLua
{
    internal class StatModification : LuaObject
    {
        public StatModification(TextSpan value)
        {
            var (typeSpan, data) = value.SplitTuple('|');
            Type = typeSpan.Value switch
            {
                "LOCK" => StatModificationType.Lock,
                "UNLOCK" => StatModificationType.Unlock,
                "NONSTAT" => StatModificationType.NonStat,
                "STAT" => StatModificationType.Stat,
                "MINVALUE" => StatModificationType.MinValue,
                "MAXVALUE" => StatModificationType.MaxValue,
                _ => throw new ParseFailedException(typeSpan, "Unknown DEFINESTAT"),
            };
            TextSpan stat = data;
            switch (Type)
            {
                case StatModificationType.Lock:
                case StatModificationType.MinValue:
                case StatModificationType.MaxValue:
                    TextSpan v;
                    (stat, v) = data.SplitTuple('|');
                    Stat = stat.Value;
                    Value = v.Value;
                    break;
                case StatModificationType.Unlock:
                case StatModificationType.NonStat:
                case StatModificationType.Stat:
                    Value = null;
                    Stat = stat.Value;
                    break;
                default:
                    throw new InvalidOperationException("How did we get here?");
            }
        }

        public string Stat { get; }
        public StatModificationType Type { get; }
        public Formula? Value { get; }
    }
}