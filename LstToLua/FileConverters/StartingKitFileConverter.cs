using System.Diagnostics;
using System.Linq;
using Primordially.LstToLua.Definitions;

namespace Primordially.LstToLua.FileConverters
{
    internal class StartingKitFileConverter : FileConverter
    {
        private string? _requiredRegion;
        private StartingKitDefinition? _startingKit;
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            void FinishKit()
            {
                _startingKit?.Dump(luaWriter);
                luaWriter.Write("\n");
                _startingKit = null;
            }

            var firstField = line.Fields.First();
            if (firstField.TryRemovePrefix("REGION:", out var region))
            {
                FinishKit();
                _requiredRegion = region.Value;
                return;
            }

            if (firstField.TryRemovePrefix("STARTPACK:", out _))
            {
                FinishKit();
                _startingKit = new StartingKitDefinition(_requiredRegion);
                _startingKit.AddStartLine(line);
                return;
            }

            if (!firstField.StartsWith("SOURCE"))
            {
                Debug.Assert(_startingKit != null, nameof(_startingKit) + " != null");
                _startingKit.AddLine(line);
                return;
            }
            base.ConvertLine(luaWriter, line);
        }

        protected override void FinalizeConversion(LuaTextWriter luaWriter)
        {
            if (_startingKit != null)
            {
                _startingKit.Dump(luaWriter);
                luaWriter.Write("\n");
            }
        }
    }
}