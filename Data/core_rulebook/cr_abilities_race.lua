-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_abilities_race.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineAbility({
  Name="Remove Excess Points from Pool",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=1,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="1",
  Types={
    "HumanRacialTrait",
    "DwarfRacialTrait",
    "ElfRacialTrait",
    "GnomeRacialTrait",
    "HalfElfRacialTrait",
    "HalfOrcRacialTrait",
    "HalflingRacialTrait",
  },
})

DefineAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 Constitution, +2 Wisdom, -2 Charisma",
  Key="Dwarf ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Dwarves are both tough and wise, but also a bit gruff.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Medium",
  Key="Dwarf ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Dwarves are Medium creatures and have no bonuses or penalties due to their size.",
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Slow and Steady",
  Key="Dwarf ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Steady",
      },
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceSpeed"] == "True")
    end,
  },
  Description={
    Format="Dwarves have a base speed of 20 feet, but their speed is never modified by armor or encumbrance.",
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Darkvision",
  Key="Dwarf ~ Vision",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.21",
  Vision={
    {
      Vision="Darkvision (60)",
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceVision"] == "True")
    end,
  },
  Description={
    Format="Dwarves can see in the dark up to 60 feet.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasRacialVision",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Extraordinary",
    "Racial Vision",
  },
})

DefineAbility({
  Name="Defensive Training",
  Key="Dwarf ~ Defensive Training",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+%1 dodge bonus to AC against monsters of the giant subtype.",
      Arguments={
        "RacialDefensiveTrainingBonus",
      },
    },
    {
      Name="Ability Benefit",
      FormatString="(+%1 dodge bonus to AC vs. giants)",
      Arguments={
        "RacialDefensiveTrainingBonus",
      },
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceDefensiveTraining"] == "True")
    end,
  },
  Description={
    Format="Dwarves get a +%1 dodge bonus to AC against monsters of the giant subtype.",
    Arguments={
      Formula("RacialDefensiveTrainingBonus"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "RacialDefensiveTrainingBonus",
      },
      Formula=Formula("4"),
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Defensive",
  },
})

DefineAbility({
  Name="Greed",
  Key="Dwarf ~ Greed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceGreed"] == "True")
    end,
  },
  Description={
    Format="Dwarves receive a +2 racial bonus on Appraise skill checks made to determine the price of nonmagical goods that contain precious metals or gemstones.",
    Arguments={
      Formula("PREVAREQ:DwarvenGreedAspect,0"),
    },
  },
  Bonuses={
    {
      Category="SITUATION",
      Variables={
        "Appraise=to assess nonmagical metals or gemstones",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DwarvenGreedAspect"] == 0)
        end,
      },
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Hatred",
  Key="Dwarf ~ Hatred",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+1 bonus on attack rolls against humanoid creatures of the orc and goblinoid subtypes due to special training against these hated foes.",
    },
    {
      Name="StatBlockName",
      FormatString="+1 on attack rolls against goblinoid and orc humanoids",
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceHatred"] == "True")
    end,
  },
  Description={
    Format="Dwarves receive a +1 bonus on attack rolls against humanoid creatures of the orc and goblinoid subtypes due to special training against these hated foes.",
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialAttack",
    "Special Attack",
  },
})

DefineAbility({
  Name="Hardy",
  Key="Dwarf ~ Hardy",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial bonus on saving throws against poison, spells, and spell-like abilities.",
      Conditions={
        function (character)
          return (character.Variables["DwarfHardyAspect"] == 0)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="+2 racial bonus on saving throws against poison.",
      Conditions={
        function (character)
          return (character.Variables["DwarfHardyAspect"] == 1)
        end,
      },
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceHardy"] == "True")
    end,
  },
  Description={
    Format="Dwarves receive a +2 racial bonus on saving throws against poison, spells, and spell-like abilities.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SaveBonus_vs_Poison",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "SaveBonus_vs_Spells",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Stability",
  Key="Dwarf ~ Stability",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+4 bonus to their Combat Maneuver Defense when resisting a bull rush or trip attempt while standing on the ground.",
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceStability"] == "True")
    end,
  },
  Description={
    Format="Dwarves receive a +4 racial bonus to their Combat Maneuver Defense when resisting a bull rush or trip attempt while standing on the ground.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMD_BullRush",
        "CMD_Trip",
      },
      Formula=Formula("4"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Stonecunning",
  Key="Dwarf ~ Stonecunning",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SkillBonus",
      FormatString="+%1 bonus on Perception skill checks to notice unusual stonework, such as traps and hidden doors located in stone walls or floors.",
      Arguments={
        "Dwarf_StoneCunning_SkillBonus",
      },
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceStonecunning"] == "True")
    end,
  },
  Description={
    Format="Dwarves receive a +%1 bonus on Perception checks to potentially notice unusual stonework, such as traps and hidden doors located in stone walls or floors. They receive a check to notice such features whenever they pass within 10 feet of them, whether or not they are actively looking.",
    Arguments={
      Formula("Dwarf_StoneCunning_SkillBonus"),
    },
  },
  Bonuses={
    {
      Category="SITUATION",
      Variables={
        "Perception=to notice unusual stonework",
      },
      Formula=Formula("Dwarf_StoneCunning_SkillBonus"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Dwarf_StoneCunning_SkillBonus",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Weapon Familiarity",
  Key="Dwarf ~ Weapon Familiarity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "Battleaxe",
        "Pick (Heavy)",
        "Warhammer",
      },
    },
  },
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Dwarven",
    },
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceWeaponFamiliarity"] == "True")
    end,
  },
  Description={
    Format="Dwarves are proficient with battleaxes, heavy picks, and warhammers, and treat any weapon with the word \"dwarven\" in its name as a martial weapon.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Weapon Familiarity",
  },
})

DefineAbility({
  Name="Languages",
  Key="Dwarf ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ Giant",
    "Race Bonus Language ~ Gnome",
    "Race Bonus Language ~ Goblin",
    "Race Bonus Language ~ Orc",
    "Race Bonus Language ~ Terran",
    "Race Bonus Language ~ Undercommon",
  },
  SourcePage="p.21",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceLanguages"] == "True")
    end,
  },
  Description={
    Format="Dwarves begin play speaking Common and Dwarven. Dwarves with high Intelligence scores can choose from the following: Giant, Gnome, Goblin, Orc, Terran, and Undercommon.",
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Dwarven")
      end,
    },
  },
})

DefineAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 Dexterity, +2 Intelligence, -2 Constitution",
  Key="Elf ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Elves are nimble, both in body and mind, but their form is frail.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("-2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Medium",
  Key="Elf ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Elves are Medium creatures and have no bonuses or penalties due to their size.",
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Normal Speed",
  Key="Elf ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceSpeed"] == "true")
    end,
  },
  Description={
    Format="Elves have a base speed of 30 feet.",
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Low-Light Vision",
  Key="Elf ~ Vision",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.22",
  Vision={
    {
      Vision="Low-Light Vision",
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceVision"] == "true")
    end,
  },
  Description={
    Format="Elves can see twice as far as humans in conditions of dim light.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasRacialVision",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Extraordinary",
    "Racial Vision",
  },
})

DefineAbility({
  Name="Elven Immunities",
  Key="Elf ~ Elven Immunities",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial saving throw bonus against enchantment spells and effects.",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Sleep",
      },
    },
  },
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceElvenImmunities"] == "true")
    end,
  },
  Description={
    Format="Elves are immune to magic sleep effects and get a +2 racial saving throw bonus against enchantment spells and effects.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SaveBonus_vs_Enchantments",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Elven Magic",
  Key="Elf ~ Elven Magic",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceElvenMagic"] == "true")
    end,
  },
  Description={
    Format="Elves receive a +2 racial bonus on caster level checks made to overcome spell resistance. In addition, elves receive a +2 racial bonus on Spellcraft skill checks made to identify the properties of magic items.",
  },
  Bonuses={
    {
      Category="SITUATION",
      Variables={
        "Spellcraft=to identify magic item properties",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Special Quality",
    "Elven Magic",
  },
})

