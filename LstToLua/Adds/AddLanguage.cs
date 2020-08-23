namespace Primordially.LstToLua.Adds
{
    internal class AddLanguage : Adder
    {
        public override string Kind => "Language";
        public AddLanguage(TextSpan value)
        {
            if (value.TryRemoveInfix("|", out var count, out value))
            {
                Properties["Count"] = new Formula(count.Value);
            }

            if (value.Value == "ALL")
            {
                return;
            }

            foreach (var part in value.Split(','))
            {
                if (part.TryRemovePrefix("TYPE=", out var t))
                {
                    Properties.GetList<string>("Types").Add(t.Value);
                }
                else
                {
                    Properties.GetList<string>("Names").Add(part.Value);
                }
            }
        }
    }
}