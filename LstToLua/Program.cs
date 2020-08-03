using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;

namespace PCSharpGen.LstToLua
{
    class Program
    {
        static void Main(string[] args)
        {
            var lstFile = args[0];
            var luaFile = args[1];

            var lines = ReadTsv(lstFile).ToList();

            using (var outputStream = new FileStream(luaFile, FileMode.Create, FileAccess.Write))
            using (var output = new StreamWriter(outputStream))
            {
                var luaWriter = new LuaTextWriter(output);
                string? state = null;
                ClassDefinition? classDefinition = null;
                foreach (var line in lines)
                {
                    var firstField = line.Fields.First();
                    switch (state)
                    {
                        case "classStart":
                            Debug.Assert(classDefinition != null);

                            if (!firstField.StartsWith("CLASS:"))
                            {
                                state = "class";
                                goto case "class";
                            }
                            classDefinition.AddLine(line);

                            break;

                        case "class":
                            Debug.Assert(classDefinition != null);

                            if (firstField.StartsWith("CLASS:"))
                            {
                                classDefinition.Dump(luaWriter);
                                classDefinition = null;
                                state = null;
                                goto default;
                            }

                            classDefinition.AddLine(line);

                            break;
                        default:
                            var firstValue = line.Fields.First();
                            if (firstValue.StartsWith("CLASS:"))
                            {
                                var name = firstValue.SplitTuple(':').right;
                                state = "classStart";
                                classDefinition = new ClassDefinition(name.Value);
                                classDefinition.AddLine(line);
                                break;
                            }

                            if (firstValue.StartsWith("SOURCE"))
                            {
                                SourceDefinition.Parse(line.Fields).Dump(luaWriter);
                                break;
                            }

                            throw new NotSupportedException($"State: {state}, First Field: {line.Fields.First().Value}");
                    }
                }
            }

            Console.WriteLine("Hello World!");
        }

        private static IEnumerable<TsvLine> ReadTsv(string file)
        {
            using var stream = new FileStream(file, FileMode.Open, FileAccess.Read);
            using var reader = new StreamReader(stream);
            string? line;
            int lineIdx = 1;
            while ((line = reader.ReadLine()) != null)
            {
                if (!line.StartsWith("#") && !string.IsNullOrWhiteSpace(line))
                {
                    var fields = ReadFields(file, lineIdx, line).ToList();

                    yield return new TsvLine(fields);
                }

                lineIdx++;
            }
        }

        private static IEnumerable<TextSpan> ReadFields(string file, int lineIdx, string line)
        {
            var currentFieldStart = 0;
            var currentField = new StringBuilder();

            for (int idx = 0; idx < line.Length; idx++)
            {
                var c = line[idx];
                if (c == '\t')
                {
                    if (currentField.Length > 0)
                    {
                        yield return new TextSpan(file, lineIdx, currentFieldStart, currentField.ToString().TrimEnd());
                        currentField.Clear();
                    }

                    continue;
                }

                if (char.IsWhiteSpace(c) && currentField.Length == 0)
                {
                    continue;
                }

                if (currentField.Length == 0)
                {
                    currentFieldStart = idx;
                }

                currentField.Append(c);
            }

            if (currentField.Length > 0)
            {
                yield return new TextSpan(file, lineIdx, currentFieldStart, currentField.ToString().TrimEnd());
            }
        }
    }
}
