using System;
using System.IO;
using System.Linq;
using LibGit2Sharp;

namespace Primordially.LstToLua.FileConverters
{
    internal class FileConverter
    {
        protected string? State { get; set; }

        public void Convert(string lstFile, string luaFile)
        {
            var dir = Path.GetDirectoryName(luaFile);
            Directory.CreateDirectory(dir);
            using var outputStream = new FileStream(luaFile, FileMode.Create, FileAccess.Write);
            using var output = new StreamWriter(outputStream);
            var repoDir = Repository.Discover(lstFile);
            if (string.IsNullOrEmpty(repoDir))
            {
                throw new ArgumentException("LST file must be in a git repo.");
            }

            var repo = new Repository(repoDir);
            var repoUrl = repo.Network.Remotes["upstream"]?.Url ?? repo.Network.Remotes["origin"]?.Url;
            var sha = repo.Head.Tip.Sha;
            var relativePath = Path.GetRelativePath(repo.Info.WorkingDirectory, lstFile);
            output.WriteLine($"-- Converted From LST file {relativePath}");
            output.WriteLine($"-- From repository {repoUrl} at commit {sha}");
            var luaWriter = new LuaTextWriter(output);
            var lines = Program.ReadTsv(lstFile).ToList();
            foreach (var line in lines)
            {
                ConvertLine(luaWriter, line);
            }
        }

        protected virtual void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            var firstValue = line.Fields.First();
            if (State == null && firstValue.StartsWith("SOURCE"))
            {
                luaWriter.Write("SetSource(");
                SourceDefinition.Parse(line.Fields).Dump(luaWriter);
                luaWriter.Write(")\n");
                return;
            }

            throw new ParseFailedException(firstValue, $"Unknown field {firstValue.Value} seen in state {State}");
        }
    }
}