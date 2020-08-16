using System;
using System.Collections.Generic;

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
    }
}