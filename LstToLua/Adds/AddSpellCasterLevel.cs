namespace Primordially.LstToLua.Adds
{
    internal class AddSpellCasterLevel : Adder
    {
        public override string Kind => "SpellCasterLevel";
        public AddSpellCasterLevel(TextSpan value)
        {
            if (value.TryRemoveInfix("|", out var count, out value))
            {
                Properties["Count"] = new Formula(count.Value);
            }

            if (value.Value == "ANY")
            {
                return;
            }

            if (value.Value == "Divine")
            {
                Properties["Type"] = "Divine";
                return;
            }

            if (value.Value == "Arcane")
            {
                Properties["Type"] = "Arcane";
                return;
            }

            var list = Properties.GetList<string>("Classes");
            list.AddRange(value.Value.Split(','));
        }
    }
}