namespace Primordially.LstToLua.Definitions
{
    internal class VariableDefinition : TopLevelLuaObject
    {
        public override string ObjectType => "Variable";

        public string? LocalTo { get; private set; }
        public string? Channel { get; private set; }
        public string? Type { get; private set; }
        public string? Explanation { get; private set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.WriteProperty("Type", Type);
            if (LocalTo != null)
                output.WriteProperty("Local", LocalTo);
            if (Channel != null)
                output.WriteProperty("Channel", Channel);
            output.WriteProperty("Explanation", Explanation);
        }

        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (!field.TryRemovePrefix("GLOBAL:", out var nt))
                {
                    if (field.TryRemovePrefix("LOCAL:", out var local))
                    {
                        TextSpan localTo;
                        (localTo, nt) = local.SplitTuple('|');
                        LocalTo = localTo.Value;
                    }
                    else if (field.TryRemovePrefix("CHANNEL:", out var c))
                    {
                        TextSpan channel;
                        (channel, nt) = c.SplitTuple('|');
                        Channel = channel.Value;
                    }
                    else
                    {
                        throw new ParseFailedException(field, "Unable to parse VariableDefinition");
                    }
                }

                var (t, n) = nt.SplitTuple('=');
                Type = t.Value;
                Name = n.Value;
                return;
            }

            if (field.TryRemovePrefix("EXPLANATION:", out var exp))
            {
                Explanation = exp.Value;
                return;
            }
            base.AddField(field);
        }
    }
}