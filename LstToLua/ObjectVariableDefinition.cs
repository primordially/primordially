namespace Primordially.LstToLua
{
    internal class ObjectVariableDefinition : IDumpable
    {
        public ObjectVariableDefinition(TextSpan value)
        {
            var (n, iv) = value.SplitTuple('|');
            Name = n.Value;
            InitialValue = iv.Value;
        }

        public string Name { get; }
        public Formula InitialValue { get; }
        public bool IsUseless => int.TryParse(InitialValue.Value, out var i) && i == 0;

        public void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            output.WriteProperty("Name", Name);
            output.WriteProperty("InitialValue", InitialValue);
            output.WriteEndObject();
        }
    }
}