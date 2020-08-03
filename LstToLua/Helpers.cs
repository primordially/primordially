using System;
using System.Collections.Generic;

namespace PCSharpGen.LstToLua
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

        public static int ParseInt(TextSpan value)
        {
            if (int.TryParse(value.Value, out int result))
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
    }
}