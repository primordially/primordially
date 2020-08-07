using System.Diagnostics.CodeAnalysis;

namespace Primordially.LstToLua.Conditions
{
    internal abstract class Condition : IDumpable
    {
        protected Condition(bool inverted)
        {
            Inverted = inverted;
        }

        public bool Inverted { get; }

        public static bool TryParse(TextSpan value, [NotNullWhen(true)] out Condition? result)
        {
            bool invert = false;
            if (value.StartsWith('!'))
            {
                invert = true;
                value = value.Substring(1);
            }

            if (!value.Value.Contains(':'))
            {
                result = null;
                return false;
            }

            var (k, v) = value.SplitTuple(':');

            switch (k.Value)
            {
                case "PREABILITY":
                    result = AbilityCondition.Parse(v, invert);
                    return true;

                // EQ , LT , LTEQ , GT , GTEQ , or NEQ
                case "PREVAREQ":
                case "PREVARLT":
                case "PREVARLTEQ":
                case "PREVARGT":
                case "PREVARGTEQ":
                case "PREVARNEQ":
                    result = VariableCondition.Parse(v, invert, k.Value.Substring("PREVAR".Length));
                    return true;

                case "PREMULT":
                    result = OrCondition.Parse(v, invert);
                    return true;

                case "PREALIGN":
                    result = AlignmentCondition.Parse(v, invert);
                    return true;

                case "PRECLASS":
                    result = ClassCondition.Parse(v, invert);
                    return true;

                case "PREPCLEVEL":
                    result = PCLevelCondition.Parse(v, invert);
                    return true;

                case "PRESPELLTYPE":
                    result = KnownSpellTypeCondition.Parse(v, invert);
                    return true;

                case "PRESKILL":
                    result = SkillCondition.Parse(v, invert);
                    return true;

                case "PRETOTALAB":
                    result = TotalAttackBonusCondition.Parse(v, invert);
                    return true;

                case "PRESPELL":
                    result = SpellCondition.Parse(v, invert);
                    return true;

                case "PRELANG":
                    result = LanguageCondition.Parse(v, invert);
                    return true;

                case "PREFACT":
                    result = FactCondition.Parse(v, invert);
                    return true;

                case "PRESPELLCAST":
                    result = SpellCastingCondition.Parse(v, invert);
                    return true;

                case "PRERACE":
                    result = RaceCondition.Parse(v, invert);
                    return true;

                case "PRETEMPLATE":
                    result = TemplateCondition.Parse(v, invert);
                    return true;

                case "PRESPELLSCHOOL":
                    result = SpellSchoolCondition.Parse(v, invert);
                    return true;

                default:
                    if (k.Value.StartsWith("PRE"))
                    {
                        throw new ParseFailedException(value, $"Unknown Condition type '{k}'");
                    }

                    result = null;
                    return false;

            }
        }

        public virtual void Dump(LuaTextWriter output)
        {
            output.WriteStartFunction("character");
            output.Write("return ");
            DumpCondition(output);
            output.WriteLine();
            output.WriteEndFunction();
        }

        public abstract void DumpCondition(LuaTextWriter output);
    }
}