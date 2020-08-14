using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class RaceDefinition : DataSetObject
    {
        public string? Name { get; private set; }
        public List<string> Types { get; } = new List<string>();
        public string? RaceType { get; private set; }
        public List<string> RaceSubTypes { get; } = new List<string>();
        public string? Size { get; private set; }
        public int? StartingFeats { get; private set; }
        public int? Reach { get; private set; }
        public int? LegCount { get; private set; }
        public int? HandCount { get; private set; }
        public Dictionary<string, int> Movement { get; } = new Dictionary<string, int>();
        public List<Bonus> Bonuses { get; } = new List<Bonus>();
        public int? ChallengeRating { get; private set; }
        public (string clazz, int level)? MonsterClass { get; private set; }
        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                Helpers.CheckForMODorCOPYorCLEAR(field);
                Name = field.Value;
                return;
            }

            if (field.TryRemovePrefix("TYPE:", out var types))
            {
                Types.AddRange(types.Value.Split('.'));
                return;
            }

            if (field.TryRemovePrefix("RACETYPE:", out var rt))
            {
                RaceType = rt.Value;
                return;
            }

            if (field.Value == "RACESUBTYPE:.CLEAR")
            {
                Clear[nameof(RaceSubTypes)] = null;
                RaceSubTypes.Clear();
                return;
            }

            if (field.TryRemovePrefix("RACESUBTYPE:", out var st))
            {
                RaceSubTypes.AddRange(st.Value.Split('|'));
                return;
            }

            if (field.TryRemovePrefix("BONUS:", out var bonus))
            {
                Bonuses.Add(Bonus.Parse(bonus, true));
                return;
            }

            if (field.TryRemovePrefix("STARTFEATS:", out var sf))
            {
                StartingFeats = Helpers.ParseInt(sf);
                return;
            }

            if (field.TryRemovePrefix("SIZE:", out var size))
            {
                Size = size.Value;
                return;
            }

            if (field.TryRemovePrefix("LEGS:", out var legs))
            {
                LegCount = Helpers.ParseInt(legs);
                return;
            }

            if (field.TryRemovePrefix("HANDS:", out var hands))
            {
                HandCount = Helpers.ParseInt(hands);
                return;
            }

            if (field.TryRemovePrefix("MOVE:", out var move))
            {
                string? curKind = null;
                foreach (var part in move.Split(','))
                {
                    if (curKind != null)
                    {
                        Movement[curKind] = Helpers.ParseInt(part);
                        curKind = null;
                    }
                    else
                    {
                        curKind = part.Value;
                    }
                }

                if (curKind != null)
                {
                    throw new ParseFailedException(move, "Invalid MOVE tag");
                }
                return;
            }

            if (field.TryRemovePrefix("REACH:", out var reach))
            {
                Reach = Helpers.ParseInt(reach);
                return;
            }

            if (field.TryRemovePrefix("MONSTERCLASS:", out var mc))
            {
                var (c, l) = mc.SplitTuple(':');
                MonsterClass = (c.Value, Helpers.ParseInt(l));
                return;
            }

            if (field.TryRemovePrefix("CR:", out var cr))
            {
                ChallengeRating = Helpers.ParseInt(cr);
                return;
            }

            if (field.TryRemovePrefix("KIT:", out _))
            {
                // Ignoring this
                return;
            }

            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue(nameof(Name), Name);
            output.WriteListValue(nameof(Types), Types);
            output.WriteKeyValue(nameof(RaceType), RaceType);
            output.WriteKeyValue(nameof(StartingFeats), StartingFeats);
            output.WriteKeyValue(nameof(Size), Size);
            output.WriteKeyValue(nameof(Reach), Reach);
            output.WriteKeyValue(nameof(LegCount), LegCount);
            output.WriteKeyValue(nameof(HandCount), HandCount);
            output.WriteKeyValue(nameof(ChallengeRating), ChallengeRating);
            output.WriteListValue(nameof(Bonuses), Bonuses);
            if (Movement.Any())
            {
                output.WriteObjectValue("Movement", () =>
                {
                    foreach (var (k, v) in Movement)
                    {
                        output.WriteKeyValue(k, v);
                    }
                });
            }

            if (MonsterClass.HasValue)
            {
                output.WriteObjectValue("MonsterClass", () =>
                {
                    output.WriteKeyValue("Class", MonsterClass.Value.clazz);
                    output.WriteKeyValue("Level", MonsterClass.Value.level);
                });
            }
            base.DumpMembers(output);
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineRace(");
            base.Dump(output);
            output.Write(")");
        }
    }
}