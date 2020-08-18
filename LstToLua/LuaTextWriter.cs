using System;
using System.Collections;
using System.Globalization;
using System.IO;
using System.Linq;

namespace Primordially.LstToLua
{
    public class LuaTextWriter
    {
        private readonly TextWriter _output;
        private string _indent = "";
        private bool _atStartLine = true;

        public LuaTextWriter(TextWriter output)
        {
            _output = output;
        }

        private void WriteSegment(ReadOnlySpan<char> value, bool endLine)
        {
            if (_atStartLine)
            {
                _atStartLine = false;
                _output.Write(_indent);
            }

            _output.Write(value);
            if (endLine)
            {
                _output.WriteLine();
                _atStartLine = true;
            }
        }

        public void Write(ReadOnlySpan<char> value)
        {
            int start = 0;
            bool inNewline = false;
            for (int i = 0; i < value.Length; i++)
            {
                var c = value[i];
                if (c == '\n' || c == '\r')
                {
                    if (!inNewline)
                    {
                        inNewline = true;
                        WriteSegment(value[start..i], true);
                        start = -1;
                    }

                    continue;
                }

                inNewline = false;
                if (start == -1)
                {
                    start = i;
                }
            }

            if (start != -1)
            {
                WriteSegment(value.Slice(start), false);
            }
        }

        public void WriteLine()
        {
            Write("\n");
        }

        public void WriteValue(object? value)
        {
            if (value == null)
                Write("nil");
            else if (value is string str)
                WriteValue(str.AsSpan());
            else if (value is int i)
                WriteValue(i);
            else if (value is double d)
                WriteValue(d);
            else if (value is bool b)
                WriteValue(b);
            else if (value is IDumpable dump)
                WriteValue(dump);
            else if (value is IDictionary dict)
                WriteValue(dict);
            else if (value is IEnumerable e)
                WriteValue(e);
            else if (value.GetType().IsEnum)
                WriteValue(value.ToString().AsSpan());
            else 
                throw new NotSupportedException(value.GetType().FullName);
        }

        public void WriteValues(IEnumerable values)
        {
            bool first = true;
            foreach (object? value in values)
            {
                if (!first)
                {
                    Write(", ");
                }
                else
                {
                    first = false;
                }
                WriteValue(value);
            }
        }

        public void WriteValue(string value)
        {
            WriteValue(value.AsSpan());
        }

        public void WriteValue(ReadOnlySpan<char> value)
        {
            Write("\"");
            if (value.Contains('"'))
            {
                Write(value.ToString().Replace("\"", "\\\""));
            }
            else
            {
                Write(value);
            }

            Write("\"");
        }

        public void WriteValue(int value)
        {
            Write(value.ToString());
        }

        public void WriteValue(double value)
        {
            if (double.IsPositiveInfinity(value))
            {
                Write("math.huge");
            }
            else if (double.IsNegativeInfinity(value))
            {
                Write("-math.huge");
            }
            else
            {
                Write(value.ToString(CultureInfo.InvariantCulture));
            }
        }

        public void WriteValue(IDumpable value)
        {
            value.Dump(this);
        }

        public void WriteValue(bool value)
        {
            Write(value.ToString().ToLowerInvariant());
        }

        public void WriteKey(ReadOnlySpan<char> key)
        {
            if (key.Contains(' '))
            {
                Write("['");
                Write(key);
                Write("']");
            }
            else
            {
                Write(key);
            }
        }

        public void WriteProperty(ReadOnlySpan<char> key, object? value)
        {
            if (value == null)
                return;
            if (value is IEnumerable e && !e.OfType<object>().Any())
                return;
            WriteKey(key);
            Write("=");
            WriteValue(value);
            Write(",\n");
        }

        public void WriteObjectValue(ReadOnlySpan<char> key, Action objectMembersWriter)
        {
            WriteKey(key);
            Write("=");
            WriteStartObject();
            objectMembersWriter();
            WriteEndObject();
            Write(",\n");
        }

        public void WriteStartObject()
        {
            Write("{\n");
            _indent += "  ";
        }

        public void WriteEndObject()
        {
            _indent = _indent[..^2];
            Write("}");
        }

        public void WriteStartFunction(ReadOnlySpan<char> args)
        {
            Write("function (");
            Write(args);
            Write(")\n");
            _indent += "  ";
        }

        public void WriteEndFunction()
        {
            _indent = _indent[..^2];
            Write("end");
        }

        public void WriteValue(IDictionary dict)
        {
            WriteStartObject();
            foreach (string? key in dict.Keys)
            {
                if (key == null)
                    continue;
                WriteProperty(key, dict[key]);
            }
            WriteEndObject();
        }

        public void WriteValue(IEnumerable items)
        {
            WriteStartObject();
            foreach (var item in items)
            {
                WriteValue(item);
                if (item is int || item is double)
                {
                    Write(", ");
                }
                else
                {
                    Write(",\n");
                }
            }
            WriteEndObject();
        }
    }
}