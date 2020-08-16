using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Runtime.CompilerServices;

namespace Primordially.LstToLua
{
    public static class PropertyExtensions
    {
        [return: MaybeNull]
        public static T Get<T>(this IDictionary<string, object?> properties, string name)
            where T : class
        {
            if (properties.TryGetValue(name, out var value))
            {
                return Unsafe.As<T>(value);
            }

            return null;
        }

        public static List<T> GetList<T>(this IDictionary<string, object?> properties, string name)
        {
            if (!properties.TryGetValue(name, out var objList))
            {
                objList = properties[name] = new List<T>();
            }

            Debug.Assert(objList != null);
            return (List<T>) objList;
        }

        public static Dictionary<TKey, TValue> GetDictionary<TKey, TValue>(this IDictionary<string, object?> properties, string name)
            where TKey : notnull
        {
            if (!properties.TryGetValue(name, out var objDict))
            {
                objDict = properties[name] = new Dictionary<TKey, TValue>();
            }

            Debug.Assert(objDict != null);
            return (Dictionary<TKey, TValue>) objDict;
        }
    }
}