DefineAbility({
  Name="Keen Senses",
  Key="Elf ~ Keen Senses",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceKeenSenses"] == "true")
    end,
  },
  Description={
    Format="Elves receive a +%1 racial bonus on Perception skill checks.",
    Arguments={
      Formula("KeenSensesBonus"),
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "KeenSensesBonus",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Weapon Familiarity",
  Key="Elf ~ Weapon Familiarity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "Longsword",
        "Rapier",
        "Longbow",
        "Shortbow",
      },
    },
  },
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Elven",
    },
  },
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceWeaponFamiliarity"] == "true")
    end,
  },
  Description={
    Format="Elves are proficient with longbows (including composite longbows), longswords, rapiers, and shortbows (including composite shortbows), and treat any weapon with the word \"elven\" in its name as a martial weapon.",
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Special Quality",
    "Weapon Familiarity",
  },
})

DefineAbility({
  Name="Languages",
  Key="Elf ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ Celestial",
    "Race Bonus Language ~ Draconic",
    "Race Bonus Language ~ Gnoll",
    "Race Bonus Language ~ Gnome",
    "Race Bonus Language ~ Goblin",
    "Race Bonus Language ~ Orc",
    "Race Bonus Language ~ Sylvan",
  },
  SourcePage="p.22",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceLanguages"] == "true")
    end,
  },
  Description={
    Format="Elves begin play speaking Common and Elven. Elves with high Intelligence scores can choose from the following: Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, and Sylvan.",
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Elven")
      end,
    },
  },
})

DefineAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 Constitution, +2 Charisma, -2 Strength",
  Key="Gnome ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Gnomes are physically weak but surprisingly hardy, and their attitude makes them naturally agreeable.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Small",
  Key="Gnome ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Gnomes are Small creatures and gain a +1 size bonus to their AC, a +1 size bonus on attack rolls, a -1 penalty to their Combat Maneuver Bonus and Combat Maneuver Defense, and a +4 size bonus on Stealth checks.",
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Slow Speed",
  Key="Gnome ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceSpeed"] == "true")
    end,
  },
  Description={
    Format="Gnomes have a base speed of 20 feet.",
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Low-Light Vision",
  Key="Gnome ~ Vision",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  Vision={
    {
      Vision="Low-Light Vision",
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceVision"] == "true")
    end,
  },
  Description={
    Format="Gnomes can see twice as far as humans in conditions of dim light.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasRacialVision",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Extraordinary",
    "Racial Vision",
  },
})

DefineAbility({
  Name="Defensive Training",
  Key="Gnome ~ Defensive Training",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+%1 dodge bonus to AC against monsters of the giant subtype.",
      Arguments={
        "RacialDefensiveTrainingBonus",
      },
    },
    {
      Name="Ability Benefit",
      FormatString="(+%1 dodge bonus to AC vs. giants)",
      Arguments={
        "RacialDefensiveTrainingBonus",
      },
    },
  },
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceDefensiveTraining"] == "true")
    end,
  },
  Description={
    Format="Gnomes get a +%1 dodge bonus to AC against monsters of the giant subtype.",
    Arguments={
      Formula("RacialDefensiveTrainingBonus"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "RacialDefensiveTrainingBonus",
      },
      Formula=Formula("4"),
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Defensive",
  },
})

DefineAbility({
  Name="Gnome Magic",
  Key="Gnome ~ Gnome Magic",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  SpellLikeAbilities={
    {
      Name="Dancing Lights",
      SpellBookName="Racial",
      Times="1",
      TimeUnit="Day",
      DC="10+CHA",
      CasterLevel="TL",
      Conditions={
        function (character)
          return ((character.Stats["CHA"] >= 11)) >= 1
        end,
      },
    },
    {
      Name="Ghost Sound",
      SpellBookName="Racial",
      Times="1",
      TimeUnit="Day",
      DC="10+CHA",
      CasterLevel="TL",
      Conditions={
        function (character)
          return ((character.Stats["CHA"] >= 11)) >= 1
        end,
      },
    },
    {
      Name="Speak with Animals",
      SpellBookName="Racial",
      Times="1",
      TimeUnit="Day",
      DC="11+CHA",
      CasterLevel="TL",
      Conditions={
        function (character)
          return ((character.Stats["CHA"] >= 11)) >= 1
        end,
      },
    },
    {
      Name="Prestidigitation",
      SpellBookName="Racial",
      Times="1",
      TimeUnit="Day",
      DC="10+CHA",
      CasterLevel="TL",
      Conditions={
        function (character)
          return ((character.Stats["CHA"] >= 11)) >= 1
        end,
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceGnomeMagic"] == "true")
    end,
  },
  Description={
    Format="Gnomes add +%1 to the DC of any saving throws against illusion spells that they cast. Gnomes with a Charisma of 11 or higher also gain the following spell-like abilities: 1/day--dancing lights, ghost sound, prestidigitation, and speak with animals. The caster level for these effects is equal to the gnome's level. The DC for these spells is equal to 10 + the spell's level + the gnome's Charisma modifier.",
    Arguments={
      Formula("Gnome_GnomeMagic_IllusionDCBonus"),
    },
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "SCHOOL.Illusion",
      },
      Formula=Formula("Gnome_GnomeMagic_IllusionDCBonus"),
    },
    {
      Category="VAR",
      Variables={
        "Gnome_GnomeMagic_IllusionDCBonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Special Quality",
    "Applied Bonus",
  },
})

DefineAbility({
  Name="Hatred",
  Key="Gnome ~ Hatred",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+%1 bonus on attack rolls against humanoid creatures of the reptilian and goblinoid subtypes due to special training against these hated foes.",
      Arguments={
        "Gnome_Hatred_AttackBonus",
      },
    },
    {
      Name="StatBlockName",
      FormatString="+%1 on attack rolls against goblinoid and reptilian humanoids",
      Arguments={
        "Gnome_Hatred_AttackBonus",
      },
    },
  },
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceHatred"] == "true")
    end,
  },
  Description={
    Format="Gnomes receive a +%1 bonus on attack rolls against humanoid creatures of the reptilian and goblinoid subtypes due to special training against these hated foes.",
    Arguments={
      Formula("Gnome_Hatred_AttackBonus"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_Hatred_AttackBonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialAttack",
    "Special Attack",
  },
})

DefineAbility({
  Name="Illusion Resistance",
  Key="Gnome ~ Illusion Resistance",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial saving throw bonus against illusion spells and effects.",
    },
  },
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceIllusionResistance"] == "true")
    end,
  },
  Description={
    Format="Gnomes get a +2 racial saving throw bonus against illusion spells and effects.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SaveBonus_vs_Illusions",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Keen Senses",
  Key="Gnome ~ Keen Senses",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceKeenSenses"] == "true")
    end,
  },
  Description={
    Format="Gnomes receive a +2 racial bonus on Perception skill checks.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "KeenSensesBonus",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Obsessive",
  Key="Gnome ~ Obsessive",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceObsessive"] == "true")
    end,
  },
  Description={
    Format="Gnomes receive a +2 racial bonus on a Craft or Profession skill of their choice.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Gnome Obsessive Skill Bonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Weapon Familiarity",
  Key="Gnome ~ Weapon Familiarity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Gnome",
    },
  },
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceWeaponFamiliarity"] == "true")
    end,
  },
  Description={
    Format="Gnomes treat any weapon with the word \"gnome\" in its name as a martial weapon.",
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Weapon Familiarity",
  },
})

DefineAbility({
  Name="Languages",
  Key="Gnome ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ Draconic",
    "Race Bonus Language ~ Dwarven",
    "Race Bonus Language ~ Elven",
    "Race Bonus Language ~ Giant",
    "Race Bonus Language ~ Goblin",
    "Race Bonus Language ~ Orc",
  },
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceLanguages"] == "true")
    end,
  },
  Description={
    Format="Gnomes begin play speaking Common, Gnome, and Sylvan. Gnomes with high Intelligence scores can choose from the following: Draconic, Dwarven, Elven, Giant, Goblin, and Orc.",
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Gnome") or stringMatch(language.Name, "Sylvan")
      end,
    },
  },
})

DefineAbility({
  Name="Obsessive Craft Bonus",
  Category="Internal",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Craft")))
    end),
  },
  Description={
    Format="Gnomes receive a +2 racial bonus on a Craft skill of their choice.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "LIST",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Gnome Obsessive Skill Bonus",
  },
})

