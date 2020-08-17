using System;
using System.Linq;
using System.Runtime.CompilerServices;

namespace Primordially.LstToLua
{
    internal static class Property
    {
        public static PropertyDefinition String(string token, string name)
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    properties[name] = value.Value;
                    return true;
                }

                return false;
            };
        }

        public static PropertyDefinition Parsed<T>(string token, string name, Func<TextSpan, T> parse)
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    properties[name] = parse(value);

                    return true;
                }

                return false;
            };
        }

        public static PropertyDefinition Double(string token, string name)
        {
            return Parsed(token, name, Helpers.ParseDouble);
        }

        public static PropertyDefinition Integer(string token, string name,
            params (string v, int? result)[] replacements)
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    var rep = replacements.FirstOrDefault(r => r.v == value.Value);
                    if (rep.v != null)
                    {
                        properties[name] = rep.result;
                    }
                    else
                    {
                        properties[name] = Helpers.ParseInt(value);
                    }

                    return true;
                }

                return false;
            };
        }

        public static PropertyDefinition Boolean(string token, string name)
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    properties[name] = Helpers.ParseBool(value);

                    return true;
                }

                return false;
            };
        }

        public static PropertyDefinition Formula(string token, string name)
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    properties[name] = new Formula(value.Value);
                    return true;
                }

                return false;
            };
        }

        public static PropertyDefinition Single<T>(string token, string name)
            where T : class
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    if (typeof(T) == typeof(string))
                    {
                        properties[name] = Unsafe.As<T>(value.Value);
                    }
                    else
                    {
                        properties[name] = (T) (Activator.CreateInstance(typeof(T), value) ??
                                                throw new InvalidOperationException());
                    }

                    return true;
                }

                return false;
            };
        }
        public static PropertyDefinition ClearableSingle<T>(string token, string name)
            where T : class
        {
            var single = Single<T>(token, name);
            return (value, properties, clear) =>
            {
                if (value.Value == token + ":.CLEAR")
                {
                    properties.Remove(name);
                    clear[name] = null;
                    return true;
                }

                return single(value, properties, clear);
            };
        }

        public static PropertyDefinition Multiple<T>(string token, string name)
            where T : class
        {
            return (value, properties, clear) =>
            {
                if (value.Value == token + ":.CLEAR")
                {
                    clear[name] = null;
                    properties.GetList<T>(name).Clear();
                    return true;
                }

                if (value.TryRemovePrefix(token + ":.CLEAR.", out value))
                {
                    clear[name] = value.Value;
                    return true;
                }

                if (value.TryRemovePrefix(token + ":", out value))
                {
                    var list = properties.GetList<T>(name);
                    list.Add(Create<T>(value));
                    return true;
                }

                return false;
            };
        }

        private static T Create<T>(TextSpan value) where T : class
        {
            if (typeof(T) == typeof(string))
            {
                return Unsafe.As<T>(value.Value);
            }

            return (T) (Activator.CreateInstance(typeof(T), value) ?? throw new InvalidOperationException());
        }

        public static PropertyDefinition SeparatedList<T>(char separator, string token, string name)
            where T : class
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    var list = properties.GetList<T>(name);
                    foreach (var part in value.Split(separator))
                    {
                        if (part.Value == ".CLEAR" || 
                            (separator == '.' && part.Value == "CLEAR"))
                        {
                            clear[name] = null;
                            list.Clear();
                            continue;
                        }
                        list.Add(Create<T>(part));
                    }

                    return true;
                }

                return false;
            };
        }

        public static PropertyDefinition Dictionary<TValue>(string token, string name)
            where TValue : class
        {
            return (value, properties, clear) =>
            {
                if (value.TryRemovePrefix(token + ":", out value))
                {
                    var (k, v) = value.SplitTuple('|');
                    var dict = properties.GetDictionary<string, TValue>(name);
                    dict[k.Value] = Create<TValue>(v);
                    return true;
                }

                return false;
            };
        }
    }
}
