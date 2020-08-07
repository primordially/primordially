namespace Primordially.LstToLua
{
    internal class VariableDefinition : IDumpable
    {
        public VariableDefinition(string name, int initialValue)
        {
            Name = name;
            InitialValue = initialValue;
        }

        public string Name { get; }
        public int InitialValue { get; }

        public void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("InitialValue", InitialValue);
            output.WriteEndObject();
        }
    }
}