DefineAbility({
  Name="Obsessive Profession Bonus",
  Category="Internal",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Profession")))
    end),
  },
  Description={
    Format="Gnomes receive a +2 racial bonus on a Profession skill of their choice.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "LIST",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Gnome Obsessive Skill Bonus",
  },
})

DefineAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 to One Ability Score",
  Key="Half-Elf ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Half-elf characters get a +2 bonus to one ability score of their choice at creation to represent their varied nature.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Ability Bonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Medium",
  Key="Half-Elf ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Half-elves are Medium creatures and have no bonuses or penalties due to their size.",
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Normal Speed",
  Key="Half-Elf ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceSpeed"] == "true")
    end,
  },
  Description={
    Format="Half-elves have a base speed of 30 feet.",
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Low-Light Vision",
  Key="Half-Elf ~ Vision",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Vision={
    {
      Vision="Low-Light Vision",
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceVision"] == "true")
    end,
  },
  Description={
    Format="Half-elves can see twice as far as humans in conditions of dim light.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasRacialVision",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Vision",
  },
})

DefineAbility({
  Name="Adaptability",
  Key="Half-Elf ~ Adaptability",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceAdaptability"] == "true")
    end,
  },
  Description={
    Format="Half-elves receive Skill Focus as a bonus feat at 1st level.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Adaptability Bonus Feat",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Elf Blood",
  Key="Half-Elf ~ Elf Blood",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceElfBlood"] == "true")
    end,
  },
  Description={
    Format="Half-elves count as both elves and humans for any effect related to race.",
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Special Quality",
  },
})

DefineAbility({
  Name="Elven Immunities",
  Key="Half-Elf ~ Elven Immunities",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial saving throw bonus against enchantment spells and effects.",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Sleep",
      },
    },
  },
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceElvenImmunities"] == "true")
    end,
  },
  Description={
    Format="Half-elves are immune to magic sleep effects and get a +2 racial saving throw bonus against enchantment spells and effects.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SaveBonus_vs_Enchantments",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Keen Senses",
  Key="Half-Elf ~ Keen Senses",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceKeenSenses"] == "true")
    end,
  },
  Description={
    Format="Half-elves receive a +%1 racial bonus on Perception skill checks.",
    Arguments={
      Formula("KeenSensesBonus"),
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "KeenSensesBonus",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Multitalented",
  Key="Half-Elf ~ Multitalented",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceMultitalented"] == "true")
    end,
  },
  Description={
    Format="Half-elves choose two favored classes at first level and gain +1 hit point or +1 skill point whenever they take a level in either one of those classes.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Favored Class",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Languages",
  Key="Half-Elf ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ All",
  },
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceLanguages"] == "true")
    end,
  },
  Description={
    Format="Half-elves begin play speaking Common and Elven. Half-elves with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic).",
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Elven")
      end,
    },
  },
})

DefineAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 to One Ability Score",
  Key="Half-Orc ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Half-orc characters get a +2 bonus to one ability score of their choice at creation to represent their varied nature.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Ability Bonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Medium",
  Key="Half-Orc ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Half-orcs are Medium creatures and have no bonuses or penalties due to their size.",
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Normal Speed",
  Key="Half-Orc ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceSpeed"] == "true")
    end,
  },
  Description={
    Format="Half-orcs have a base speed of 30 feet.",
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Darkvision",
  Key="Half-Orc ~ Vision",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.25",
  Vision={
    {
      Vision="Darkvision (60)",
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceVision"] == "true")
    end,
  },
  Description={
    Format="Half-orcs can see in the dark up to 60 feet.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasRacialVision",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Vision",
  },
})

DefineAbility({
  Name="Intimidating",
  Key="Half-Orc ~ Intimidating",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.25",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceIntimidating"] == "true")
    end,
  },
  Description={
    Format="Half-orcs receive a +2 racial bonus on Intimidate skill checks due to their fearsome nature.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Intimidate",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Orc Blood",
  Key="Half-Orc ~ Orc Blood",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.25",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceOrcBlood"] == "true")
    end,
  },
  Description={
    Format="Half-orcs count as both humans and orcs for any effect related to race.",
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Special Quality",
  },
})

DefineAbility({
  Name="Orc Ferocity",
  Key="Half-Orc ~ Orc Ferocity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.25",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceOrcFerocity"] == "true")
    end,
  },
  Description={
    Format="per day, when a half-orc is brought below 0 hit points but not killed, he can fight on for one more round as if disabled. At the end of his next turn, unless brought to above 0 hit points, he immediately falls unconscious and begins dying.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Orc_OrcFerocity_Times",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Defensive",
  },
})

DefineAbility({
  Name="Weapon Familiarity",
  Key="Half-Orc ~ Weapon Familiarity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "Greataxe",
        "Falchion",
      },
    },
  },
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Orc",
    },
  },
  SourcePage="p.25",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceWeaponFamiliarity"] == "true")
    end,
  },
  Description={
    Format="Half-orcs are proficient with greataxes and falchions and treat any weapon with the word \"orc\" in its name as a martial weapon.",
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Special Quality",
    "Weapon Familiarity",
  },
})

DefineAbility({
  Name="Languages",
  Key="Half-Orc ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ Abyssal",
    "Race Bonus Language ~ Draconic",
    "Race Bonus Language ~ Giant",
    "Race Bonus Language ~ Gnoll",
    "Race Bonus Language ~ Goblin",
  },
  SourcePage="p.25",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceLanguages"] == "true")
    end,
  },
  Description={
    Format="Half-orcs begin play speaking Common and Orc. Half-orcs with high Intelligence scores can choose from the following: Abyssal, Draconic, Giant, Gnoll, and Goblin.",
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Orc")
      end,
    },
  },
})

DefineAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 Dexterity, +2 Charisma, -2 Strength",
  Key="Halfling ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Halflings are nimble and strong-willed, but their small stature makes them weaker than other races.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Small",
  Key="Halfling ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Halflings are Small creatures and gain a +1 size bonus to their AC, a +1 size bonus on attack rolls, a -1 penalty to their Combat Maneuver Bonus and Combat Maneuver Defense, and a +4 size bonus on Stealth checks.",
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Slow Speed",
  Key="Halfling ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceSpeed"] == "true")
    end,
  },
  Description={
    Format="Halflings have a base speed of 20 feet.",
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Fearless",
  Key="Halfling ~ Fearless",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by halfling luck.",
    },
  },
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceFearless"] == "true")
    end,
  },
  Description={
    Format="Halflings receive a +2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by halfling luck.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SaveBonus_vs_Fear",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Halfling Luck",
  Key="Halfling ~ Halfling Luck",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceHalflingLuck"] == "true")
    end,
  },
  Description={
    Format="Halflings receive a +1 racial bonus on all saving throws.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_HalflingLuck_SaveBonus",
      },
      Formula=Formula("1"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Keen Senses",
  Key="Halfling ~ Keen Senses",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceKeenSenses"] == "true")
    end,
  },
  Description={
    Format="Halflings receive a +2 racial bonus on Perception skill checks.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "KeenSensesBonus",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Sure-Footed",
  Key="Halfling ~ Sure-Footed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceSureFooted"] == "true")
    end,
  },
  Description={
    Format="Halflings receive a +2 racial bonus on Acrobatics and Climb skill checks.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Acrobatics",
        "Climb",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Weapon Familiarity",
  Key="Halfling ~ Weapon Familiarity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "Sling",
      },
    },
  },
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Halfling",
    },
  },
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceWeaponFamiliarity"] == "true")
    end,
  },
  Description={
    Format="Halflings are proficient with slings and treat any weapon with the word \"halfling\" in its name as a martial weapon.",
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
    "Weapon Familiarity",
  },
})

DefineAbility({
  Name="Languages",
  Key="Halfling ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ Dwarven",
    "Race Bonus Language ~ Elven",
    "Race Bonus Language ~ Gnome",
    "Race Bonus Language ~ Goblin",
  },
  SourcePage="p.26",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceLanguages"] == "true")
    end,
  },
  Description={
    Format="Halflings begin play speaking Common and Halfling. Halflings with high Intelligence scores can choose from the following: Dwarven, Elven, Gnome, and Goblin.",
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Halfling")
      end,
    },
  },
})

DefineAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="+2 to One Ability Score",
  Key="Human ~ Ability Scores",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.27",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceAbilityScores"] == "true")
    end,
  },
  Description={
    Format="Human characters get a +2 bonus to one ability score of their choice at creation to represent their varied nature.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Ability Bonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
    "Racial Ability Scores",
  },
})

DefineAbility({
  Name="Medium",
  Key="Human ~ Size",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.27",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceSize"] == "true")
    end,
  },
  Description={
    Format="Humans are Medium creatures and have no bonuses or penalties due to their size.",
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
    "Racial Size",
  },
})

DefineAbility({
  Name="Normal Speed",
  Key="Human ~ Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.27",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceSpeed"] == "true")
    end,
  },
  Description={
    Format="Humans have a base speed of 30 feet.",
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
    "Racial Speed",
  },
})

DefineAbility({
  Name="Bonus Feat",
  Key="Human ~ Bonus Feat",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.27",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceBonusFeat"] == "true")
    end,
  },
  Description={
    Format="Humans select one extra feat at 1st level.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "FEAT",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Skilled",
  Key="Human ~ Skilled",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.27",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceSkilled"] == "true")
    end,
  },
  Description={
    Format="Humans gain an additional skill rank at 1st level and one additional rank whenever they gain a level.",
  },
  Bonuses={
    {
      Category="SKILLPOINTS",
      Variables={
        "NUMBER",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Languages",
  Key="Human ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Templates={
    "Race Bonus Language ~ All",
  },
  SourcePage="p.27",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceLanguages"] == "true")
    end,
  },
  Description={
    Format="Humans begin play speaking Common. Humans with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic).",
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common")
      end,
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aberration Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Aberration") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Animal") end) and 1 or 0) + (any(character.Race.RaceTypes, function (type) stringMatch(type, "Companion") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Construct Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Construct") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Dragon Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Dragon") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Fey Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Fey") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Humanoid Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Humanoid") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Magical Beast Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Magical Beast") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Monstrous Humanoid Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Monstrous Humanoid") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ooze Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Ooze") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Outsider Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Outsider") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Plant Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Plant") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Undead Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Undead") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Vermin Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Vermin") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Air Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Air") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Angel Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Angel") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aquatic Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Aquatic") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Archon Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Archon") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Azata Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Azata") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Chaotic Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Chaotic") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Cold Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Cold") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Demon Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Demon") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Devil Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Devil") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Dwarf Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Dwarf") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Earth Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Earth") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Elemental Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Elemental") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Elf Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Elf") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Evil Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Evil") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Extraplanar Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Extraplanar") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Fire Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Fire") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Giant Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Giant") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Gnome Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Gnome") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Gnoll Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Gnoll") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Goblinoid Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Goblinoid") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Good Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Good") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Halfling Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Halfling") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Human Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Human") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Incorporeal Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Incorporeal") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Lawful Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Lawful") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Native Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Native") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Oni Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Oni") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Orc Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Orc") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Reptilian Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Reptilian") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Shapechanger Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Shapechanger") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Swarm Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Swarm") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Water Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Water") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Mindless Traits",
      },
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Mindless") end) and 1 or 0)) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return (character.Variables["Mindless"] >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Clockwork Traits",
      },
      Conditions={
        function (character)
          return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Clockwork") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
})

DefineAbility({
  Name="Aberration Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aberration Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.306",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Animal Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.307",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Construct Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Templates={
    "No Constitution Score",
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Construct Traits Output",
      },
    },
  },
  ServesAs={
    {
      Ability="Special Ability",
      Names={
        "Immunity to Ability Damage",
        "Immunity to Ability Drain",
        "Immunity to Death Effects",
        "Immunity to Death from Massive Damage",
        "Immunity to Disease",
        "Immunity to Energy Drain",
        "Immunity to Exhaustion",
        "Immunity to Fatigue",
        "Immunity to Mind-Affecting Effects",
        "Immunity to Necromancy",
        "Immunity to Nonlethal Damage",
        "Immunity to Paralysis",
        "Immunity to Poison",
        "Immunity to Sleep",
        "Immunity to Stunning",
      },
    },
  },
  SourcePage="p.299",
  Bonuses={
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("max(SIZE-2,0)*10"),
    },
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("max(SIZE-6,0)*10"),
    },
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Dragon Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Dragon Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Magical Sleep",
        "Immunity to Paralysis",
      },
    },
  },
  SourcePage="p.307",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return character.HitDie >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.HitDie >= 1
        end,
      },
    },
  },
})

DefineAbility({
  Name="Fey Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Fey Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.307",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Humanoid Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (ClassIsType(class, "PC") and level >= 1) or (ClassIsType(class, "NPC") and level >= 1)
          end))
        end,
      },
    },
  },
  StatModifications={
    {
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Humanoid Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.308",
})

DefineAbility({
  Name="Magical Beast Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Magical Beast Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.308",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return not (((any(character.Race.Types, function (type) stringMatch(type, "Animal") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return not (((any(character.Race.Types, function (type) stringMatch(type, "Animal") end) and 1 or 0)) >= 1)
        end,
      },
    },
  },
})

DefineAbility({
  Name="Monstrous Humanoid Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Monstrous Humanoid Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.308",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Ooze Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ooze Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Critical Hits",
        "Immunity to Flanking",
        "Immunity to Paralysis",
        "Immunity to Poison",
        "Immunity to Polymorph",
        "Immunity to Sleep",
        "Immunity to Sneak Attacks",
        "Immunity to Stunning",
      },
    },
  },
  SourcePage="p.309",
  Vision={
    {
      Vision="Blind",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "BlindsightRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Outsider Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Types={
        "WeaponProfMartial",
      },
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return character.HitDie >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return (character.Variables["DisableRaceTypeGrantedProfs"] == 0)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Outsider Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.309",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return character.HitDie >= 1
        end,
      },
    },
  },
})

DefineAbility({
  Name="Plant Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Plant Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Mind-Affecting Effects",
        "Immunity to Paralysis",
        "Immunity to Poison",
        "Immunity to Polymorph",
        "Immunity to Sleep",
        "Immunity to Stunning",
      },
    },
  },
  SourcePage="p.301",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Undead Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Templates={
    "No Constitution Score",
  },
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Undead Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Ability Drain",
        "Immunity to Death Effects",
        "Immunity to Death from Massive Damage",
        "Immunity to Disease",
        "Immunity to Energy Drain",
        "Immunity to Exhaustion",
        "Immunity to Fatigue",
        "Immunity to Mind-Affecting Effects",
        "Immunity to Nonlethal Damage",
        "Immunity to Paralysis",
        "Immunity to Poison",
        "Immunity to Sleep",
        "Immunity to Stunning",
      },
    },
  },
  SourcePage="p.305",
  Bonuses={
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("TL*CHA"),
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula=Formula("CHA"),
    },
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Vermin Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Vermin Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.310",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Human Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Halfling Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Good Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aligned (Good)",
      },
    },
  },
  SourcePage="p.312",
})

DefineAbility({
  Name="Goblinoid Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
  ClassSkills={
    "Stealth",
  },
})

DefineAbility({
  Name="Gnome Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Gnoll Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.155",
})

DefineAbility({
  Name="Giant Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Low-Light Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["HasRacialVision"] == 1)
        end,
      },
    },
  },
  SourcePage="p.312",
  ClassSkills={
    "Intimidate",
    "Perception",
  },
})

DefineAbility({
  Name="Fire Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Fire",
        "Vulnerability to Cold",
      },
    },
  },
  SourcePage="p.312",
})

DefineAbility({
  Name="Extraplanar Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Evil Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aligned (Evil)",
      },
    },
  },
  SourcePage="p.312",
})

DefineAbility({
  Name="Elf Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.311",
})

DefineAbility({
  Name="Elemental Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Elemental Traits Output",
      },
    },
  },
  ServesAs={
    {
      Ability="Special Ability",
      Names={
        "Immunity to Critical Hits",
        "Immunity to Flanking",
        "Immunity to Paralysis",
        "Immunity to Poison",
        "Immunity to Sleep",
        "Immunity to Sneak Attacks",
        "Immunity to Stunning",
      },
    },
  },
  SourcePage="p.311",
})

DefineAbility({
  Name="Earth Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.311",
})

DefineAbility({
  Name="Dwarf Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.311",
})

