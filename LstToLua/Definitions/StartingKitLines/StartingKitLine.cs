namespace Primordially.LstToLua.Definitions
{
    internal abstract class StartingKitLine : LuaObject
    {
        internal class Option : LuaObject
        {
            public Option(TextSpan value)
            {
                if (value.TryRemoveInfix(",", out var min, out var max))
                {
                    Properties["Max"] = new Formula(max);
                }

                Properties["Min"] = new Formula(min);
            }
        }

        protected abstract string MethodName { get; }
        protected StartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                CommonProperties.Conditions,
                Property.SeparatedList<Option>('|', "OPTION", "Options"),
            });
        }

        public override void Dump(LuaTextWriter output)
        {
            output.Write($"kit.{MethodName}(");
            base.Dump(output);
            output.WriteKey(")\n");
        }
    }
}