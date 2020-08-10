using System;

namespace Primordially.LstToLua
{
    internal class VariableDefinition : LuaObject
    {
        public string? Name { get; private set; }
        public string? LocalTo { get; private set; }
        public string? Channel { get; private set; }
        public string? Type { get; private set; }
        public string? Explanation { get; private set; }

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("Type", Type);
            if (LocalTo != null)
                output.WriteKeyValue("Local", LocalTo);
            if (Channel != null)
                output.WriteKeyValue("Channel", Channel);
            output.WriteKeyValue("Explanation", Explanation);
            base.DumpMembers(output);
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

        public override void Dump(LuaTextWriter output)
        {
            output.Write("DefineVariable(");
            base.Dump(output);
            output.Write(")");
        }
    }
}