DefineAbility({
  Name="Devil Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Devil Traits ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["OverrideSubtypeLanguage"] == 0)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aligned (Evil)",
        "Aligned (Lawful)",
        "Devil ~ See in Darkness",
        "Immunity to Fire",
        "Immunity to Poison",
        "Resistance to Acid",
        "Resistance to Cold",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Universal Monster Rule ~ Telepathy",
      },
      Conditions={
        function (character)
          return (character.Variables["RemoveSubtypeTelepathy"] == 0)
        end,
      },
    },
  },
  SourcePage="p.311",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "AcidResistanceBonus",
        "ColdResistanceBonus",
      },
      Formula=Formula("10"),
      Type={
        Name="Resistance",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Demon Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Demon Traits ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["OverrideSubtypeLanguage"] == 0)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aligned (Chaotic)",
        "Aligned (Evil)",
        "Immunity to Electricity",
        "Immunity to Poison",
        "Resistance to Acid",
        "Resistance to Cold",
        "Resistance to Fire",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Universal Monster Rule ~ Telepathy",
      },
      Conditions={
        function (character)
          return (character.Variables["RemoveSubtypeTelepathy"] == 0)
        end,
      },
    },
  },
  SourcePage="p.311",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "AcidResistanceBonus",
        "ColdResistanceBonus",
        "FireResistanceBonus",
      },
      Formula=Formula("10"),
      Type={
        Name="Resistance",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Cold Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Cold",
        "Vulnerability to Fire",
      },
    },
  },
  SourcePage="p.311",
})

DefineAbility({
  Name="Chaotic Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aligned (Chaotic)",
      },
    },
  },
  SourcePage="p.311",
})

DefineAbility({
  Name="Azata Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Azata ~ Truespeech",
        "Immunity to Electricity",
        "Immunity to Petrification",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Darkvision",
        "Low-Light Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["HasRacialVision"] == 1)
        end,
      },
    },
  },
  SourcePage="p.311",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Archon Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Archon ~ Aura of Menace",
        "Archon ~ Save vs Poison",
        "Archon ~ Teleport",
        "Archon ~ Truespeech",
        "Immunity to Electricity",
        "Immunity to Petrification",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Darkvision",
        "Low-Light Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["HasRacialVision"] == 1)
        end,
      },
    },
  },
  SourcePage="p.310",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Aquatic Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.310",
  ClassSkills={
    "Swim",
  },
})

DefineAbility({
  Name="Angel Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Angel ~ Protective Aura",
        "Angel ~ Save vs Poison",
        "Angel ~ Truespeech",
        "Immunity to Acid",
        "Immunity to Cold",
        "Immunity to Petrification",
        "Resistance to Electricity",
        "Resistance to Fire",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Darkvision",
        "Low-Light Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["HasRacialVision"] == 1)
        end,
      },
    },
  },
  SourcePage="p.310",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ElectricityResistanceBonus",
        "FireResistanceBonus",
      },
      Formula=Formula("10"),
      Type={
        Name="Resistance",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Air Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.310",
  ClassSkills={
    "Fly",
  },
})

DefineAbility({
  Name="Incorporeal Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Templates={
    "No Strength Score",
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Incorporeal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Incorporeal",
      },
    },
  },
  SourcePage="p.311",
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("max(1,CHA)"),
      Type={
        Name="Deflection",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "TOHIT.MELEE",
      },
      Formula=Formula("DEX"),
    },
    {
      Category="VAR",
      Variables={
        "CanNotGrapple",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "CMB",
      },
      Formula=Formula("DEX"),
    },
  },
})

DefineAbility({
  Name="Water Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.313",
})

DefineAbility({
  Name="Swarm Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Swarm Traits Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Can't Be Tripped",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Distraction ~ Swarm",
      },
    },
  },
  SourcePage="p.312",
})

DefineAbility({
  Name="Shapechanger Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Reptilian Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Orc Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Light Sensitivity",
      },
      Conditions={
        function (character)
          return not (((character.Race.Name == "Half-Orc" and 1 or 0)) >= 1)
        end,
        function (character)
          return (character.Variables["RemoveLightSensitive"] == 0)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Darkvision",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "RacialVision" or ability.Type == "Racial Vision")
          end)
        end,
      },
    },
  },
  SourcePage="p.312",
})

DefineAbility({
  Name="Oni Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Templates={
    "Native",
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Oni ~ Change Shape",
      },
    },
  },
  SourcePage="p.221",
})

DefineAbility({
  Name="Native Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  SourcePage="p.312",
})

DefineAbility({
  Name="Lawful Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aligned (Lawful)",
      },
    },
  },
  SourcePage="p.312",
})

DefineAbility({
  Name="Mindless Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Templates={
    "No Intelligence Score",
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Mind-Affecting Effects",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Mindless",
      },
    },
  },
})

