using System.Collections.Generic;
using System.Linq;
using Primordially.LstToLua.Conditions;

namespace Primordially.LstToLua
{
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
            output.WriteProperty("Name", Name);
            output.WriteProperty("SourceInfo", SourceInfo);
            output.WriteProperty("GameMode", GameMode);
            output.WriteProperty("BookTypes", BookTypes);
            output.WriteProperty("Types", Types);
            output.WriteProperty("Status", Status.ToString());
            output.WriteProperty("Copyright", Copyright);
            output.WriteProperty("Description", Description);
            output.WriteProperty("Genre", Genre);
            output.WriteProperty("HelpUrl", HelpUrl);
            output.WriteProperty("InfoText", InfoText);
            output.WriteProperty("IsMature", IsMature);
            output.WriteProperty("IsOGL", IsOGL);
            output.WriteProperty("IsLicensed", IsLicensed);
            if (LicenseText != null)
                output.WriteProperty("LicenseText", LicenseText);
            if (LicenseFile != null)
                output.WriteProperty("LicenseFile", LicenseFile);
            output.WriteProperty("Conditions", Conditions);
            output.WriteProperty("PublisherInfo", PublisherInfo);
            output.WriteProperty("Rank", Rank);
            output.WriteProperty("ShowInMenu", ShowInMenu);
            if (Setting != null)
                output.WriteProperty("Setting", Setting);
            if (CoverImage != null)
                output.WriteProperty("CoverImage", CoverImage);
            if (LogoImage != null)
                output.WriteProperty("LogoImage", LogoImage);
            if (Links.Any())
            {
                output.WriteObjectValue("Links", () =>
                {
                    foreach (var (name, url, text) in Links)
                    {
                        output.WriteStartObject();
                        output.WriteProperty("Name", name);
                        output.WriteProperty("Url", url);
                        output.WriteProperty("Text", text);
                        output.WriteEndObject();
                        output.Write(",\n");
                    }
                });
            }
            base.DumpMembers(output);
        }
    }
}