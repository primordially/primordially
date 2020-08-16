namespace Primordially.LstToLua
{
    internal abstract class StandardNamedLuaObject : TopLevelLuaObject
    {
        public override void AddField(TextSpan field)
        {
            if (Name == null)
            {
                if (field.TryRemoveSuffix(".MOD", out field))
                {
                    IsMod = true;
                    Name = field.Value;
                }
                else if (field.TryRemoveSuffix(".FORGET", out field))
                {
                    IsDelete = true;
                    Name = field.Value;
                }
                else if (field.TryRemoveInfix(".COPY=", out var sourceName, out var newName))
                {
                    CopiedFrom = sourceName.Value;
                    Name = newName.Value;
                }
                else
                {
                    Name = field.Value;
                }

                return;
            }
            base.AddField(field);
        }
    }
}