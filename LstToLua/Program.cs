using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
    internal enum DataSourceStatus
    {
        TestOnly,
        Alpha,
        Beta,
        Release,
    }

    internal class DataSourceInfo : LuaObject
    {
        public string? Name { get; set; }
        public SourceDefinition SourceInfo { get; set; } = new SourceDefinition();
        public string? GameMode { get; set; }
        public List<string> BookTypes { get; } = new List<string>();
        public List<string> Types { get; } = new List<string>();
        public DataSourceStatus Status { get; set; }
        public string? Copyright { get; set; }
        public string? Description { get; set; }
        public string? Genre { get; set; }
        public string? HelpUrl { get; set; }
        public string? InfoText { get; set; }
        public bool IsMature { get; set; }
        public bool IsOGL { get; set; }
        public bool IsLicensed { get; set; }
        public string? LicenseText { get; set; }
        public string? LicenseFile { get; set; }
        public List<CampaignCondition> Conditions { get; } = new List<CampaignCondition>();
        public PublisherInfo PublisherInfo { get; } = new PublisherInfo();
        public int Rank { get; set; } = 9;
        public string? Setting { get; set; }
        public bool ShowInMenu { get; set; }
        public List<(string name, string url, string linkText)> Links { get; } = new List<(string name, string url, string linkText)>();
        public string? CoverImage { get; set; }
        public string? LogoImage { get; set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("SourceInfo", SourceInfo);
            output.WriteKeyValue("GameMode", GameMode);
            output.WriteListValue("BookTypes", BookTypes);
            output.WriteListValue("Types", Types);
            output.WriteKeyValue("Status", Status.ToString());
            output.WriteKeyValue("Copyright", Copyright);
            output.WriteKeyValue("Description", Description);
            output.WriteKeyValue("Genre", Genre);
            output.WriteKeyValue("HelpUrl", HelpUrl);
            output.WriteKeyValue("InfoText", InfoText);
            output.WriteKeyValue("IsMature", IsMature);
            output.WriteKeyValue("IsOGL", IsOGL);
            output.WriteKeyValue("IsLicensed", IsLicensed);
            if (LicenseText != null)
                output.WriteKeyValue("LicenseText", LicenseText);
            if (LicenseFile != null)
                output.WriteKeyValue("LicenseFile", LicenseFile);
            output.WriteListValue("Conditions", Conditions);
            output.WriteKeyValue("PublisherInfo", PublisherInfo);
            output.WriteKeyValue("Rank", Rank);
            output.WriteKeyValue("ShowInMenu", ShowInMenu);
            if (Setting != null)
                output.WriteKeyValue("Setting", Setting);
            if (CoverImage != null)
                output.WriteKeyValue("CoverImage", CoverImage);
            if (LogoImage != null)
                output.WriteKeyValue("LogoImage", LogoImage);
            if (Links.Any())
            {
                output.WriteObjectValue("Links", () =>
                {
                    foreach (var (name, url, text) in Links)
                    {
                        output.WriteStartObject();
                        output.WriteKeyValue("Name", name);
                        output.WriteKeyValue("Url", url);
                        output.WriteKeyValue("Text", text);
                        output.WriteEndObject();
                        output.Write(",\n");
                    }
                });
            }
            base.DumpMembers(output);
        }
    }

    internal class PublisherInfo : LuaObject
    {
        public string? NameShort { get; set; }
        public string? NameLong { get; set; }
        public string? Url { get; set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("NameShort", NameShort);
            output.WriteKeyValue("NameLong", NameLong);
            output.WriteKeyValue("Url", Url);
            base.DumpMembers(output);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            var pccFile = args[0];
            var outputDirectory = args[1];

            ProcessPCCFile(pccFile, outputDirectory);
            Console.WriteLine("Done.");
        }

        private static void ProcessPCCFile(string pccFile, string outputDirectory)
        {
            var pccLines = ReadTsv(pccFile);

            DataSourceInfo? sourceInfo = new DataSourceInfo();

            var filesToProcess = new List<(string kind, string path)>();
            Directory.CreateDirectory(outputDirectory);
            var indexFile = Path.Join(outputDirectory, "index.lua");
            using (var outputStream = new FileStream(indexFile, FileMode.Create, FileAccess.Write))
            using (var output = new StreamWriter(outputStream))
            {
                var luaWriter = new LuaTextWriter(output);
                foreach (var line in pccLines)
                {
                    if (line.Fields.Count > 1)
                    {
                        throw new ParseFailedException(line.Fields.First(), "Unexpected multiple fields in line.");
                    }

                    var field = line.Fields.Single();
                    if (sourceInfo != null && TryParsePCCDataField(field, sourceInfo))
                    {
                        continue;
                    }

                    if (sourceInfo != null)
                    {
                        luaWriter.Write("SetDataSetInfo(");
                        sourceInfo.Dump(luaWriter);
                        luaWriter.Write(")\n\n");
                        sourceInfo = null;
                    }

                    var (k, v) = field.SplitTuple(':');
                    switch (k.Value)
                    {
                        case "DATATABLE":
                        case "DYNAMIC":
                            // These files have nothing in them.....
                            break;
                        case "GLOBALMODIFIER":
                            // These files have only one line, and its undocumented and looks useless
                            break;
                        case "DEITY":
                            // These files have product identities in them
                            break;
                        case "ABILITY":
                        case "ABILITYCATEGORY":
                        case "ALIGNMENT":
                        case "ARMORPROF":
                        case "BIOSET":
                        case "CLASS":
                        case "COMPANIONMOD":
                        case "DATACONTROL":
                        case "DOMAIN":
                        case "EQUIPMENT":
                        case "EQUIPMOD":
                        case "KIT":
                        case "LANGUAGE":
                        case "RACE":
                        case "SAVE":
                        case "SHIELDPROF":
                        case "SKILL":
                        case "STAT":
                        case "SPELL":
                        case "TEMPLATE":
                        case "VARIABLE":
                        case "WEAPONPROF":
                            {
                                var parts = v.Split('|').ToArray();
                                if (parts.Length < 1)
                                {
                                    throw new ParseFailedException(v, $"Unable to parse {k.Value}");
                                }

                                var luaFile = Path.ChangeExtension(parts[0].Value, "lua");
                                filesToProcess.Add((k.Value, parts[0].Value));

                                var includes = new List<(string? category, string name)>();
                                var excludes = new List<(string? category, string name)>();
                                var conditions = new List<CampaignCondition>();
                                foreach (var part in parts.Skip(1))
                                {
                                    if (part.StartsWith("(INCLUDE:CATEGORY=") && part.EndsWith(')') ||
                                        part.StartsWith("(EXCLUDE:CATEGORY=") && part.EndsWith(')'))
                                    {
                                        var inside = part.Substring("(INCLUDE:CATEGORY=".Length,
                                            part.Value.Length - "(INCLUDE:CATEGORY=)".Length);
                                        foreach (var group in inside.Split('|'))
                                        {
                                            var (category, names) = group.SplitTuple(',');
                                            foreach (var name in names.Split(','))
                                            {
                                                if (part.StartsWith("(IN"))
                                                {
                                                    includes.Add((category.Value, name.Value));
                                                }
                                                else
                                                {
                                                    excludes.Add((category.Value, name.Value));
                                                }
                                            }
                                        }

                                    }
                                    else if (part.StartsWith("(INCLUDE:") && part.EndsWith(")") ||
                                             part.StartsWith("(EXCLUDE:") && part.EndsWith(")"))
                                    {
                                        var inside = part.Substring("(INCLUDE:".Length,
                                            part.Value.Length - "(INCLUDE:CATEGORY=)".Length);
                                        foreach (var name in inside.Split('|'))
                                        {
                                            if (part.StartsWith("(IN"))
                                            {
                                                includes.Add((null, name.Value));
                                            }
                                            else
                                            {
                                                excludes.Add((null, name.Value));
                                            }
                                        }
                                    }
                                    else if (part.StartsWith("!PRECAMPAIGN:") || part.StartsWith("PRECAMPAIGN:"))
                                    {
                                        var (_, conditionValue) = part.SplitTuple(':');
                                        conditions.Add(CampaignCondition.Parse(part.StartsWith("!"), conditionValue));
                                    }
                                }

                                if (!includes.Any() && !excludes.Any() && !conditions.Any())
                                {
                                    luaWriter.Write($"ImportFile(\"{luaFile}\")\n");
                                }
                                else
                                {
                                    luaWriter.Write($"ImportFile(\"{luaFile}\", ");
                                    luaWriter.WriteStartObject();
                                    luaWriter.WriteObjectValue("Includes", () =>
                                    {
                                        foreach (var include in includes)
                                        {
                                            luaWriter.WriteStartObject();
                                            if (include.category != null)
                                            {
                                                luaWriter.WriteKeyValue("Category", include.category);
                                            }

                                            luaWriter.WriteKeyValue("Name", include.name);
                                            luaWriter.WriteEndObject();
                                        }
                                    });
                                    luaWriter.WriteObjectValue("Excludes", () =>
                                    {
                                        foreach (var exclude in excludes)
                                        {
                                            luaWriter.WriteStartObject();
                                            if (exclude.category != null)
                                            {
                                                luaWriter.WriteKeyValue("Category", exclude.category);
                                            }

                                            luaWriter.WriteKeyValue("Name", exclude.name);
                                            luaWriter.WriteEndObject();
                                            luaWriter.Write(",\n");
                                        }
                                    });
                                    luaWriter.WriteObjectValue("Conditions", () =>
                                    {
                                        foreach (var condition in conditions)
                                        {
                                            condition.Dump(luaWriter);
                                            luaWriter.Write(",\n");
                                        }
                                    });
                                    luaWriter.WriteEndObject();
                                    luaWriter.Write(")\n");
                                }

                                break;
                            }
                        case "LSTEXCLUDE":
                            foreach (var file in v.Value.Split('|'))
                            {
                                luaWriter.Write($"ExcludeFile(\"{Path.ChangeExtension(file.Replace("\\", "/"), "lua")}\")\n");
                            }
                            break;
                        case "ALLOWDUPES":
                            switch (v.Value)
                            {
                                case "SPELL":
                                    luaWriter.Write("AllowDuplicateSpells()\n");
                                    break;
                                case "LANGUAGE":
                                    luaWriter.Write("AllowDuplicateLanguages()\n");
                                    break;
                                default:
                                    throw new ParseFailedException(v, "Unable to parse ALLOWDUPES");
                            }
                            break;
                        case "PCC":
                            {
                                var file = Path.ChangeExtension(v.Value, "lua");
                                luaWriter.Write($"ImportFile(\"{file}\")\n");
                                break;
                            }
                        case "HIDETYPE":
                            {
                                var parts = v.Value.Split('|');
                                var type = parts.First();
                                var names = parts.Skip(1);
                                luaWriter.Write($"HideObjects(\"{type}\", ");
                                luaWriter.WriteStartObject();
                                luaWriter.WriteListItems(names);
                                luaWriter.WriteEndObject();
                                luaWriter.Write(")\n");
                                break;
                            }
                        case "COMPANIONLIST":
                            {
                                var parts = v.Split('|').ToArray();
                                if (parts.Length < 2)
                                {
                                    throw new ParseFailedException(v, "Cannot parse COMPANIONLIST");
                                }

                                var type = parts[0].Value;
                                var data = parts[1].Value;
                                int? followerAdjustment = null;
                                var conditions = new List<Condition>();

                                foreach (var part in parts.Skip(2))
                                {
                                    if (part.StartsWith("FOLLOWERADJUSTMENT:"))
                                    {
                                        followerAdjustment = Helpers.ParseInt(part.Substring("FOLLOWERADJUSTMENT:".Length));
                                        continue;
                                    }
                                    if (!Condition.TryParse(part, out var condition))
                                    {
                                        throw new ParseFailedException(part, "Unable to parse condition.");
                                    }
                                    conditions.Add(condition);
                                }
                                luaWriter.Write("AddAvailableCompanions(");
                                luaWriter.WriteValue(type);
                                luaWriter.Write(", ");
                                luaWriter.WriteStartObject();
                                foreach (var piece in data.Split(','))
                                {
                                    if (piece == "ANY")
                                    {
                                        luaWriter.WriteStartObject();
                                        luaWriter.WriteKeyValue("Any", true);
                                        luaWriter.WriteEndObject();
                                    }
                                    else if (piece.StartsWith("RACESUBTYPE="))
                                    {
                                        var subtype = piece.Substring("RACESUBTYPE=".Length);
                                        luaWriter.WriteStartObject();
                                        luaWriter.WriteKeyValue("SubType", subtype);
                                        luaWriter.WriteEndObject();
                                    }
                                    else if (piece.StartsWith("RACETYPE="))
                                    {
                                        var subtype = piece.Substring("RACETYPE=".Length);
                                        luaWriter.WriteStartObject();
                                        luaWriter.WriteKeyValue("Type", subtype);
                                        luaWriter.WriteEndObject();
                                    }
                                    else
                                    {
                                        luaWriter.WriteStartObject();
                                        luaWriter.WriteKeyValue("Name", piece);
                                        luaWriter.WriteEndObject();
                                    }

                                    luaWriter.Write(",\n");
                                }
                                luaWriter.WriteEndObject();
                                luaWriter.Write(", ");
                                luaWriter.WriteStartObject();
                                if (followerAdjustment.HasValue)
                                {
                                    luaWriter.WriteKeyValue("FollowerAdjustment", followerAdjustment.Value);
                                }

                                if (conditions.Any())
                                {
                                    luaWriter.WriteListValue("Conditions", conditions);
                                }
                                luaWriter.WriteEndObject();
                                luaWriter.Write(")\n");


                                break;
                            }
                        case "FORWARDREF":
                            break;
                        default:
                            throw new ParseFailedException(field, $"Unknown field '{k.Value}'");
                    }
                }
            }


            var pccDirectory = Path.GetDirectoryName(pccFile);
            foreach (var (kind, inputFile) in filesToProcess)
            {
                if (inputFile.StartsWith("@") || inputFile.StartsWith("&") || inputFile.StartsWith("*"))
                {
                    Console.WriteLine($"Not Converting absolute path '{inputFile}'.");
                    continue;
                }

                var inputFileFullPath = Path.Join(pccDirectory, inputFile);
                var outputFile = Path.ChangeExtension(Path.Join(outputDirectory, inputFile), "lua");
                var outputDir = Path.GetDirectoryName(outputFile);
                Directory.CreateDirectory(outputDir);

                Console.WriteLine($"Converting {kind} file {inputFileFullPath} -> {outputFile}");
                switch (kind)
                {
                    case "CLASS":
                        new ClassFileConverter().Convert(inputFileFullPath, outputFile);
                        break;

                    case "ABILITY":
                        new AbilityFileConverter().Convert(inputFileFullPath, outputFile);
                        break;
                    case "ALIGNMENT":
                        new AlignmentFileConverter().Convert(inputFileFullPath, outputFile);
                        break;
                    case "DATACONTROL":
                        new DataControlFileConverter().Convert(inputFileFullPath, outputFile);
                        break;
                    case "SAVE":
                        new SaveFileConverter().Convert(inputFileFullPath, outputFile);
                        break;
                    case "STAT":
                        new StatFileConverter().Convert(inputFileFullPath, outputFile);
                        break;
                    case "VARIABLE":
                        new SingleObjectFileConverter<VariableDefinition>().Convert(inputFileFullPath, outputFile);
                        break;
                    case "ABILITYCATEGORY":
                        new SingleObjectFileConverter<AbilityCategoryDefinition>().Convert(inputFileFullPath, outputFile);
                        break;
                    case "DOMAIN":
                        new SingleObjectFileConverter<DomainDefinition>().Convert(inputFileFullPath, outputFile);
                        break;
                    case "ARMORPROF":
                    case "BIOSET":
                    case "COMPANIONMOD":
                    case "DATATABLE":
                    case "DYNAMIC":
                    case "EQUIPMENT":
                    case "EQUIPMOD":
                    case "GLOBALMODIFIER":
                    case "KIT":
                    case "LANGUAGE":
                    case "RACE":
                    case "SHIELDPROF":
                    case "SKILL":
                    case "SPELL":
                    case "TEMPLATE":
                    case "WEAPONPROF":
                        Console.WriteLine($"Skipping Not-Yet-Implemented file kind {kind}");
                        //throw new NotImplementedException($"File kind {kind} not implemented.");
                        break;
                    default:
                        throw new NotSupportedException($"File kind {kind} not supported.");
                }

            }
        }

        private static bool TryParsePCCDataField(TextSpan field, DataSourceInfo sourceInfo)
        {
            var (k, v) = field.SplitTuple(':');
            switch (k.Value)
            {
                case "CAMPAIGN":
                    sourceInfo.Name = v.Value;
                    return true;
                case "GAMEMODE":
                    sourceInfo.GameMode = v.Value;
                    return true;
                case "BOOKTYPE":
                    sourceInfo.BookTypes.AddRange(v.Value.Split('|'));
                    return true;
                case "COPYRIGHT":
                    sourceInfo.Copyright += v.Value + "\\n";
                    return true;
                case "DESC":
                    sourceInfo.Description = v.Value;
                    return true;
                case "GENRE":
                    sourceInfo.Genre = v.Value;
                    return true;
                case "HELP":
                    sourceInfo.HelpUrl = v.Value;
                    return true;
                case "INFOTEXT":
                    sourceInfo.InfoText = v.Value;
                    return true;
                case "SETTING":
                    sourceInfo.Setting = v.Value;
                    return true;
                case "ISMATURE":
                    sourceInfo.IsMature = Helpers.ParseBool(v);
                    return true;
                case "ISOGL":
                    sourceInfo.IsOGL = Helpers.ParseBool(v);
                    return true;
                case "SHOWINMENU":
                    sourceInfo.ShowInMenu = Helpers.ParseBool(v);
                    return true;
                case "ISLICENSED":
                    sourceInfo.IsLicensed = Helpers.ParseBool(v);
                    return true;
                case "LICENSE":
                    if (v.StartsWith("FILE="))
                    {
                        sourceInfo.LicenseFile = v.Substring("FILE=".Length).Value;
                    }
                    else
                    {
                        sourceInfo.LicenseText = v.Value;
                    }

                    return true;
                case "!PRECAMPAIGN":
                    sourceInfo.Conditions.Add(CampaignCondition.Parse(true, v));
                    return true;
                case "PRECAMPAIGN":
                    sourceInfo.Conditions.Add(CampaignCondition.Parse(false, v));
                    return true;
                case "PUBNAMELONG":
                    sourceInfo.PublisherInfo.NameLong = v.Value;
                    return true;
                case "PUBNAMESHORT":
                    sourceInfo.PublisherInfo.NameShort = v.Value;
                    return true;
                case "PUBNAMEWEB":
                    sourceInfo.PublisherInfo.Url = v.Value;
                    return true;
                case "SOURCELONG":
                    sourceInfo.SourceInfo.SourceLong = v.Value;
                    return true;
                case "SOURCESHORT":
                    sourceInfo.SourceInfo.SourceShort = v.Value;
                    return true;
                case "SOURCEWEB":
                    sourceInfo.SourceInfo.SourceWeb = v.Value;
                    return true;
                case "SOURCEDATE":
                    sourceInfo.SourceInfo.SourceDate = v.Value;
                    return true;
                case "STATUS":
                    sourceInfo.Status = v.Value.ToUpperInvariant() switch
                    {
                        "TESTONLY" => DataSourceStatus.TestOnly,
                        "ALPHA" => DataSourceStatus.Alpha,
                        "BETA" => DataSourceStatus.Beta,
                        _ => DataSourceStatus.Release,
                    };
                    return true;
                case "RANK":
                    sourceInfo.Rank = Helpers.ParseInt(v);
                    return true;
                case "TYPE":
                    sourceInfo.Types.AddRange(v.Value.Split('.'));
                    return true;
                case "URL":
                    var parts = v.Value.Split('|');
                    if (parts.Length != 3)
                    {
                        throw new ParseFailedException(v, "Unable to parse PCC URL value");
                    }

                    sourceInfo.Links.Add((parts[0], parts[1], parts[2]));
                    return true;
                case "COVER":
                    sourceInfo.CoverImage = v.Value;
                    return true;
                case "LOGO":
                    sourceInfo.LogoImage = v.Value;
                    return true;
                case "KEY":
                    return true;
                default:
                    return false;
            }
        }

        public static IEnumerable<TsvLine> ReadTsv(string file)
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
