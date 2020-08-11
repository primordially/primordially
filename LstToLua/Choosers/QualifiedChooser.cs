namespace Primordially.LstToLua.Choosers
{
    abstract class QualifiedChooser : Chooser
    {
        public string? Title { get; private set; }

        public override string Process(TextSpan value)
        {
            var (maybeValue, titleMaybe) = value.SplitTuple('|', true, false);
            if (titleMaybe.Value != null)
            {
                if (titleMaybe.TryRemovePrefix("TITLE=", out var titleSpan))
                {
                    Title = titleSpan.Value;
                    value = maybeValue;
                }
            }
            return base.Process(value);
        }
    }
}