DefineAbility({
  Name="Clockwork Traits",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("2"),
      Type={
        Name="Dodge",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Mindless",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="Aberration Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Aberration Traits",
  SourcePage="p.306",
  Description={
    Format="Aberrations breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Animal Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Animal Traits",
  SourcePage="p.307",
  Description={
    Format="Animals breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Construct Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Construct Traits",
  SourcePage="p.299",
  Description={
    Format="Constructs are immune to death effects, disease, mind-affecting effects (charms, compulsions, phantasms, patterns, and morale effects), necromancy effects, paralysis, poison, sleep, stun, and any effect that requires a Fortitude save (unless the effect also works on objects, or is harmless). Constructs are not subject to nonlethal damage, ability damage, ability drain, fatigue, exhaustion, or energy drain. Constructs are not at risk of death from massive damage.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
    "Defensive",
  },
})

DefineAbility({
  Name="Dragon Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Dragon Traits",
  SourcePage="p.307",
  Description={
    Format="Dragons have Immunity to magic sleep effects and paralysis effects. Dragons breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Elemental Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Elemental Traits",
  SourcePage="p.311",
  Description={
    Format="Elementals are immune to paralysis, poison, sleep effects, and stunning. Elementals are not subject to critical hits or flanking. Elementals do not take additional damage from precision-based attacks, such as sneak attack. Elementals do not breathe, eat, or sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
    "Immunity",
  },
})

DefineAbility({
  Name="Fey Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Fey Traits",
  SourcePage="p.307",
  Description={
    Format="Fey breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Humanoid Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Humanoid Traits",
  SourcePage="p.308",
  Description={
    Format="Humanoids breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Incorporeal Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Incorporeal Traits",
  Description={
    Format="Can be harmed only by other incorporeal creatures/+1 or better weapons/magic. 50%% chance to ignore any damage from a corporeal source. Can pass through solid objects at will. Attacks pass through armor. Always moves silently.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Magical Beast Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Magical Beast Traits",
  SourcePage="p.308",
  Description={
    Format="Magical beasts breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Monstrous Humanoid Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Monstrous Humanoid Traits",
  SourcePage="p.308",
  Description={
    Format="Monstrous humanoids breathe, eat, and sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Ooze Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Ooze Traits",
  SourcePage="p.309",
  Description={
    Format="Oozes are not subject to critical hits or flanking and do not take additional damage from precision-based attacks, such as sneak attack. Oozes eat and breathe, but do not sleep.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Outsider Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Outsider Traits",
  SourcePage="p.309",
  Description={
    Format="An outsider with the native subtype can be raised, reincarnated, or resurrected just as other living creatures can be. Native outsider breathe, eat, and sleep.",
    Arguments={
      Formula("PRERACE:1,RACESUBTYPE=Native"),
    },
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Plant Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Plant Traits",
  SourcePage="p.301",
  Description={
    Format="Plants are immune to all mind-affecting effects (charms, compulsions, morale effects, patterns, and phantasms), paralysis, poison, polymorph, sleep, and stun.",
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Swarm Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Swarm Traits",
  SourcePage="p.312",
  Description={
    Format="A swarm composed of Fine or Diminutive creatures is immune to all weapon damage and are also susceptible to high winds, such as those created by a gust of wind spell.",
    Arguments={
      Formula("PRESIZELTEQ:D"),
    },
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
    "Defensive",
  },
})

DefineAbility({
  Name="Undead Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Undead Traits",
  SourcePage="p.305",
  Description={
    Format="Mindless - Immune to all mind-affecting effects (charms/ compulsions/ phantasms/ patterns/ and morale effects), Cannot heal damage on own if has no Intelligence score (but can be healed and Fast Healing works)",
    Arguments={
      Formula("PRETEMPLATE:1,Mindless"),
    },
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Vermin Traits Output",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DisplayName="Vermin Traits",
  SourcePage="p.310",
  Description={
    Format="Mindless vermin are immune to mind-affecting effects (charms, compulsions, phantasms, patterns, and morale effects).",
    Arguments={
      Formula("PRETEMPLATE:1,Mindless"),
    },
  },
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})

DefineAbility({
  Name="Protective Aura",
  Key="Angel ~ Protective Aura",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(20 ft.)",
    },
  },
  SourcePage="p.310",
  Description={
    Format="Against attacks made or effects created by evil creatures, this ability provides a +4 deflection bonus to AC and a +4 resistance bonus on saving throws to anyone within 20 feet of the angel. Otherwise, it functions as a magic circle against evil effect and a lesser globe of invulnerability, both with a radius of 20 feet (caster level %1).",
    Arguments={
      Formula("TL"),
    },
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Aura",
  },
})

DefineAbility({
  Name="Truespeech",
  Key="Angel ~ Truespeech",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.310",
  Description={
    Format="All angels can speak with any creature that has a language, as though using a tongues spell (caster level %1). This ability is always active.",
    Arguments={
      Formula("TL"),
    },
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Communicate",
  },
})

DefineAbility({
  Name="+4 racial bonus on saves against poison",
  Key="Angel ~ Save vs Poison",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+4 vs. poison",
    },
  },
  Types={
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Aura of Menace",
  Key="Archon ~ Aura of Menace",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(20 ft., DC %1)",
      Arguments={
        "AuraOfMenaceDC",
      },
    },
  },
  SourcePage="p.311",
  Description={
    Format="A righteous aura surrounds archons that fight or get angry. Any hostile creature within a 20-foot radius of an archon must succeed on a DC %1 Will save to resist its effects. Those who fail take a -2 penalty on attacks, AC, and saves for 24 hours or until they successfully hit the archon that generated the aura. A creature that has resisted or broken the effect cannot be affected again by the same archon's aura for 24 hours.",
    Arguments={
      Formula("AuraOfMenaceDC"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "AuraOfMenaceDC",
      },
      Formula=Formula("12+(HD/2)+CHA"),
    },
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Aura",
  },
})

DefineAbility({
  Name="Teleport",
  Key="Archon ~ Teleport",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.311",
  Description={
    Format="Archons can use greater teleport at will, as the spell (caster level 14th), except that the creature can transport only itself and up to 50 pounds of carried objects.",
  },
  Types={
    "SpecialQuality",
    "SpellLike",
    "ModifyMovement",
  },
})

DefineAbility({
  Name="Truespeech",
  Key="Archon ~ Truespeech",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.311",
  Description={
    Format="All archons can speak with any creature that has a language, as though using a tongues spell (caster level 14th). This ability is always active.",
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Communicate",
  },
})

DefineAbility({
  Name="+4 racial bonus on saves against poison",
  Key="Archon ~ Save vs Poison",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+4 vs. poison",
    },
  },
  Types={
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Truespeech",
  Key="Azata ~ Truespeech",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.311",
  Description={
    Format="All azatas can speak with any creature that has a language, as though using a tongues spell (caster level 14th). This ability is always active.",
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Communicate",
  },
})

DefineAbility({
  Name="See in Darkness",
  Key="Devil ~ See in Darkness",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.311",
  Description={
    Format="Devils can see perfectly in darkness of any kind, even that created by a deeper darkness spell.",
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Sense",
  },
})

DefineAbility({
  Name="Change Shape",
  Key="Oni ~ Change Shape",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(Small, Medium or Large Humanoid; Alter Self of Giant Form I)",
    },
  },
  SourcePage="p.221",
  Description={
    Format="You have the ability to assume the appearance of creatures similar in shape to your true form, but retain most of your own physical qualities.",
  },
  Types={
    "SpecialQuality",
    "Supernatural",
  },
})

DefineAbility({
  Name="Devil Traits ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Infernal") or stringMatch(language.Name, "Celestial") or stringMatch(language.Name, "Draconic")
      end,
    },
  },
})

DefineAbility({
  Name="Demon Traits ~ Languages",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Abyssal") or stringMatch(language.Name, "Celestial") or stringMatch(language.Name, "Draconic")
      end,
    },
  },
})

