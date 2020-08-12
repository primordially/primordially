using System.Collections.Generic;
using System.Linq;

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
}