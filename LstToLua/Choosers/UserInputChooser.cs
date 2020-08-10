namespace Primordially.LstToLua.Choosers
{
    internal class UserInputChooser
    {
        public string Process(TextSpan value)
        {
            bool first = true;
            int count = 1;
            string? title = null;
            foreach (var item in value.Split('|'))
            {
                if (first)
                {
                    first = false;
                    if (int.TryParse(item.Value, out count))
                    {
                        continue;
                    }
                    count = 1;
                }

                if (item.TryRemovePrefix("TITLE=", out var titleSpan))
                {
                    title = titleSpan.Value;
                    continue;
                }
                throw new ParseFailedException(item, "Unable to parse CHOOSE:USERINPUT");
            }

            if (title == null)
            {
                throw new ParseFailedException(value, "Unable to parse CHOOSE:USERINPUT");
            }

            return $"ChooseUserInput({count}, \"{title}\")";
        }
    }
}