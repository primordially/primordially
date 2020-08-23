using System.Collections.Generic;
using System.Linq;

namespace Primordially.LstToLua.Definitions
{
    internal class StartingKitDefinition : TopLevelLuaObject
    {
        private List<StartingKitLine> _lines = new List<StartingKitLine>();

        public StartingKitDefinition(string? requiredRegion)
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("STARTPACK", "Name"),
                Property.Parsed("APPLY", "AllowMultiple", s => s.Value == "INSTANT"),
                Property.String("EQUIPBUY", "EquipmentCostModifier"),
                Property.Formula("TOTALCOST", "TotalCost"),
                Property.Boolean("VISIBLE", "Visible"),
                CommonProperties.Types,
                CommonProperties.Conditions,
            });

            if (requiredRegion != null)
            {
                Properties["RequiredRegion"] = requiredRegion;
            }
        }

        public override string ObjectType => "StartingKit";

        public void AddStartLine(TsvLine line)
        {
            foreach (var field in line.Fields)
            {
                AddField(field);
            }
        }

        public void AddLine(TsvLine line)
        {
            void Add<T>()
                where T : StartingKitLine, new()
            {
                var l = new T();
                foreach (var field in line.Fields)
                {
                    l.AddField(field);
                }
                _lines.Add(l);
            }
            var field = line.Fields.First();
            if (field.TryRemovePrefix("RACE:", out field))
            {
                Add<RaceStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("NAME:", out field))
            {
                Add<NameStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("GENDER:", out field))
            {
                Add<GenderStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("AGE:", out field))
            {
                Add<AgeStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("ALIGN:", out field))
            {
                Add<AlignStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("STAT:", out field))
            {
                Add<StatStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("CLASS:", out field))
            {
                Add<ClassLevelStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("SKILL:", out field))
            {
                Add<SkillStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("DEITY:", out field))
            {
                Add<DeityStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("DOMAIN:", out field))
            {
                Add<DomainStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("PROF:", out field))
            {
                Add<ProficiencyStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("ABILITY:", out field))
            {
                Add<AbilityStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("LEVELABILITY:", out field))
            {
                Add<LevelAbilityStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("TEMPLATE:", out field))
            {
                Add<TemplateStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("FUNDS:", out field))
            {
                Add<FundsStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("GEAR:", out field))
            {
                Add<GearStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("TABLE:", out field))
            {
                Add<TableStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("SPELLS:", out field))
            {
                Add<SpellsStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("SELECT:", out field))
            {
                Add<SelectStartingKitLine>();
                return;
            }
            if (field.TryRemovePrefix("LANGBONUS:", out field))
            {
                Add<LanguageStartingKitLine>();
                return;
            }
            throw new ParseFailedException(field, "Unable to parse line.");
        }

        protected override void DumpMembers(LuaTextWriter output)
        {
            base.DumpMembers(output);
            output.Write("Apply=");
            output.WriteStartFunction("kit");
            foreach (var line in _lines)
            {
                line.Dump(output);
            }
            output.WriteEndFunction();
            output.Write(",\n");
        }
    }
}