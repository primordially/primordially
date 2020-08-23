namespace Primordially.LstToLua.Definitions
{
    internal class RaceStartingKitLine : StartingKitLine
    {
        protected override string MethodName => "SetRace";

        public RaceStartingKitLine()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("RACE", "RaceName"),
            });
        }
    }
}