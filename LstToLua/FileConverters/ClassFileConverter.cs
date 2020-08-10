using System.Diagnostics;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class ClassFileConverter : FileConverter
    {
        private ClassDefinition? _classDefinition = null;
        protected override void ConvertLine(LuaTextWriter luaWriter, TsvLine line)
        {
            var firstField = line.Fields.First();
            switch (State)
            {
                case "classStart":
                    Debug.Assert(_classDefinition != null);

                    if (!firstField.StartsWith("CLASS:"))
                    {
                        State = "class";
                        goto case "class";
                    }

                    _classDefinition.AddLine(line);
                    return;

                case "class":
                    Debug.Assert(_classDefinition != null);

                    if (firstField.StartsWith("CLASS:"))
                    {
                        _classDefinition.Dump(luaWriter);
                        _classDefinition = null;
                        State = null;
                        goto default;
                    }

                    _classDefinition.AddLine(line);
                    return;
                default:
                    if (firstField.StartsWith("CLASS:"))
                    {
                        var name = firstField.SplitTuple(':').right;
                        State = "classStart";
                        _classDefinition = new ClassDefinition(name.Value);
                        _classDefinition.AddLine(line);
                        return;
                    }

                    break;
            }
            base.ConvertLine(luaWriter, line);
        }
    }
}