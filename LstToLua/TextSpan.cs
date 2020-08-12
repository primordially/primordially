using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Text;
using System.Threading;

namespace Primordially.LstToLua
{
    internal struct TextSpan
    {
        public TextSpan(string file, int lineNumber, int linePosition, string value)
        {
            File = file;
            LineNumber = lineNumber;
            LinePosition = linePosition;
            Value = value;
        }

        public string File { get; }
        public int LineNumber { get; }
        public int LinePosition { get; }
        public string Value { get; }

        public override string ToString()
        {
            return $"({LineNumber},{LinePosition}): {Value}";
        }

        public (TextSpan left, TextSpan right) SplitTuple(char c, bool last = false, bool throwOnError = true)
        {
            var idx = last ? Value.LastIndexOf(c) : Value.IndexOf(c);
            if (idx < 0)
            {
                if (throwOnError)
                    throw new ParseFailedException(this, $"Expected '{c}' separator in value.");
                return (this, default)!;
            }

            var left = new TextSpan(File, LineNumber, LinePosition, Value.Substring(0, idx));
            var right = new TextSpan(File, LineNumber, LinePosition + idx + 1, Value.Substring(idx + 1));

            return (left, right);
        }

        public IEnumerable<TextSpan> Split(char splitOn, (char start, char end)? quotedBy = null)
        {
            if (Value == null)
            {
                yield break;
            }
            var current = new StringBuilder();
            var currentStartIndex = 0;
            var quoteDepth = 0;
            for (int i = 0; i < Value.Length; i++)
            {
                var c = Value[i];

                if (quotedBy.HasValue && c == quotedBy.Value.start)
                {
                    quoteDepth++;
                }

                if (quotedBy.HasValue && c == quotedBy.Value.end)
                {
                    quoteDepth--;
                }

                if (c == splitOn && quoteDepth == 0)
                {
                    if (current.Length > 0)
                    {
                        yield return new TextSpan(File, LineNumber, LinePosition + currentStartIndex, current.ToString());
                        current.Clear();
                    }

                    continue;
                }

                if (current.Length == 0)
                {
                    currentStartIndex = i;
                }

                current.Append(c);
            }

            if (current.Length > 0)
            {
                yield return new TextSpan(File, LineNumber, LinePosition + currentStartIndex, current.ToString());
            }
        }

        public bool StartsWith(char value)
        {
            return Value.StartsWith(value);
        }

        public bool StartsWith(string value)
        {
            return Value.StartsWith(value);
        }

        public bool TryRemoveInfix(string value, out TextSpan left, out TextSpan right)
        {
            var idx = IndexOf(value);
            if (idx == -1)
            {
                left = default;
                right = default;
                return false;
            }

            left = Substring(0, idx);
            right = Substring(idx + value.Length);
            return true;
        }

        public bool TryRemovePrefix(string prefix, out TextSpan value)
        {
            if (StartsWith(prefix))
            {
                value = Substring(prefix.Length);
                return true;
            }

            value = this;
            return false;
        }

        public bool TryRemoveSuffix(string suffix, out TextSpan value)
        {
            if (EndsWith(suffix))
            {
                value = Substring(0, Value.Length - suffix.Length);
                return true;
            }

            value = this;
            return false;
        }

        public TextSpan Substring(int startIndex)
        {
            return new TextSpan(File, LineNumber, LinePosition + startIndex, Value.Substring(startIndex));
        }

        public TextSpan Substring(int startIndex, int length)
        {
            if (length < 0)
            {
                length += Value.Length;
            }
            return new TextSpan(File, LineNumber, LinePosition + startIndex, Value.Substring(startIndex, length));
        }

        public int IndexOf(char c)
        {
            return Value.IndexOf(c);
        }

        public int IndexOf(string value)
        {
            return Value.IndexOf(value, StringComparison.Ordinal);
        }

        public bool EndsWith(char value)
        {
            return Value.EndsWith(value);
        }

        public bool EndsWith(string value)
        {
            return Value.EndsWith(value);
        }
    }
}