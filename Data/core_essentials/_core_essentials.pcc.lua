SetDataSetInfo({
  Name="Core Essentials",
  SourceInfo={
  },
  Types={
    "Paizo Publishing",
    "Pathfinder RPG",
  },
  Status="Release",
  IsMature=false,
  IsOGL=false,
  IsLicensed=false,
  PublisherInfo={
    NameLong="Paizo Inc.",
  },
  Rank=9,
  ShowInMenu=false,
})
ImportFile("*/_universal/datacontrols_no_align.lua")
ImportFile("*/_universal/races.lua")
ImportFile("ce__align.lua")
ImportFile("ce__datacontrols.lua")
ImportFile("ce__saves.lua")
ImportFile("ce__sizes.lua")
ImportFile("ce__stats.lua")
ImportFile("ce__variables.lua")
ImportFile("ce_abilities.lua")
ImportFile("ce_abilities_race.lua")
ImportFile("ce_abilitycategories.lua")
ImportFile("ce_biosettings.lua")
ImportFile("ce_classes_race.lua")
ImportFile("ce_deities.lua")
ImportFile("ce_domains.lua")
ImportFile("ce_equip_arms_armor.lua")
ImportFile("ce_equip_general.lua")
ImportFile("ce_feats.lua")
ImportFile("ce_languages.lua")
ImportFile("ce_skills.lua")
ImportFile("ce_spells.lua")
ImportFile("ce_templates.lua")
ImportFile("ce_profs_armor.lua")
ImportFile("ce_profs_weapon.lua")
ImportFile("ce_abilities_familiar_apg.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Advanced Player's Guide"))
      end)
    end,
    function (character, item, sources)
      return not any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_abilities_familiar_cr.lua")
ImportFile("ce_abilities_familiar_race_cr.lua")
ImportFile("ce_abilities_familiar_race_um.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_abilities_familiar_um.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_abilitycategories_familiar.lua")
ImportFile("ce_companionmods_familiar_apg.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Advanced Player's Guide"))
      end)
    end,
    function (character, item, sources)
      return not any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_companionmods_familiar_cr.lua")
ImportFile("ce_companionmods_familiar_um.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_kits_familiar_cr.lua")
ImportFile("ce_kits_familiar_um.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_races_familiar_apg.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Advanced Player's Guide"))
      end)
    end,
  },
})
ImportFile("ce_races_familiar_cr.lua")
ImportFile("ce_races_familiar_um.lua", {
  Includes={
  },
  Excludes={
  },
  Conditions={
    function (character, item, sources)
      return any(sources, function (source)
        return (source.Includes("Ultimate Magic"))
      end)
    end,
  },
})
ImportFile("ce_templates_familiar_cr.lua")