DefineAbility({
  Name="PERMANENCY SPELL / ADD THIS FIRST TO ADD NEW EFFECTS",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SortKey="1",
  Description={
    Format="REMOVE this when you are done to remove the reminder on the TODO.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Permanency Applied Effects",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Arcane Sight",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  SpellLikeAbilities={
    {
      Name="Arcane Sight",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyArcaneSightLVL",
    },
  },
  Description={
    Format="This spell makes your eyes glow blue and allows you to see magical auras within 120 feet of you. The effect is similar to that of a detect magic spell, but arcane sight does not require concentration and discerns aura location and power more quickly. You know the location and power of all magical auras within your sight. An aura's power depends on a spell's functioning level or an item's caster level, as noted in the description of the detect magic spell. If the items or creatures bearing the auras are in line of sight, you can make Spellcraft skill checks to determine the school of magic involved in each. [Make one check per aura; DC 15 + spell level, or 15 + one-half caster level for a nonspell effect.] If you concentrate on a specific creature within 120 feet of you as a standard action, you can determine whether it has any spellcasting or spell-like abilities, whether these are arcane or divine [spell-like abilities register as arcane], and the strength of the most powerful spell or spell-like ability the creature currently has available for use.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyArcaneSightLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Comprehend Languages",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Comprehend Languages",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyComprehendLanguagesLVL",
    },
  },
  Description={
    Format="You can understand the spoken words of creatures or read otherwise incomprehensible written messages. In either case, you must touch the creature or the writing. The ability to read does not necessarily impart insight into the material, merely its literal meaning. The spell enables you to understand or read an unknown language, not speak or write it. Written material can be read at the rate of one page [250 words] per minute. Magical writing cannot be read, though the spell reveals that it is magical. This spell can be foiled by certain warding magic [such as the secret page and illusory script spells]. It does not decipher codes or reveal messages concealed in otherwise normal text.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyComprehendLanguagesLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Darkvision",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Darkvision",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyDarkvisionLVL",
    },
  },
  Description={
    Format="The subject gains the ability to see 60 feet even in total darkness. Darkvision is black and white only but otherwise like normal sight. Darkvision does not grant one the ability to see in magical darkness.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyDarkvisionLVL",
      },
      Formula=Formula("%LIST"),
    },
    {
      Category="VAR",
      Variables={
        "DarkvisionRange",
      },
      Formula=Formula("60"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Detect Magic",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Detect Magic",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyDetectMagicLVL",
    },
  },
  Description={
    Format="You detect magical auras. The amount of information revealed depends on how long you study a particular area or subject. &nl;1st Round: Presence or absence of magical auras. &nl;2nd Round: Number of different magical auras and the power of the most potent aura. &nl;3rd Round: The strength and location of each aura. If the items or creatures bearing the auras are in line of sight, you can make Spellcraft skill checks to determine the school of magic involved in each. [Make one check per aura; DC 15 + spell level, or 15 + half caster level for a nonspell effect.] &nl;Magical areas, multiple types of magic, or strong local magical emanations may distort or conceal weaker auras. &nl;Aura Strength: An aura's power depends on a spell's functioning spell level or an item's caster level. If an aura falls into more than one category, detect magic indicates the stronger of the two. &nl;  &pipe;--------- Aura Power --------- &nl;Spell or Object &pipe;Faint &pipe;Moderate &pipe;Strong &pipe;Overwhelming &nl;Functioning spell [spell level] &pipe;3rd or lower &pipe;4th-6th &pipe;7th-9th &pipe;10th+ [deity-level] &nl;Magic item [caster level] &pipe;5th or lower &pipe;6th-11th &pipe;12th-20th &pipe;21st+ [artifact] &nl;Lingering Aura: A magical aura lingers after its original source dissipates [in the case of a spell] or is destroyed [in the case of a magic item]. If detect magic is cast and directed at such a location, the spell indicates an aura strength of dim [even weaker than a faint aura]. How long the aura lingers at this dim level depends on its original power: &nl;Original Strength &pipe;Duration of Lingering Aura &nl;Faint &pipe;1d6 rounds &nl;Moderate &pipe;1d6 minutes &nl;Strong &pipe;1d6x10 minutes &nl;Overwhelming &pipe;1d6 days &nl;Outsiders and elementals are not magical in themselves, but if they are summoned, the conjuration spell registers. &nl;Each round, you can turn to detect magic in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyDetectMagicLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Read Magic",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Read Magic",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyReadMagicLVL",
    },
  },
  Description={
    Format="By means of read magic, you can decipher magical inscriptions on objects-books, scrolls, weapons, and the like-that would otherwise be unintelligible. This deciphering does not normally invoke the magic contained in the writing, although it may do so in the case of a cursed scroll. Furthermore, once the spell is cast and you have read the magical inscription, you are thereafter able to read that particular writing without recourse to the use of read magic. You can read at the rate of one page [250 words] per minute. The spell allows you to identify a glyph of warding with a DC 13 Spellcraft check, a greater glyph of warding with a DC 16 Spellcraft check, or any symbol spell with a Spellcraft check [DC 10 + spell level].",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyReadMagicLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / See Invisibility",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="See Invisibility",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecySeeInvisibilityLVL",
    },
  },
  Description={
    Format="You can see any objects or beings that are invisible within your range of vision, as well as any that are ethereal, as if they were normally visible. Such creatures are visible to you as translucent shapes, allowing you easily to discern the difference between visible, invisible, and ethereal creatures. The spell does not reveal the method used to obtain invisibility. It does not reveal illusions or enable you to see through opaque objects. It does not reveal creatures who are simply hiding, concealed, or otherwise hard to see.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecySeeInvisibilityLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Tongues",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Tongues",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyTonguesLVL",
    },
  },
  Description={
    Format="This spell grants the creature touched the ability to speak and understand the language of any intelligent creature, whether it is a racial tongue or a regional dialect. The subject can speak only one language at a time, although it may be able to understand several languages. Tongues does not enable the subject to speak with creatures who don't speak. The subject can make itself understood as far as its voice carries. This spell does not predispose any creature addressed toward the subject in any way.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyTonguesLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Enlarge Person",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Enlarge Person",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyEnlargePersonLVL",
    },
  },
  Description={
    Format="This spell causes instant growth of a humanoid creature, doubling its height and multiplying its weight by 8. This increase changes the creature's size category to the next larger one. The target gains a +2 size bonus to Strength, a -2 size penalty to Dexterity [to a minimum of 1], and a -1 penalty on attack rolls and AC due to its increased size. A humanoid creature whose size increases to Large has a space of 10 feet and a natural reach of 10 feet. This spell does not change the target's speed. If insufficient room is available for the desired growth, the creature attains the maximum possible size and may make a Strength check [using its increased Strength] to burst any enclosures in the process. If it fails, it is constrained without harm by the materials enclosing it- the spell cannot be used to crush a creature by increasing its size. All equipment worn or carried by a creature is similarly enlarged by the spell. Melee and projectile weapons affected by this spell deal more damage. Other magical properties are not affected by this spell. Any enlarged item that leaves an enlarged creature's possession [including a projectile or thrown weapon] instantly returns to its normal size. This means that thrown weapons deal their normal damage, and projectiles deal damage based on the size of the weapon that fired them. Magical properties of enlarged items are not increased by this spell. Multiple magical effects that increase size do not stack,. Enlarge person counters and dispels reduce person.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.GRAPPLE",
      },
      Formula=Formula("5"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SIZEMOD",
      Variables={
        "NUMBER",
      },
      Formula=Formula("1"),
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("-2"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "PermanecyEnlargePersonLVL",
      },
      Formula=Formula("%LIST"),
    },
    {
      Category="VAR",
      Variables={
        "SizeIncrease",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Aklys (Gladiator)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Aklys",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Amentum (Javelin)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Amentum",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Atlatl",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Axe (Orc Double)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Axe (Throwing)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Ballista (Gate Breaker)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Ballista (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Ballista (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Battle Aspergillum",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Battleaxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Blowgun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Blunderbuss",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bo Staff",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Boar Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bolas",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bombard (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bombard (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bombard (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Brass Knuckles",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Broadsword (Nine Ring)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Buckler Gun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Butterfly Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Cannon (Fiend's Mouth)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Cannon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Catapult (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Catapult (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Catapult (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Chain (Spiked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Chain Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Club",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Hand)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Hand)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Culverin",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Curve Blade (Elven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Dagger (Punching)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Dagger",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Dan Bong",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Dogslicer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Double Chicken Saber",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Double Hackbut",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Earth Breaker",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Emei Piercer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Falchion",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Fighting Fan",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Fire Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Firearms",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Firedrake",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Firewyrm",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Flail (Dire)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Flail (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Flail",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Flying Blade",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Gauntlet (Spiked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Gauntlet",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Gladius",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Glaive",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Great Terbutje",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Greataxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Greatclub",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Greatsword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Guisarme",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Halberd",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Hammer (Gnome Hooked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Hammer (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Handaxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Harpoon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Hooked Axe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Hooked Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Horsechopper",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Hunga Munga",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Iron Brush",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Javelin",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Jutte",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kama (Double-Chained)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kama",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Katana (Double Walking Stick)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Katana",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kerambit",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kestros",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Klar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Knuckle Axe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kukri",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kusarigama (Sickle and Chain)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Kyoketsu Shoge",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Longbow",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Longspear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Longsword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Lucerne Hammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Lungchuan Tamo",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Mace (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Mace (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Madu",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Mattock",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Mere Club",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Meteor Hammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Monk's Spade",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Morningstar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Musket (Axe)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Musket (Double-Barreled)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Musket (Warhammer)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Musket",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Naginata",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Net",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Nine-Section Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Nodachi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Nunchaku",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Ogre Hook",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pata",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pepperbox",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pick (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pick (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pistol (Coat)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pistol (Dagger)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pistol (Double-Barreled)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pistol (Dragon)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pistol (Sword Cane)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Pistol",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Poisoned Sand Tube",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Quadrens",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Quarterstaff",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Ranseur",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Rapier",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Revolver",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Rhoka Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Rhomphaia",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Rifle",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Rope Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sai",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sansetsukon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sap",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sawtooth Sabre",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Scimitar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Scizore",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Scorpion Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Scythe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shang Gou",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shieldbash",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shortbow",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shortspear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shotel",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shotgun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Shuriken",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Siangham",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sibat",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sica",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sickle",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sling Staff (Halfling)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sling",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Snag Net",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Spiked Armor",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Splash Weapon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Springal (Arrow)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Springal (Rocket)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Starknife",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sword (Bastard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sword (Seven-Branched)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sword (Short)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sword (Tri-Point Double-Edged)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Sword (Two-Bladed)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Swordbreaker (Dagger)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Taiaha",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Taiaha",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tekko-Kagi (Iron Claw)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Temple Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tepoztopilli",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Terbutje (Great)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Terbutje",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tetsubo",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Throwing Shield",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tiger Fork",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tonfa",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Trident",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tube Arrow Shooter",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Urgrosh (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Urumi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Wahaika",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Wakizashi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Warhammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Wushu Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
    {
      Category="WIELDCATEGORY",
      Variables={
        "ALL",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Magic Fang",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Magic Fang",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyMagicFangLVL",
    },
  },
  Description={
    Format="Magic fang gives one natural weapon of the subject a +1 enhancement bonus on attack and damage rolls. The spell can affect a slam attack, fist, bite, or other natural weapon. [The spell does not change an unarmed strike's damage from nonlethal damage to lethal damage.]",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyMagicFangLVL",
      },
      Formula=Formula("%LIST"),
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Greater Magic Fang",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Magic Fang (Greater)",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyMagicFangGreaterLVL",
    },
  },
  Description={
    Format="This spell functions like magic fang, except that the enhancement bonus on attack and damage rolls is +1 per four caster levels [maximum +5]. Alternatively, you may imbue all of the creature's natural weapons with a +1 enhancement bonus [regardless of your caster level].",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyMagicFangGreaterLVL",
      },
      Formula=Formula("%LIST"),
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("MIN(floor(%LIST/4),5)"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Reduce Person",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Reduce Person",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyReducePersonLVL",
    },
  },
  Description={
    Format="This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8. This decrease changes the creature's size category to the next smaller one. The target gains a +2 size bonus to Dexterity, a -2 size penalty to Strength [to a minimum of 1], and a +1 bonus on attack rolls and AC due to its reduced size. A Small humanoid creature whose size decreases to Tiny has a space of 2-1/2 feet and a natural reach of 0 feet [meaning that it must enter an opponent's square to attack]. A Large humanoid creature whose size decreases to Medium has a space of 5 feet and a natural reach of 5 feet. This spell doesn't change the target's speed. All equipment worn or carried by a creature is similarly reduced by the spell. Melee and projectile weapons deal less damage. Other magical properties are not affected by this spell. Any reduced item that leaves the reduced creature's possession [including a projectile or thrown weapon] instantly returns to its normal size. This means that thrown weapons deal their normal damage [projectiles deal damage based on the size of the weapon that fired them]. Multiple magical effects that reduce size do not stack. Reduce person counters and dispels enlarge person.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.GRAPPLE",
      },
      Formula=Formula("-5"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SIZEMOD",
      Variables={
        "NUMBER",
      },
      Formula=Formula("-1"),
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "PermanecyReducePersonLVL",
      },
      Formula=Formula("%LIST"),
    },
    {
      Category="VAR",
      Variables={
        "SizeDecrease",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Aklys (Gladiator)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Aklys",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Amentum (Javelin)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Amentum",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Atlatl",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Axe (Orc Double)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Axe (Throwing)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Ballista (Gate Breaker)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Ballista (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Ballista (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Battle Aspergillum",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Battleaxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Blowgun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Blunderbuss",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Bo Staff",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Boar Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Bolas",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Bombard (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Bombard (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Bombard (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Brass Knuckles",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Broadsword (Nine Ring)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Buckler Gun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Butterfly Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Cannon (Fiend's Mouth)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Cannon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Catapult (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Catapult (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Catapult (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Chain (Spiked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Chain Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Club",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Hand)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Hand)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Culverin",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Curve Blade (Elven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Dagger (Punching)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Dagger",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Dan Bong",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Dogslicer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Double Chicken Saber",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Double Hackbut",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Earth Breaker",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Emei Piercer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Falchion",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Fighting Fan",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Fire Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Firearms",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Firedrake",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Firewyrm",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Flail (Dire)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Flail (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Flail",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Flying Blade",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Gauntlet (Spiked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Gauntlet",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Gladius",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Glaive",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Great Terbutje",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Greataxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Greatclub",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Greatsword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Guisarme",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Halberd",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Hammer (Gnome Hooked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Hammer (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Handaxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Harpoon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Hooked Axe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Hooked Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Horsechopper",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Hunga Munga",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Iron Brush",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Javelin",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Jutte",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kama (Double-Chained)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kama",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Katana (Double Walking Stick)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Katana",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kerambit",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kestros",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Klar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Knuckle Axe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kukri",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kusarigama (Sickle and Chain)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Kyoketsu Shoge",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Longbow",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Longspear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Longsword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Lucerne Hammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Lungchuan Tamo",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Mace (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Mace (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Madu",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Mattock",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Mere Club",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Meteor Hammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Monk's Spade",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Morningstar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Musket (Axe)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Musket (Double-Barreled)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Musket (Warhammer)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Musket",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Naginata",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Net",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Nine-Section Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Nodachi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Nunchaku",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Ogre Hook",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pata",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pepperbox",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pick (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pick (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pistol (Coat)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pistol (Dagger)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pistol (Double-Barreled)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pistol (Dragon)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pistol (Sword Cane)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Pistol",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Poisoned Sand Tube",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Quadrens",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Quarterstaff",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Ranseur",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Rapier",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Revolver",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Rhoka Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Rhomphaia",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Rifle",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Rope Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sai",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sansetsukon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sap",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sawtooth Sabre",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Scimitar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Scizore",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Scorpion Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Scythe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shang Gou",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shieldbash",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shortbow",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shortspear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shotel",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shotgun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Shuriken",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Siangham",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sibat",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sica",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sickle",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sling Staff (Halfling)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sling",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Snag Net",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Spiked Armor",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Splash Weapon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Springal (Arrow)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Springal (Rocket)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Starknife",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sword (Bastard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sword (Seven-Branched)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sword (Short)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sword (Tri-Point Double-Edged)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Sword (Two-Bladed)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Swordbreaker (Dagger)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Taiaha",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Taiaha",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Tekko-Kagi (Iron Claw)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Temple Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Tepoztopilli",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Terbutje (Great)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Terbutje",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Tetsubo",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Throwing Shield",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Tiger Fork",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Tonfa",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Trident",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Tube Arrow Shooter",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Unarmed Strike",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Internal" and (ability.Name == "Monk ~ Unarmed Damage")
          end))
        end,
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Urgrosh (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Urumi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Wahaika",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Wakizashi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Warhammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPONPROF=Wushu Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WIELDCATEGORY",
      Variables={
        "ALL",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Resistance",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Resistance",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyResistanceLVL",
    },
  },
  Description={
    Format="You imbue the subject with magical energy that protects it from harm, granting it a +1 resistance bonus on saves.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "ALL",
      },
      Formula=Formula("1"),
      Type={
        Name="Resistance",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "PermanecyResistanceLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Permanency Spell / Telepathic Bond",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseString({"13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  SpellLikeAbilities={
    {
      Name="Telepathic Bond",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyTelepathicBondLVL",
    },
  },
  Description={
    Format="You forge a telepathic bond among yourself and a number of willing creatures, each of which must have an Intelligence score of 3 or higher. Each creature included in the link is linked to all the others. The creatures can communicate telepathically through the bond regardless of language. No special power or influence is established as a result of the bond. Once the bond is formed, it works over any distance [although not from one plane to another]. If desired, you may leave yourself out of the telepathic bond forged. This decision must be made at the time of casting. Telepathic bond can be made permanent with a permanency spell, though it only bonds two creatures per casting of permanency.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PermanecyTelepathicBondLVL",
      },
      Formula=Formula("%LIST"),
    },
  },
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})

DefineAbility({
  Name="Animal Tricks and Training",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion ~ Bonus Tricks",
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Animal Trick",
      },
      Formula=Formula("1"),
    },
    {
      Category="ABILITYPOOL",
      Variables={
        "Animal Trick",
      },
      Formula=Formula("2"),
      Conditions={
        function (character)
          return ((character.Stats["INT"] >= 1)) >= 1
        end,
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="ABILITYPOOL",
      Variables={
        "Animal Trick",
      },
      Formula=Formula("(INTSCORE-1)*3"),
      Conditions={
        function (character)
          return ((character.Stats["INT"] >= 2)) >= 1
        end,
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end) and 1 or 0)) >= 1)
        end,
      },
    },
  },
  Types={
    "Internal",
  },
})

