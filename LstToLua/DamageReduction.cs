namespace Primordially.LstToLua
{
    internal class DamageReduction : ConditionalObject
    {
        public string? Value { get; private set; }

        public override void AddField(TextSpan field)
        {
            if (Value == null)
            {
                Value = field.Value;
                return;
            }
            base.AddField(field);
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Value", Value);
            base.DumpMembers(output);
        }
    }
}