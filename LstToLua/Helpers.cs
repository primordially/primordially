using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using Primordially.LstToLua.Choosers;

namespace Primordially.LstToLua
{
    internal static class Helpers
    {
        public static TValue GetOrAdd<TKey, TValue>(this IDictionary<TKey, TValue> that, TKey key, Func<TValue> valueFactory)
            where TKey : notnull
        {
            if (that.TryGetValue(key, out var value))
            {
                return value;
            }

            return that[key] = valueFactory();
        }

        public static bool ParseBool(TextSpan value)
        {
            switch (value.Value.ToLowerInvariant())
            {
                case "yes":
                case "true":
                case "display":
                case "export":
                case "qualify":
                    return true;
                case "n":
                case "no":
                case "false":
                    return false;
            }

            throw new ParseFailedException(value, $"Unable to parse '{value.Value}' as a boolean.");
        }

        public static int ParseInt(TextSpan value)
        {
            if (int.TryParse(value.Value, out int result))
            {
                return result;
            }

            throw new ParseFailedException(value, $"Unable to parse '{value.Value}' as an integer.");
        }

        public static double ParseDouble(TextSpan value)
        {
            if (double.TryParse(value.Value, out double result))
            {
                return result;
            }

            throw new ParseFailedException(value, $"Unable to parse '{value.Value}' as an integer.");
        }

        public static void CheckForMODorCOPYorCLEAR(TextSpan value)
        {
            if (value.IndexOf(".MOD") != -1)
            {
                throw new ParseFailedException(value, ".MOD is not currently supported.");
            }

            if (value.IndexOf(".COPY=") != -1)
            {
                throw new ParseFailedException(value, ".COPY is not currently supported.");
            }

            if (value.IndexOf(".CLEAR") != -1)
            {
                throw new ParseFailedException(value, ".CLEAR is not currently supported.");
            }
        }

        public static void ParseChoose(TextSpan value, IChooseable that)
        {
            var chooser = Chooser.Convert(value, out var choiceCount);
            if (chooser != null)
            {
                that.Choice = new Choice
                {
                    Choose = chooser,
                    MaxTimes = choiceCount,
                };
            }
        }
    }
}