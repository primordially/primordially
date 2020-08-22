namespace Primordially.LstToLua.Definitions
{
    internal class FunctionDefinition : TopLevelLuaObject
    {
        public override void AddField(TextSpan field)
        {
            if (field.TryRemovePrefix("FUNCTION:", out field))
            {
                Properties["Name"] = field.Value;
                return;
            }

            if (field.TryRemovePrefix("VALUE:", out field))
            {
                Properties["Value"] = new Formula(field);
                return;
            }

            if (field.TryRemovePrefix("EXPLANATION:", out field))
            {
                Properties["Explanation"] = field.Value;
                return;
            }
            base.AddField(field);
        }

        public override string ObjectType => "Function";
    }
}