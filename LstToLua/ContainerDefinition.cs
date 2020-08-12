using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua
{
    internal class ContainerDefinition : LuaObject
    {
        public ContainerDefinition(TextSpan value)
        {
            bool first = true;
            foreach (var p in value.Split('|'))
            {
                var part = p;
                if (first)
                {
                    if (part.TryRemovePrefix("*", out part))
                    {
                        ContainedItemWeightDoesNotCount = true;
                    }
                    if (part.Value == "UNLIM")
                    {
                        Capacity = double.PositiveInfinity;
                    }
                    else if (part.TryRemoveInfix("%", out var percent, out var cap))
                    {
                        ContainedItemWeightModifier = Helpers.ParseDouble(percent) / 100;
                        Capacity = Helpers.ParseDouble(cap);
                    }
                    else
                    {
                        Capacity = Helpers.ParseDouble(part);
                    }
                    first = false;
                    continue;
                }

                if (!part.TryRemoveInfix("=", out var name, out var count))
                {
                    ItemLimits[part.Value] = null;
                }
                else
                {
                    ItemLimits[name.Value] = Helpers.ParseInt(count);
                }
            }
        }

        public double Capacity { get; } = double.PositiveInfinity;
        public bool ContainedItemWeightDoesNotCount { get; }
        public double? ContainedItemWeightModifier { get; }
        public Dictionary<string, int?> ItemLimits { get; } = new Dictionary<string, int?>();

        protected override void DumpMembers(LuaTextWriter output)
        {
            output.WriteKeyValue("Capacity", Capacity);
            if (ContainedItemWeightDoesNotCount)
                output.WriteKeyValue("ContainedItemWeightDoesNotCount", ContainedItemWeightDoesNotCount);
            if (ContainedItemWeightModifier.HasValue)
                output.WriteKeyValue("ContainedItemWeightModifier", ContainedItemWeightModifier.Value);
            if (ItemLimits.Any())
            {
                output.WriteObjectValue("ItemLimits", () =>
                {
                    foreach (var (k, v) in ItemLimits)
                        output.WriteKeyValue(k, v);
                });
            }
            base.DumpMembers(output);
        }
    }
}