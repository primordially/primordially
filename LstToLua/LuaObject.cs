using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Runtime.CompilerServices;

namespace Primordially.LstToLua
{
    internal class LuaObject : IDumpable
    {
        private static readonly ConditionalWeakTable<Type, List<PropertyDefinition>> PropertyDefinitionsCache = new ConditionalWeakTable<Type, List<PropertyDefinition>>();

        protected void AddPropertyDefinitions(Func<IEnumerable<PropertyDefinition>> defs)
        {
            if (PropertyDefinitionsCache.TryGetValue(GetType(), out _))
            {
                return;
            }

            _tempPropertyDefinitions ??= new List<PropertyDefinition>();
            _tempPropertyDefinitions.AddRange(defs());
        }

        private List<PropertyDefinition>? _tempPropertyDefinitions;
        private List<PropertyDefinition> GetPropertyDefinitions()
        {
            if (!PropertyDefinitionsCache.TryGetValue(GetType(), out var value))
            {
                Debug.Assert(_tempPropertyDefinitions != null, nameof(_tempPropertyDefinitions) + " != null");
                PropertyDefinitionsCache.Add(GetType(), _tempPropertyDefinitions);
                value = _tempPropertyDefinitions;
            }
            return value;
        }
        private readonly Dictionary<string, object?> _properties = new Dictionary<string, object?>();
        private readonly Dictionary<string, string?> _clear = new Dictionary<string, string?>();

        public IDictionary<string, object?> Properties => _properties;
        public IDictionary<string, string?> Clear => _clear;

        [return: MaybeNull]
        protected T Get<T>(string name)
            where T : class
        {
            return Properties.Get<T>(name);
        }

        protected void Set(string name, object? value)
        {
            Properties[name] = value;
        }

        public virtual void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            DumpMembers(output);
            output.WriteEndObject();
        }

        public virtual void AddField(TextSpan field)
        {
            foreach (var def in GetPropertyDefinitions())
            {
                if (def(field, _properties, _clear))
                {
                    return;
                }
            }

            if (field.StartsWith("TEMPVALUE:") || field.StartsWith("MODIFY:FACE"))
            {
                // TODO: These are undocumented
                return;
            }

            UnknownField(field);
        }

        protected virtual void UnknownField(TextSpan field)
        {
            throw new ParseFailedException(field, $"Unknown field '{field.Value}'");
        }

        private static readonly List<string> PropertyOrder = new List<string>
        {
            "Name",
            "Key",
            "SortKey",
            "Category",
        };

        protected virtual void DumpMembers(LuaTextWriter output)
        {
            var props = new Dictionary<string, object?>(_properties);
            foreach (var key in PropertyOrder)
            {
                if (props.Remove(key, out var value))
                {
                    output.WriteProperty(key, value);
                }
            }

            foreach (var (key, value) in props.OrderBy(GetOrder).ThenBy(p => p.Key))
            {
                output.WriteProperty(key, value);
            }

            if (Clear.Any())
            {
                output.WriteObjectValue("Clear", () =>
                {
                    foreach (var (k, v) in Clear)
                    {
                        output.WriteKey(k);
                        output.Write("=");
                        output.WriteValue((object?)v);
                        output.Write(",\n");
                    }
                });
            }
        }

        private int GetOrder(KeyValuePair<string, object?> arg)
        {
            var value = arg.Value;
            if (value is IDictionary)
            {
                return 2;
            }

            if (value is IEnumerable && !(value is string))
            {
                return 1;
            }

            return 0;
        }
    }
}
