using System.Collections.Generic;

namespace Primordially.LstToLua
{
    internal delegate bool PropertyDefinition(TextSpan value, IDictionary<string, object?> properties, IDictionary<string, string?> clear);
}