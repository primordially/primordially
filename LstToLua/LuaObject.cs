namespace Primordially.LstToLua
{
    internal class LuaObject : IDumpable
    {
        public virtual void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            DumpMembers(output);
            output.WriteEndObject();
        }

        public virtual void AddField(TextSpan field)
        {
            throw new ParseFailedException(field, $"Unknown field '{field.Value}'");
        }

        protected virtual void DumpMembers(LuaTextWriter output)
        {
        }
    }
}