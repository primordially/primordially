using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace PCSharpGen.LstToLua
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

        public void WriteValue(bool value)
        {
            Write(value.ToString().ToLowerInvariant());
        }

        public void WriteKeyValue(ReadOnlySpan<char> key, ReadOnlySpan<char> value)
        {
            Write(key);
            Write("=");
            WriteValue(value);
            Write(",\n");
        }

        public void WriteKeyValue(ReadOnlySpan<char> key, int value)
        {
            Write(key);
            Write("=");
            WriteValue(value);
            Write(",\n");
        }

        public void WriteKeyValue(ReadOnlySpan<char> key, bool value)
        {
            Write(key);
            Write("=");
            WriteValue(value);
            Write(",\n");
        }

        public void WriteObjectValue(ReadOnlySpan<char> key, Action objectMembersWriter)
        {
            Write(key);
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
            _indent = _indent[0..^2];
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
            _indent = _indent[0..^2];
            Write("end");
        }

        public void WriteList(string name, IEnumerable<object> items)
        {
            if (items.Any())
            {
                WriteObjectValue(name, () =>
                {
                    foreach (var item in items)
                    {
                        if (item is int value)
                        {
                            WriteValue(value);
                            Write(", ");
                        }
                        else if (item is IDumpable dmp)
                        {
                            dmp.Dump(this);
                            Write(",\n");
                        }
                        else
                        {
                            WriteValue(item.ToString());
                            Write(",\n");
                        }
                    }
                });
            }
        }
    }
}