DefineAbility({
  Name="+2 Strength",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "AbilityBonus",
  },
})

DefineAbility({
  Name="+2 Dexterity",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "AbilityBonus",
  },
})

DefineAbility({
  Name="+2 Constitution",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "AbilityBonus",
  },
})

DefineAbility({
  Name="+2 Intelligence",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "AbilityBonus",
  },
})

DefineAbility({
  Name="+2 Wisdom",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "AbilityBonus",
  },
})

DefineAbility({
  Name="+2 Charisma",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("2"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "AbilityBonus",
  },
})

DefineAbility({
  Name="None",
  Key="Human Ethnicity ~ None",
  Category="Background",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "HumanEthnicity",
  },
})

DefineAbility({
  Name="Unknown",
  Key="Human Ethnicity ~ Unknown",
  Category="Background",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "HumanEthnicity",
  },
})

DefineAbility({
  Name="None",
  Key="Region ~ None",
  Category="Background",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "Region",
  },
})

DefineAbility({
  Name="Unknown",
  Key="Region ~ Unknown",
  Category="Background",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "Region",
  },
})

DefineAbility({
  Name="Wildshape 2 ~ Eagle",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Movement={
    Fly=60,
  },
})

DefineAbility({
  Name="Wildshape 3 ~ Eagle",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Movement={
    Fly=80,
  },
})

DefineAbility({
  Name="Wildshape 2 ~ Gar",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Movement={
    Swim=60,
  },
})

DefineAbility({
  Name="Wildshape 3 ~ Squid",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Movement={
    Jet=240,
  },
})

