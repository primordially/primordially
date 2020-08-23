namespace Primordially.LstToLua.Definitions
{
    internal class FundsStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "AddFunds";

        public FundsStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("FUNDS", "Funds"),
                Property.Formula("QTY", "Quantity"),
            });
        }
    }
}