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
  SortKey="1",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=1,
  Stackable=true,
  Visible=true,
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
})
DefineAbility({
  Name="+2 Constitution, +2 Wisdom, -2 Charisma",
  Key="Dwarf ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Dwarves are both tough and wise, but also a bit gruff.",
  },
  SourcePage="p.21",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CHA",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Dwarves are Medium creatures and have no bonuses or penalties due to their size.",
  },
  SourcePage="p.21",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Dwarves have a base speed of 20 feet, but their speed is never modified by armor or encumbrance.",
  },
  SourcePage="p.21",
  Visible=true,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Steady",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceSpeed"] == "True")
    end,
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
  Description={
    Format="Dwarves can see in the dark up to 60 feet.",
  },
  SourcePage="p.21",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasRacialVision",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceVision"] == "True")
    end,
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Extraordinary",
    "Racial Vision",
  },
  Visions={
    {
      Kind={
        "Darkvision (60)",
      },
    },
  },
})
DefineAbility({
  Name="Defensive Training",
  Key="Dwarf ~ Defensive Training",
  Category="Special Ability",
  Description={
    Format="Dwarves get a +%1 dodge bonus to AC against monsters of the giant subtype.",
    Arguments={
      Formula("RacialDefensiveTrainingBonus"),
    },
  },
  SourcePage="p.21",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "RacialDefensiveTrainingBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceDefensiveTraining"] == "True")
    end,
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
  Description={
    Format="Dwarves receive a +2 racial bonus on Appraise skill checks made to determine the price of nonmagical goods that contain precious metals or gemstones.",
    Conditions={
      function (character)
        return (character.Variables["DwarvenGreedAspect"] == 0)
      end,
    },
  },
  SourcePage="p.21",
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Conditions={
        function (character)
          return (character.Variables["DwarvenGreedAspect"] == 0)
        end,
      },
      Variables={
        "Appraise=to assess nonmagical metals or gemstones",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceGreed"] == "True")
    end,
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
  Description={
    Format="Dwarves receive a +1 bonus on attack rolls against humanoid creatures of the orc and goblinoid subtypes due to special training against these hated foes.",
  },
  SourcePage="p.21",
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
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceHatred"] == "True")
    end,
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
  Description={
    Format="Dwarves receive a +2 racial bonus on saving throws against poison, spells, and spell-like abilities.",
  },
  SourcePage="p.21",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "SaveBonus_vs_Poison",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "SaveBonus_vs_Spells",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceHardy"] == "True")
    end,
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
  Description={
    Format="Dwarves receive a +4 racial bonus to their Combat Maneuver Defense when resisting a bull rush or trip attempt while standing on the ground.",
  },
  SourcePage="p.21",
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+4 bonus to their Combat Maneuver Defense when resisting a bull rush or trip attempt while standing on the ground.",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "CMD_BullRush",
        "CMD_Trip",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceStability"] == "True")
    end,
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
  Description={
    Format="Dwarves receive a +%1 bonus on Perception checks to potentially notice unusual stonework, such as traps and hidden doors located in stone walls or floors. They receive a check to notice such features whenever they pass within 10 feet of them, whether or not they are actively looking.",
    Arguments={
      Formula("Dwarf_StoneCunning_SkillBonus"),
    },
  },
  SourcePage="p.21",
  Aspects={
    {
      Name="SkillBonus",
      FormatString="+%1 bonus on Perception skill checks to notice unusual stonework, such as traps and hidden doors located in stone walls or floors.",
      Arguments={
        "Dwarf_StoneCunning_SkillBonus",
      },
    },
  },
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("Dwarf_StoneCunning_SkillBonus"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception=to notice unusual stonework",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "Dwarf_StoneCunning_SkillBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceStonecunning"] == "True")
    end,
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
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Dwarven",
    },
  },
  Description={
    Format="Dwarves are proficient with battleaxes, heavy picks, and warhammers, and treat any weapon with the word \"dwarven\" in its name as a martial weapon.",
  },
  SourcePage="p.21",
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
  Bonuses={
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Formula=Formula("-1"),
      Variables={
        "WIELDCATEGORY",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceWeaponFamiliarity"] == "True")
    end,
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
  Description={
    Format="Dwarves begin play speaking Common and Dwarven. Dwarves with high Intelligence scores can choose from the following: Giant, Gnome, Goblin, Orc, Terran, and Undercommon.",
  },
  SourcePage="p.21",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Dwarven")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Dwarf_ReplaceLanguages"] == "True")
    end,
  },
  Templates={
    "Race Bonus Language ~ Giant",
    "Race Bonus Language ~ Gnome",
    "Race Bonus Language ~ Goblin",
    "Race Bonus Language ~ Orc",
    "Race Bonus Language ~ Terran",
    "Race Bonus Language ~ Undercommon",
  },
  Types={
    "RacialTraits",
    "Dwarf Racial Trait",
    "Dwarf Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
DefineAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
})
DefineAbility({
  Name="+2 Dexterity, +2 Intelligence, -2 Constitution",
  Key="Elf ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Elves are nimble, both in body and mind, but their form is frail.",
  },
  SourcePage="p.22",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Elves are Medium creatures and have no bonuses or penalties due to their size.",
  },
  SourcePage="p.22",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Elves have a base speed of 30 feet.",
  },
  SourcePage="p.22",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceSpeed"] == "true")
    end,
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
  Description={
    Format="Elves can see twice as far as humans in conditions of dim light.",
  },
  SourcePage="p.22",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasRacialVision",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceVision"] == "true")
    end,
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Extraordinary",
    "Racial Vision",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
})
DefineAbility({
  Name="Elven Immunities",
  Key="Elf ~ Elven Immunities",
  Category="Special Ability",
  Description={
    Format="Elves are immune to magic sleep effects and get a +2 racial saving throw bonus against enchantment spells and effects.",
  },
  SourcePage="p.22",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Sleep",
      },
    },
  },
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial saving throw bonus against enchantment spells and effects.",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "SaveBonus_vs_Enchantments",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceElvenImmunities"] == "true")
    end,
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
  Description={
    Format="Elves receive a +2 racial bonus on caster level checks made to overcome spell resistance. In addition, elves receive a +2 racial bonus on Spellcraft skill checks made to identify the properties of magic items.",
  },
  SourcePage="p.22",
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "Spellcraft=to identify magic item properties",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceElvenMagic"] == "true")
    end,
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
  Description={
    Format="Elves receive a +%1 racial bonus on Perception skill checks.",
    Arguments={
      Formula("KeenSensesBonus"),
    },
  },
  SourcePage="p.22",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "KeenSensesBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceKeenSenses"] == "true")
    end,
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
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Elven",
    },
  },
  Description={
    Format="Elves are proficient with longbows (including composite longbows), longswords, rapiers, and shortbows (including composite shortbows), and treat any weapon with the word \"elven\" in its name as a martial weapon.",
  },
  SourcePage="p.22",
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
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceWeaponFamiliarity"] == "true")
    end,
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
  Description={
    Format="Elves begin play speaking Common and Elven. Elves with high Intelligence scores can choose from the following: Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, and Sylvan.",
  },
  SourcePage="p.22",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Elven")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Elf_ReplaceLanguages"] == "true")
    end,
  },
  Templates={
    "Race Bonus Language ~ Celestial",
    "Race Bonus Language ~ Draconic",
    "Race Bonus Language ~ Gnoll",
    "Race Bonus Language ~ Gnome",
    "Race Bonus Language ~ Goblin",
    "Race Bonus Language ~ Orc",
    "Race Bonus Language ~ Sylvan",
  },
  Types={
    "RacialTraits",
    "Elf Racial Trait",
    "Elf Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
DefineAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
})
DefineAbility({
  Name="+2 Constitution, +2 Charisma, -2 Strength",
  Key="Gnome ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Gnomes are physically weak but surprisingly hardy, and their attitude makes them naturally agreeable.",
  },
  SourcePage="p.23",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Gnomes are Small creatures and gain a +1 size bonus to their AC, a +1 size bonus on attack rolls, a -1 penalty to their Combat Maneuver Bonus and Combat Maneuver Defense, and a +4 size bonus on Stealth checks.",
  },
  SourcePage="p.23",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Gnomes have a base speed of 20 feet.",
  },
  SourcePage="p.23",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceSpeed"] == "true")
    end,
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
  Description={
    Format="Gnomes can see twice as far as humans in conditions of dim light.",
  },
  SourcePage="p.23",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasRacialVision",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceVision"] == "true")
    end,
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Extraordinary",
    "Racial Vision",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
})
DefineAbility({
  Name="Defensive Training",
  Key="Gnome ~ Defensive Training",
  Category="Special Ability",
  Description={
    Format="Gnomes get a +%1 dodge bonus to AC against monsters of the giant subtype.",
    Arguments={
      Formula("RacialDefensiveTrainingBonus"),
    },
  },
  SourcePage="p.23",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "RacialDefensiveTrainingBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceDefensiveTraining"] == "true")
    end,
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
  Description={
    Format="Gnomes add +%1 to the DC of any saving throws against illusion spells that they cast. Gnomes with a Charisma of 11 or higher also gain the following spell-like abilities: 1/day--dancing lights, ghost sound, prestidigitation, and speak with animals. The caster level for these effects is equal to the gnome's level. The DC for these spells is equal to 10 + the spell's level + the gnome's Charisma modifier.",
    Arguments={
      Formula("Gnome_GnomeMagic_IllusionDCBonus"),
    },
  },
  SourcePage="p.23",
  Bonuses={
    {
      Category="DC",
      Formula=Formula("Gnome_GnomeMagic_IllusionDCBonus"),
      Variables={
        "SCHOOL.Illusion",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "Gnome_GnomeMagic_IllusionDCBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceGnomeMagic"] == "true")
    end,
  },
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
  Description={
    Format="Gnomes receive a +%1 bonus on attack rolls against humanoid creatures of the reptilian and goblinoid subtypes due to special training against these hated foes.",
    Arguments={
      Formula("Gnome_Hatred_AttackBonus"),
    },
  },
  SourcePage="p.23",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "Gnome_Hatred_AttackBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceHatred"] == "true")
    end,
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
  Description={
    Format="Gnomes get a +2 racial saving throw bonus against illusion spells and effects.",
  },
  SourcePage="p.23",
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial saving throw bonus against illusion spells and effects.",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "SaveBonus_vs_Illusions",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceIllusionResistance"] == "true")
    end,
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
  Description={
    Format="Gnomes receive a +2 racial bonus on Perception skill checks.",
  },
  SourcePage="p.23",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "KeenSensesBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceKeenSenses"] == "true")
    end,
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
  Description={
    Format="Gnomes receive a +2 racial bonus on a Craft or Profession skill of their choice.",
  },
  SourcePage="p.23",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Gnome Obsessive Skill Bonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceObsessive"] == "true")
    end,
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
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Gnome",
    },
  },
  Description={
    Format="Gnomes treat any weapon with the word \"gnome\" in its name as a martial weapon.",
  },
  SourcePage="p.23",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceWeaponFamiliarity"] == "true")
    end,
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
  Description={
    Format="Gnomes begin play speaking Common, Gnome, and Sylvan. Gnomes with high Intelligence scores can choose from the following: Draconic, Dwarven, Elven, Giant, Goblin, and Orc.",
  },
  SourcePage="p.23",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Gnome") or stringMatch(language.Name, "Sylvan")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Gnome_ReplaceLanguages"] == "true")
    end,
  },
  Templates={
    "Race Bonus Language ~ Draconic",
    "Race Bonus Language ~ Dwarven",
    "Race Bonus Language ~ Elven",
    "Race Bonus Language ~ Giant",
    "Race Bonus Language ~ Goblin",
    "Race Bonus Language ~ Orc",
  },
  Types={
    "RacialTraits",
    "Gnome Racial Trait",
    "Gnome Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
DefineAbility({
  Name="Obsessive Craft Bonus",
  Category="Internal",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Craft")))
    end),
  },
  Description={
    Format="Gnomes receive a +2 racial bonus on a Craft skill of their choice.",
  },
  Stackable=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "LIST",
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
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Profession")))
    end),
  },
  Description={
    Format="Gnomes receive a +2 racial bonus on a Profession skill of their choice.",
  },
  Stackable=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "LIST",
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
})
DefineAbility({
  Name="+2 to One Ability Score",
  Key="Half-Elf ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Half-elf characters get a +2 bonus to one ability score of their choice at creation to represent their varied nature.",
  },
  SourcePage="p.24",
  Visible=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Ability Bonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Half-elves are Medium creatures and have no bonuses or penalties due to their size.",
  },
  SourcePage="p.24",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Half-elves have a base speed of 30 feet.",
  },
  SourcePage="p.24",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceSpeed"] == "true")
    end,
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
  Description={
    Format="Half-elves can see twice as far as humans in conditions of dim light.",
  },
  SourcePage="p.24",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasRacialVision",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceVision"] == "true")
    end,
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Vision",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
})
DefineAbility({
  Name="Adaptability",
  Key="Half-Elf ~ Adaptability",
  Category="Special Ability",
  Description={
    Format="Half-elves receive Skill Focus as a bonus feat at 1st level.",
  },
  SourcePage="p.24",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Adaptability Bonus Feat",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceAdaptability"] == "true")
    end,
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
  Description={
    Format="Half-elves count as both elves and humans for any effect related to race.",
  },
  SourcePage="p.24",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceElfBlood"] == "true")
    end,
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
  Description={
    Format="Half-elves are immune to magic sleep effects and get a +2 racial saving throw bonus against enchantment spells and effects.",
  },
  SourcePage="p.24",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Immunity to Sleep",
      },
    },
  },
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial saving throw bonus against enchantment spells and effects.",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "SaveBonus_vs_Enchantments",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceElvenImmunities"] == "true")
    end,
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
  Description={
    Format="Half-elves receive a +%1 racial bonus on Perception skill checks.",
    Arguments={
      Formula("KeenSensesBonus"),
    },
  },
  SourcePage="p.24",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "KeenSensesBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceKeenSenses"] == "true")
    end,
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
  Description={
    Format="Half-elves choose two favored classes at first level and gain +1 hit point or +1 skill point whenever they take a level in either one of those classes.",
  },
  SourcePage="p.24",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Favored Class",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceMultitalented"] == "true")
    end,
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
  Description={
    Format="Half-elves begin play speaking Common and Elven. Half-elves with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic).",
  },
  SourcePage="p.24",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Elven")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfElf_ReplaceLanguages"] == "true")
    end,
  },
  Templates={
    "Race Bonus Language ~ All",
  },
  Types={
    "RacialTraits",
    "Half-Elf Racial Trait",
    "Half-Elf Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
DefineAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
})
DefineAbility({
  Name="+2 to One Ability Score",
  Key="Half-Orc ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Half-orc characters get a +2 bonus to one ability score of their choice at creation to represent their varied nature.",
  },
  SourcePage="p.24",
  Visible=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Ability Bonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Half-orcs are Medium creatures and have no bonuses or penalties due to their size.",
  },
  SourcePage="p.24",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Half-orcs have a base speed of 30 feet.",
  },
  SourcePage="p.24",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceSpeed"] == "true")
    end,
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
  Description={
    Format="Half-orcs can see in the dark up to 60 feet.",
  },
  SourcePage="p.25",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasRacialVision",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceVision"] == "true")
    end,
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Vision",
  },
  Visions={
    {
      Kind={
        "Darkvision (60)",
      },
    },
  },
})
DefineAbility({
  Name="Intimidating",
  Key="Half-Orc ~ Intimidating",
  Category="Special Ability",
  Description={
    Format="Half-orcs receive a +2 racial bonus on Intimidate skill checks due to their fearsome nature.",
  },
  SourcePage="p.25",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "Intimidate",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceIntimidating"] == "true")
    end,
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
  Description={
    Format="Half-orcs count as both humans and orcs for any effect related to race.",
  },
  SourcePage="p.25",
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceOrcBlood"] == "true")
    end,
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
  Description={
    Format="per day, when a half-orc is brought below 0 hit points but not killed, he can fight on for one more round as if disabled. At the end of his next turn, unless brought to above 0 hit points, he immediately falls unconscious and begins dying.",
  },
  SourcePage="p.25",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "Orc_OrcFerocity_Times",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceOrcFerocity"] == "true")
    end,
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
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Orc",
    },
  },
  Description={
    Format="Half-orcs are proficient with greataxes and falchions and treat any weapon with the word \"orc\" in its name as a martial weapon.",
  },
  SourcePage="p.25",
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "Greataxe",
        "Falchion",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceWeaponFamiliarity"] == "true")
    end,
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
  Description={
    Format="Half-orcs begin play speaking Common and Orc. Half-orcs with high Intelligence scores can choose from the following: Abyssal, Draconic, Giant, Gnoll, and Goblin.",
  },
  SourcePage="p.25",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Orc")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["HalfOrc_ReplaceLanguages"] == "true")
    end,
  },
  Templates={
    "Race Bonus Language ~ Abyssal",
    "Race Bonus Language ~ Draconic",
    "Race Bonus Language ~ Giant",
    "Race Bonus Language ~ Gnoll",
    "Race Bonus Language ~ Goblin",
  },
  Types={
    "RacialTraits",
    "Half-Orc Racial Trait",
    "Half-Orc Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
DefineAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
})
DefineAbility({
  Name="+2 Dexterity, +2 Charisma, -2 Strength",
  Key="Halfling ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Halflings are nimble and strong-willed, but their small stature makes them weaker than other races.",
  },
  SourcePage="p.26",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Halflings are Small creatures and gain a +1 size bonus to their AC, a +1 size bonus on attack rolls, a -1 penalty to their Combat Maneuver Bonus and Combat Maneuver Defense, and a +4 size bonus on Stealth checks.",
  },
  SourcePage="p.26",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Halflings have a base speed of 20 feet.",
  },
  SourcePage="p.26",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceSpeed"] == "true")
    end,
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
  Description={
    Format="Halflings receive a +2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by halfling luck.",
  },
  SourcePage="p.26",
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by halfling luck.",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "SaveBonus_vs_Fear",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceFearless"] == "true")
    end,
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
  Description={
    Format="Halflings receive a +1 racial bonus on all saving throws.",
  },
  SourcePage="p.26",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "Halfling_HalflingLuck_SaveBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceHalflingLuck"] == "true")
    end,
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
  Description={
    Format="Halflings receive a +2 racial bonus on Perception skill checks.",
  },
  SourcePage="p.26",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("KeenSensesBonus"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "KeenSensesBonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceKeenSenses"] == "true")
    end,
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
  Description={
    Format="Halflings receive a +2 racial bonus on Acrobatics and Climb skill checks.",
  },
  SourcePage="p.26",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "Acrobatics",
        "Climb",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceSureFooted"] == "true")
    end,
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
  ChangeWeaponProficiency={
    Martial={
      "TYPE.Halfling",
    },
  },
  Description={
    Format="Halflings are proficient with slings and treat any weapon with the word \"halfling\" in its name as a martial weapon.",
  },
  SourcePage="p.26",
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "Sling",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceWeaponFamiliarity"] == "true")
    end,
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
  Description={
    Format="Halflings begin play speaking Common and Halfling. Halflings with high Intelligence scores can choose from the following: Dwarven, Elven, Gnome, and Goblin.",
  },
  SourcePage="p.26",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common") or stringMatch(language.Name, "Halfling")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Halfling_ReplaceLanguages"] == "true")
    end,
  },
  Templates={
    "Race Bonus Language ~ Dwarven",
    "Race Bonus Language ~ Elven",
    "Race Bonus Language ~ Gnome",
    "Race Bonus Language ~ Goblin",
  },
  Types={
    "RacialTraits",
    "Halfling Racial Trait",
    "Halfling Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
DefineAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
})
DefineAbility({
  Name="+2 to One Ability Score",
  Key="Human ~ Ability Scores",
  Category="Special Ability",
  Description={
    Format="Human characters get a +2 bonus to one ability score of their choice at creation to represent their varied nature.",
  },
  SourcePage="p.27",
  Visible=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Ability Bonus",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceAbilityScores"] == "true")
    end,
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
  Description={
    Format="Humans are Medium creatures and have no bonuses or penalties due to their size.",
  },
  SourcePage="p.27",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceSize"] == "true")
    end,
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
  Description={
    Format="Humans have a base speed of 30 feet.",
  },
  SourcePage="p.27",
  Visible=true,
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceSpeed"] == "true")
    end,
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
  Description={
    Format="Humans select one extra feat at 1st level.",
  },
  SourcePage="p.27",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "FEAT",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceBonusFeat"] == "true")
    end,
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
  Description={
    Format="Humans gain an additional skill rank at 1st level and one additional rank whenever they gain a level.",
  },
  SourcePage="p.27",
  Bonuses={
    {
      Category="SKILLPOINTS",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceSkilled"] == "true")
    end,
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
  Description={
    Format="Humans begin play speaking Common. Humans with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic).",
  },
  SourcePage="p.27",
  Visible=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Common")
      end,
    },
  },
  Conditions={
    function (character)
      return not (character.Facts["ABILITY"]["Human_ReplaceLanguages"] == "true")
    end,
  },
  Templates={
    "Race Bonus Language ~ All",
  },
  Types={
    "RacialTraits",
    "Human Racial Trait",
    "Human Racial Default",
    "SpecialQuality",
    "Racial Language",
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
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
  SourcePage="p.306",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Animal Traits",
  Category="Special Ability",
  SourcePage="p.307",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
  },
})
DefineAbility({
  Name="Construct Traits",
  Category="Special Ability",
  ServesAs={
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
  SourcePage="p.299",
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Construct Traits Output",
      },
    },
  },
  Bonuses={
    {
      Category="HP",
      Formula=Formula("max(SIZE-2,0)*10"),
      Variables={
        "CURRENTMAX",
      },
    },
    {
      Category="HP",
      Formula=Formula("max(SIZE-6,0)*10"),
      Variables={
        "CURRENTMAX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
  },
  Templates={
    "No Constitution Score",
  },
})
DefineAbility({
  Name="Dragon Traits",
  Category="Special Ability",
  SourcePage="p.307",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Conditions={
        function (character)
          return character.HitDie >= 1
        end,
      },
      Variables={
        "DarkvisionRange",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.HitDie >= 1
        end,
      },
      Variables={
        "HasLowLightVision",
      },
    },
  },
})
DefineAbility({
  Name="Fey Traits",
  Category="Special Ability",
  SourcePage="p.307",
  Visible=false,
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
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
  },
})
DefineAbility({
  Name="Humanoid Traits",
  Category="Special Ability",
  SourcePage="p.308",
  Visible=false,
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
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Conditions={
        function (character)
          return not (1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (ClassIsType(class, "PC") and level >= 1) or (ClassIsType(class, "NPC") and level >= 1)
          end))
        end,
      },
      Types={
        "Simple",
      },
    },
  },
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Magical Beast Traits",
  Category="Special Ability",
  SourcePage="p.308",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Conditions={
        function (character)
          return not (((any(character.Race.Types, function (type) stringMatch(type, "Animal") end) and 1 or 0)) >= 1)
        end,
      },
      Variables={
        "DarkvisionRange",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character)
          return not (((any(character.Race.Types, function (type) stringMatch(type, "Animal") end) and 1 or 0)) >= 1)
        end,
      },
      Variables={
        "HasLowLightVision",
      },
    },
  },
})
DefineAbility({
  Name="Monstrous Humanoid Traits",
  Category="Special Ability",
  SourcePage="p.308",
  Visible=false,
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
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Ooze Traits",
  Category="Special Ability",
  SourcePage="p.309",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "BlindsightRange",
      },
    },
  },
  Visions={
    {
      Kind={
        "Blind",
      },
    },
  },
})
DefineAbility({
  Name="Outsider Traits",
  Category="Special Ability",
  SourcePage="p.309",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Conditions={
        function (character)
          return character.HitDie >= 1
        end,
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Plant Traits",
  Category="Special Ability",
  SourcePage="p.301",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
  },
})
DefineAbility({
  Name="Undead Traits",
  Category="Special Ability",
  SourcePage="p.305",
  Visible=false,
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
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Simple",
      },
    },
  },
  Bonuses={
    {
      Category="HP",
      Formula=Formula("TL*CHA"),
      Variables={
        "CURRENTMAX",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("CHA"),
      Variables={
        "BASE.Fortitude",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
  Templates={
    "No Constitution Score",
  },
})
DefineAbility({
  Name="Vermin Traits",
  Category="Special Ability",
  SourcePage="p.310",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Human Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Halfling Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Good Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
})
DefineAbility({
  Name="Goblinoid Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
  ClassSkills={
    "Stealth",
  },
})
DefineAbility({
  Name="Gnome Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Gnoll Traits",
  Category="Special Ability",
  SourcePage="p.155",
  Visible=false,
})
DefineAbility({
  Name="Giant Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
  ClassSkills={
    "Intimidate",
    "Perception",
  },
})
DefineAbility({
  Name="Fire Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
})
DefineAbility({
  Name="Extraplanar Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Evil Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
})
DefineAbility({
  Name="Elf Traits",
  Category="Special Ability",
  SourcePage="p.311",
  Visible=false,
})
DefineAbility({
  Name="Elemental Traits",
  Category="Special Ability",
  ServesAs={
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
  SourcePage="p.311",
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
})
DefineAbility({
  Name="Earth Traits",
  Category="Special Ability",
  SourcePage="p.311",
  Visible=false,
})
DefineAbility({
  Name="Dwarf Traits",
  Category="Special Ability",
  SourcePage="p.311",
  Visible=false,
})
DefineAbility({
  Name="Devil Traits",
  Category="Special Ability",
  SourcePage="p.311",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Resistance",
      },
      Variables={
        "AcidResistanceBonus",
        "ColdResistanceBonus",
      },
    },
  },
})
DefineAbility({
  Name="Demon Traits",
  Category="Special Ability",
  SourcePage="p.311",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Resistance",
      },
      Variables={
        "AcidResistanceBonus",
        "ColdResistanceBonus",
        "FireResistanceBonus",
      },
    },
  },
})
DefineAbility({
  Name="Cold Traits",
  Category="Special Ability",
  SourcePage="p.311",
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
})
DefineAbility({
  Name="Chaotic Traits",
  Category="Special Ability",
  SourcePage="p.311",
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
})
DefineAbility({
  Name="Azata Traits",
  Category="Special Ability",
  SourcePage="p.311",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Archon Traits",
  Category="Special Ability",
  SourcePage="p.310",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Aquatic Traits",
  Category="Special Ability",
  SourcePage="p.310",
  Visible=false,
  ClassSkills={
    "Swim",
  },
})
DefineAbility({
  Name="Angel Traits",
  Category="Special Ability",
  SourcePage="p.310",
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Resistance",
      },
      Variables={
        "ElectricityResistanceBonus",
        "FireResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineAbility({
  Name="Air Traits",
  Category="Special Ability",
  SourcePage="p.310",
  Visible=false,
  ClassSkills={
    "Fly",
  },
})
DefineAbility({
  Name="Incorporeal Traits",
  Category="Special Ability",
  SourcePage="p.311",
  Visible=false,
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
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("max(1,CHA)"),
      Type={
        Name="Deflection",
      },
      Variables={
        "AC",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("DEX"),
      Variables={
        "TOHIT.MELEE",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "CanNotGrapple",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DEX"),
      Variables={
        "CMB",
      },
    },
  },
  Templates={
    "No Strength Score",
  },
})
DefineAbility({
  Name="Water Traits",
  Category="Special Ability",
  SourcePage="p.313",
  Visible=false,
})
DefineAbility({
  Name="Swarm Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
})
DefineAbility({
  Name="Shapechanger Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Reptilian Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Orc Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
})
DefineAbility({
  Name="Oni Traits",
  Category="Special Ability",
  SourcePage="p.221",
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Oni ~ Change Shape",
      },
    },
  },
  Templates={
    "Native",
  },
})
DefineAbility({
  Name="Native Traits",
  Category="Special Ability",
  SourcePage="p.312",
  Visible=false,
})
DefineAbility({
  Name="Lawful Traits",
  Category="Special Ability",
  SourcePage="p.312",
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
})
DefineAbility({
  Name="Mindless Traits",
  Category="Special Ability",
  Visible=false,
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
  Templates={
    "No Intelligence Score",
  },
})
DefineAbility({
  Name="Clockwork Traits",
  Category="Special Ability",
  Visible=false,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Type={
        Name="Dodge",
      },
      Variables={
        "AC",
      },
    },
  },
})
DefineAbility({
  Name="Mindless",
  Category="Internal",
})
DefineAbility({
  Name="Aberration Traits Output",
  Category="Special Ability",
  Description={
    Format="Aberrations breathe, eat, and sleep.",
  },
  DisplayName="Aberration Traits",
  SourcePage="p.306",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Animal Traits Output",
  Category="Special Ability",
  Description={
    Format="Animals breathe, eat, and sleep.",
  },
  DisplayName="Animal Traits",
  SourcePage="p.307",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Construct Traits Output",
  Category="Special Ability",
  Description={
    Format="Constructs are immune to death effects, disease, mind-affecting effects (charms, compulsions, phantasms, patterns, and morale effects), necromancy effects, paralysis, poison, sleep, stun, and any effect that requires a Fortitude save (unless the effect also works on objects, or is harmless). Constructs are not subject to nonlethal damage, ability damage, ability drain, fatigue, exhaustion, or energy drain. Constructs are not at risk of death from massive damage.",
  },
  DisplayName="Construct Traits",
  SourcePage="p.299",
  Types={
    "SpecialQuality",
    "Extraordinary",
    "Defensive",
  },
})
DefineAbility({
  Name="Dragon Traits Output",
  Category="Special Ability",
  Description={
    Format="Dragons have Immunity to magic sleep effects and paralysis effects. Dragons breathe, eat, and sleep.",
  },
  DisplayName="Dragon Traits",
  SourcePage="p.307",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Elemental Traits Output",
  Category="Special Ability",
  Description={
    Format="Elementals are immune to paralysis, poison, sleep effects, and stunning. Elementals are not subject to critical hits or flanking. Elementals do not take additional damage from precision-based attacks, such as sneak attack. Elementals do not breathe, eat, or sleep.",
  },
  DisplayName="Elemental Traits",
  SourcePage="p.311",
  Types={
    "SpecialQuality",
    "Extraordinary",
    "Immunity",
  },
})
DefineAbility({
  Name="Fey Traits Output",
  Category="Special Ability",
  Description={
    Format="Fey breathe, eat, and sleep.",
  },
  DisplayName="Fey Traits",
  SourcePage="p.307",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Humanoid Traits Output",
  Category="Special Ability",
  Description={
    Format="Humanoids breathe, eat, and sleep.",
  },
  DisplayName="Humanoid Traits",
  SourcePage="p.308",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Incorporeal Traits Output",
  Category="Special Ability",
  Description={
    Format="Can be harmed only by other incorporeal creatures/+1 or better weapons/magic. 50%% chance to ignore any damage from a corporeal source. Can pass through solid objects at will. Attacks pass through armor. Always moves silently.",
  },
  DisplayName="Incorporeal Traits",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Magical Beast Traits Output",
  Category="Special Ability",
  Description={
    Format="Magical beasts breathe, eat, and sleep.",
  },
  DisplayName="Magical Beast Traits",
  SourcePage="p.308",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Monstrous Humanoid Traits Output",
  Category="Special Ability",
  Description={
    Format="Monstrous humanoids breathe, eat, and sleep.",
  },
  DisplayName="Monstrous Humanoid Traits",
  SourcePage="p.308",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Ooze Traits Output",
  Category="Special Ability",
  Description={
    Format="Oozes are not subject to critical hits or flanking and do not take additional damage from precision-based attacks, such as sneak attack. Oozes eat and breathe, but do not sleep.",
  },
  DisplayName="Ooze Traits",
  SourcePage="p.309",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Outsider Traits Output",
  Category="Special Ability",
  Description={
    Format="An outsider with the native subtype can be raised, reincarnated, or resurrected just as other living creatures can be. Native outsider breathe, eat, and sleep.",
    Conditions={
      function (character)
        return ((any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Native") end) and 1 or 0)) >= 1
      end,
    },
  },
  DisplayName="Outsider Traits",
  SourcePage="p.309",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Plant Traits Output",
  Category="Special Ability",
  Description={
    Format="Plants are immune to all mind-affecting effects (charms, compulsions, morale effects, patterns, and phantasms), paralysis, poison, polymorph, sleep, and stun.",
  },
  DisplayName="Plant Traits",
  SourcePage="p.301",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Swarm Traits Output",
  Category="Special Ability",
  Description={
    Format="A swarm composed of Fine or Diminutive creatures is immune to all weapon damage and are also susceptible to high winds, such as those created by a gust of wind spell.",
    Conditions={
      function (character)
        return character.Size <= "D"
      end,
    },
  },
  DisplayName="Swarm Traits",
  SourcePage="p.312",
  Types={
    "SpecialQuality",
    "Extraordinary",
    "Defensive",
  },
})
DefineAbility({
  Name="Undead Traits Output",
  Category="Special Ability",
  Description={
    Format="Mindless - Immune to all mind-affecting effects (charms/ compulsions/ phantasms/ patterns/ and morale effects), Cannot heal damage on own if has no Intelligence score (but can be healed and Fast Healing works)",
    Conditions={
      function (character)
        return ((any(character.Templates, function (template) return stringMatch(template.Name, "Mindless") end) and 1 or 0)) >= 1
      end,
    },
  },
  DisplayName="Undead Traits",
  SourcePage="p.305",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Vermin Traits Output",
  Category="Special Ability",
  Description={
    Format="Mindless vermin are immune to mind-affecting effects (charms, compulsions, phantasms, patterns, and morale effects).",
    Conditions={
      function (character)
        return ((any(character.Templates, function (template) return stringMatch(template.Name, "Mindless") end) and 1 or 0)) >= 1
      end,
    },
  },
  DisplayName="Vermin Traits",
  SourcePage="p.310",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Protective Aura",
  Key="Angel ~ Protective Aura",
  Category="Special Ability",
  Description={
    Format="Against attacks made or effects created by evil creatures, this ability provides a +4 deflection bonus to AC and a +4 resistance bonus on saving throws to anyone within 20 feet of the angel. Otherwise, it functions as a magic circle against evil effect and a lesser globe of invulnerability, both with a radius of 20 feet (caster level %1).",
    Arguments={
      Formula("TL"),
    },
  },
  SourcePage="p.310",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(20 ft.)",
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
  Description={
    Format="All angels can speak with any creature that has a language, as though using a tongues spell (caster level %1). This ability is always active.",
    Arguments={
      Formula("TL"),
    },
  },
  SourcePage="p.310",
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
  Description={
    Format="A righteous aura surrounds archons that fight or get angry. Any hostile creature within a 20-foot radius of an archon must succeed on a DC %1 Will save to resist its effects. Those who fail take a -2 penalty on attacks, AC, and saves for 24 hours or until they successfully hit the archon that generated the aura. A creature that has resisted or broken the effect cannot be affected again by the same archon's aura for 24 hours.",
    Arguments={
      Formula("AuraOfMenaceDC"),
    },
  },
  SourcePage="p.311",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(20 ft., DC %1)",
      Arguments={
        "AuraOfMenaceDC",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("12+(HD/2)+CHA"),
      Variables={
        "AuraOfMenaceDC",
      },
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
  Description={
    Format="Archons can use greater teleport at will, as the spell (caster level 14th), except that the creature can transport only itself and up to 50 pounds of carried objects.",
  },
  SourcePage="p.311",
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
  Description={
    Format="All archons can speak with any creature that has a language, as though using a tongues spell (caster level 14th). This ability is always active.",
  },
  SourcePage="p.311",
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
  Description={
    Format="All azatas can speak with any creature that has a language, as though using a tongues spell (caster level 14th). This ability is always active.",
  },
  SourcePage="p.311",
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
  Description={
    Format="Devils can see perfectly in darkness of any kind, even that created by a deeper darkness spell.",
  },
  SourcePage="p.311",
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
  Description={
    Format="You have the ability to assume the appearance of creatures similar in shape to your true form, but retain most of your own physical qualities.",
  },
  SourcePage="p.221",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(Small, Medium or Large Humanoid; Alter Self of Giant Form I)",
    },
  },
  Types={
    "SpecialQuality",
    "Supernatural",
  },
})
DefineAbility({
  Name="Devil Traits ~ Languages",
  Category="Special Ability",
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
  SortKey="1",
  Category="Special Ability",
  Cost=0,
  Description={
    Format="REMOVE this when you are done to remove the reminder on the TODO.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Permanency Applied Effects",
      },
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
  Choice={
    Choose=ChooseString({"11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="This spell makes your eyes glow blue and allows you to see magical auras within 120 feet of you. The effect is similar to that of a detect magic spell, but arcane sight does not require concentration and discerns aura location and power more quickly. You know the location and power of all magical auras within your sight. An aura's power depends on a spell's functioning level or an item's caster level, as noted in the description of the detect magic spell. If the items or creatures bearing the auras are in line of sight, you can make Spellcraft skill checks to determine the school of magic involved in each. [Make one check per aura; DC 15 + spell level, or 15 + one-half caster level for a nonspell effect.] If you concentrate on a specific creature within 120 feet of you as a standard action, you can determine whether it has any spellcasting or spell-like abilities, whether these are arcane or divine [spell-like abilities register as arcane], and the strength of the most powerful spell or spell-like ability the creature currently has available for use.",
  },
  Selections=Formula("1"),
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyArcaneSightLVL",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Arcane Sight",
      SpellBookName="Permanency Spell",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="PermanecyArcaneSightLVL",
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
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="You can understand the spoken words of creatures or read otherwise incomprehensible written messages. In either case, you must touch the creature or the writing. The ability to read does not necessarily impart insight into the material, merely its literal meaning. The spell enables you to understand or read an unknown language, not speak or write it. Written material can be read at the rate of one page [250 words] per minute. Magical writing cannot be read, though the spell reveals that it is magical. This spell can be foiled by certain warding magic [such as the secret page and illusory script spells]. It does not decipher codes or reveal messages concealed in otherwise normal text.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyComprehendLanguagesLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Darkvision",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="The subject gains the ability to see 60 feet even in total darkness. Darkvision is black and white only but otherwise like normal sight. Darkvision does not grant one the ability to see in magical darkness.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyDarkvisionLVL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Detect Magic",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="You detect magical auras. The amount of information revealed depends on how long you study a particular area or subject. &nl;1st Round: Presence or absence of magical auras. &nl;2nd Round: Number of different magical auras and the power of the most potent aura. &nl;3rd Round: The strength and location of each aura. If the items or creatures bearing the auras are in line of sight, you can make Spellcraft skill checks to determine the school of magic involved in each. [Make one check per aura; DC 15 + spell level, or 15 + half caster level for a nonspell effect.] &nl;Magical areas, multiple types of magic, or strong local magical emanations may distort or conceal weaker auras. &nl;Aura Strength: An aura's power depends on a spell's functioning spell level or an item's caster level. If an aura falls into more than one category, detect magic indicates the stronger of the two. &nl;  &pipe;--------- Aura Power --------- &nl;Spell or Object &pipe;Faint &pipe;Moderate &pipe;Strong &pipe;Overwhelming &nl;Functioning spell [spell level] &pipe;3rd or lower &pipe;4th-6th &pipe;7th-9th &pipe;10th+ [deity-level] &nl;Magic item [caster level] &pipe;5th or lower &pipe;6th-11th &pipe;12th-20th &pipe;21st+ [artifact] &nl;Lingering Aura: A magical aura lingers after its original source dissipates [in the case of a spell] or is destroyed [in the case of a magic item]. If detect magic is cast and directed at such a location, the spell indicates an aura strength of dim [even weaker than a faint aura]. How long the aura lingers at this dim level depends on its original power: &nl;Original Strength &pipe;Duration of Lingering Aura &nl;Faint &pipe;1d6 rounds &nl;Moderate &pipe;1d6 minutes &nl;Strong &pipe;1d6x10 minutes &nl;Overwhelming &pipe;1d6 days &nl;Outsiders and elementals are not magical in themselves, but if they are summoned, the conjuration spell registers. &nl;Each round, you can turn to detect magic in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyDetectMagicLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Read Magic",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="By means of read magic, you can decipher magical inscriptions on objects-books, scrolls, weapons, and the like-that would otherwise be unintelligible. This deciphering does not normally invoke the magic contained in the writing, although it may do so in the case of a cursed scroll. Furthermore, once the spell is cast and you have read the magical inscription, you are thereafter able to read that particular writing without recourse to the use of read magic. You can read at the rate of one page [250 words] per minute. The spell allows you to identify a glyph of warding with a DC 13 Spellcraft check, a greater glyph of warding with a DC 16 Spellcraft check, or any symbol spell with a Spellcraft check [DC 10 + spell level].",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyReadMagicLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / See Invisibility",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="You can see any objects or beings that are invisible within your range of vision, as well as any that are ethereal, as if they were normally visible. Such creatures are visible to you as translucent shapes, allowing you easily to discern the difference between visible, invisible, and ethereal creatures. The spell does not reveal the method used to obtain invisibility. It does not reveal illusions or enable you to see through opaque objects. It does not reveal creatures who are simply hiding, concealed, or otherwise hard to see.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecySeeInvisibilityLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Tongues",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="This spell grants the creature touched the ability to speak and understand the language of any intelligent creature, whether it is a racial tongue or a regional dialect. The subject can speak only one language at a time, although it may be able to understand several languages. Tongues does not enable the subject to speak with creatures who don't speak. The subject can make itself understood as far as its voice carries. This spell does not predispose any creature addressed toward the subject in any way.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyTonguesLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Enlarge Person",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="This spell causes instant growth of a humanoid creature, doubling its height and multiplying its weight by 8. This increase changes the creature's size category to the next larger one. The target gains a +2 size bonus to Strength, a -2 size penalty to Dexterity [to a minimum of 1], and a -1 penalty on attack rolls and AC due to its increased size. A humanoid creature whose size increases to Large has a space of 10 feet and a natural reach of 10 feet. This spell does not change the target's speed. If insufficient room is available for the desired growth, the creature attains the maximum possible size and may make a Strength check [using its increased Strength] to burst any enclosures in the process. If it fails, it is constrained without harm by the materials enclosing it- the spell cannot be used to crush a creature by increasing its size. All equipment worn or carried by a creature is similarly enlarged by the spell. Melee and projectile weapons affected by this spell deal more damage. Other magical properties are not affected by this spell. Any enlarged item that leaves an enlarged creature's possession [including a projectile or thrown weapon] instantly returns to its normal size. This means that thrown weapons deal their normal damage, and projectiles deal damage based on the size of the weapon that fired them. Magical properties of enlarged items are not increased by this spell. Multiple magical effects that increase size do not stack,. Enlarge person counters and dispels reduce person.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("5"),
      Type={
        Name="Size",
      },
      Variables={
        "TOHIT.GRAPPLE",
      },
    },
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Size",
      },
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Size",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyEnlargePersonLVL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "SizeIncrease",
      },
    },
    {
      Category="WEAPONPROF=Aklys (Gladiator)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Aklys",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Amentum (Javelin)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Amentum",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Atlatl",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Axe (Orc Double)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Axe (Throwing)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Gate Breaker)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Battle Aspergillum",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Battleaxe",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Blowgun",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Blunderbuss",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bo Staff",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Boar Spear",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bolas",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Standard)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Brass Knuckles",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Broadsword (Nine Ring)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Buckler Gun",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Butterfly Sword",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Cannon (Fiend's Mouth)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Cannon",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Standard)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Chain (Spiked)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Chain Spear",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Club",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Hand)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Hand)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Culverin",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Curve Blade (Elven)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dagger (Punching)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dagger",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dan Bong",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dart",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dogslicer",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Double Chicken Saber",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Double Hackbut",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Earth Breaker",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Emei Piercer",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Falchion",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Fighting Fan",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Fire Lance",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firearms",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firedrake",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firewyrm",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail (Dire)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flying Blade",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gauntlet (Spiked)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gauntlet",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gladius",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Glaive",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Great Terbutje",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greataxe",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greatclub",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greatsword",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Guisarme",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Halberd",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hammer (Gnome Hooked)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hammer (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Handaxe",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Harpoon",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hooked Axe",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hooked Lance",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Horsechopper",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hunga Munga",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Iron Brush",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Javelin",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Jutte",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kama (Double-Chained)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kama",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Katana (Double Walking Stick)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Katana",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kerambit",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kestros",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Klar",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Knuckle Axe",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kukri",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kusarigama (Sickle and Chain)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kyoketsu Shoge",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lance",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longbow",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longspear",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longsword",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lucerne Hammer",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lungchuan Tamo",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mace (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mace (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Madu",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mattock",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mere Club",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Meteor Hammer",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Monk's Spade",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Morningstar",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Axe)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Double-Barreled)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Warhammer)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Naginata",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Net",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nine-Section Whip",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nodachi",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nunchaku",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ogre Hook",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pata",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pepperbox",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pick (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pick (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Coat)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Dagger)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Double-Barreled)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Dragon)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Sword Cane)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Poisoned Sand Tube",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Quadrens",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Quarterstaff",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ranseur",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rapier",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Revolver",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rhoka Sword",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rhomphaia",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rifle",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rope Dart",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sai",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sansetsukon",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sap",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sawtooth Sabre",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scimitar",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scizore",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scorpion Whip",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scythe",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shang Gou",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shieldbash",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shortbow",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shortspear",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shotel",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shotgun",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shuriken",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Siangham",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sibat",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sica",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sickle",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sling Staff (Halfling)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sling",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Snag Net",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Spear",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Spiked Armor",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Splash Weapon",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Springal (Arrow)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Springal (Rocket)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Starknife",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Bastard)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Seven-Branched)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Short)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Tri-Point Double-Edged)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Two-Bladed)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Swordbreaker (Dagger)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Taiaha",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Taiaha",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tekko-Kagi (Iron Claw)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Temple Sword",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tepoztopilli",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terbutje (Great)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terbutje",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tetsubo",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Throwing Shield",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tiger Fork",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tonfa",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Standard)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trident",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tube Arrow Shooter",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Heavy)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Light)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Urgrosh (Dwarven)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Urumi",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wahaika",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wakizashi",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Warhammer",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Whip",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wushu Dart",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WIELDCATEGORY",
      Formula=Formula("1"),
      Variables={
        "ALL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Magic Fang",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="Magic fang gives one natural weapon of the subject a +1 enhancement bonus on attack and damage rolls. The spell can affect a slam attack, fist, bite, or other natural weapon. [The spell does not change an unarmed strike's damage from nonlethal damage to lethal damage.]",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyMagicFangLVL",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Greater Magic Fang",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="This spell functions like magic fang, except that the enhancement bonus on attack and damage rolls is +1 per four caster levels [maximum +5]. Alternatively, you may imbue all of the creature's natural weapons with a +1 enhancement bonus [regardless of your caster level].",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyMagicFangGreaterLVL",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("MIN(floor(%LIST/4),5)"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Reduce Person",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8. This decrease changes the creature's size category to the next smaller one. The target gains a +2 size bonus to Dexterity, a -2 size penalty to Strength [to a minimum of 1], and a +1 bonus on attack rolls and AC due to its reduced size. A Small humanoid creature whose size decreases to Tiny has a space of 2-1/2 feet and a natural reach of 0 feet [meaning that it must enter an opponent's square to attack]. A Large humanoid creature whose size decreases to Medium has a space of 5 feet and a natural reach of 5 feet. This spell doesn't change the target's speed. All equipment worn or carried by a creature is similarly reduced by the spell. Melee and projectile weapons deal less damage. Other magical properties are not affected by this spell. Any reduced item that leaves the reduced creature's possession [including a projectile or thrown weapon] instantly returns to its normal size. This means that thrown weapons deal their normal damage [projectiles deal damage based on the size of the weapon that fired them]. Multiple magical effects that reduce size do not stack. Reduce person counters and dispels enlarge person.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("-5"),
      Type={
        Name="Size",
      },
      Variables={
        "TOHIT.GRAPPLE",
      },
    },
    {
      Category="SIZEMOD",
      Formula=Formula("-1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Size",
      },
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Size",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyReducePersonLVL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "SizeDecrease",
      },
    },
    {
      Category="WEAPONPROF=Aklys (Gladiator)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Aklys",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Amentum (Javelin)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Amentum",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Atlatl",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Axe (Orc Double)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Axe (Throwing)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Gate Breaker)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Battle Aspergillum",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Battleaxe",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Blowgun",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Blunderbuss",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bo Staff",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Boar Spear",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bolas",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Standard)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Brass Knuckles",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Broadsword (Nine Ring)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Buckler Gun",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Butterfly Sword",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Cannon (Fiend's Mouth)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Cannon",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Standard)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Chain (Spiked)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Chain Spear",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Club",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Hand)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Hand)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Culverin",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Curve Blade (Elven)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dagger (Punching)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dagger",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dan Bong",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dart",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dogslicer",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Double Chicken Saber",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Double Hackbut",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Earth Breaker",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Emei Piercer",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Falchion",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Fighting Fan",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Fire Lance",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firearms",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firedrake",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firewyrm",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail (Dire)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flying Blade",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gauntlet (Spiked)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gauntlet",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gladius",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Glaive",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Great Terbutje",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greataxe",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greatclub",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greatsword",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Guisarme",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Halberd",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hammer (Gnome Hooked)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hammer (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Handaxe",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Harpoon",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hooked Axe",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hooked Lance",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Horsechopper",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hunga Munga",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Iron Brush",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Javelin",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Jutte",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kama (Double-Chained)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kama",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Katana (Double Walking Stick)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Katana",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kerambit",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kestros",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Klar",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Knuckle Axe",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kukri",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kusarigama (Sickle and Chain)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kyoketsu Shoge",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lance",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longbow",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longspear",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longsword",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lucerne Hammer",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lungchuan Tamo",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mace (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mace (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Madu",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mattock",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mere Club",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Meteor Hammer",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Monk's Spade",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Morningstar",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Axe)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Double-Barreled)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Warhammer)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Naginata",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Net",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nine-Section Whip",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nodachi",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nunchaku",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ogre Hook",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pata",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pepperbox",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pick (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pick (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Coat)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Dagger)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Double-Barreled)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Dragon)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Sword Cane)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Poisoned Sand Tube",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Quadrens",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Quarterstaff",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ranseur",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rapier",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Revolver",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rhoka Sword",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rhomphaia",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rifle",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rope Dart",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sai",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sansetsukon",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sap",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sawtooth Sabre",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scimitar",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scizore",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scorpion Whip",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scythe",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shang Gou",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shieldbash",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shortbow",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shortspear",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shotel",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shotgun",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shuriken",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Siangham",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sibat",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sica",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sickle",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sling Staff (Halfling)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sling",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Snag Net",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Spear",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Spiked Armor",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Splash Weapon",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Springal (Arrow)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Springal (Rocket)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Starknife",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Bastard)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Seven-Branched)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Short)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Tri-Point Double-Edged)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Two-Bladed)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Swordbreaker (Dagger)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Taiaha",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Taiaha",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tekko-Kagi (Iron Claw)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Temple Sword",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tepoztopilli",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terbutje (Great)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terbutje",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tetsubo",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Throwing Shield",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tiger Fork",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tonfa",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Standard)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trident",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tube Arrow Shooter",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Unarmed Strike",
      Formula=Formula("-1"),
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Internal" and (ability.Name == "Monk ~ Unarmed Damage")
          end))
        end,
      },
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Heavy)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Light)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Urgrosh (Dwarven)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Urumi",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wahaika",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wakizashi",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Warhammer",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Whip",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wushu Dart",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WIELDCATEGORY",
      Formula=Formula("-1"),
      Variables={
        "ALL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Resistance",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="You imbue the subject with magical energy that protects it from harm, granting it a +1 resistance bonus on saves.",
  },
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("1"),
      Type={
        Name="Resistance",
      },
      Variables={
        "ALL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyResistanceLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Permanency Spell / Telepathic Bond",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseString({"13", "14", "15", "16", "17", "18", "19", "20"}),
    MaxTimes=1,
  },
  Cost=0,
  Description={
    Format="You forge a telepathic bond among yourself and a number of willing creatures, each of which must have an Intelligence score of 3 or higher. Each creature included in the link is linked to all the others. The creatures can communicate telepathically through the bond regardless of language. No special power or influence is established as a result of the bond. Once the bond is formed, it works over any distance [although not from one plane to another]. If desired, you may leave yourself out of the telepathic bond forged. This decision must be made at the time of casting. Telepathic bond can be made permanent with a permanency spell, though it only bonds two creatures per casting of permanency.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("%LIST"),
      Variables={
        "PermanecyTelepathicBondLVL",
      },
    },
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
  Types={
    "SpecialQuality",
    "PermanencySpell",
  },
})
DefineAbility({
  Name="Animal Tricks and Training",
  Category="Special Ability",
  Visible=true,
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
      Formula=Formula("1"),
      Variables={
        "Animal Trick",
      },
    },
    {
      Category="ABILITYPOOL",
      Formula=Formula("2"),
      Conditions={
        function (character)
          return ((character.Stats["INT"] >= 1)) >= 1
        end,
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end) and 1 or 0)) >= 1)
        end,
      },
      Variables={
        "Animal Trick",
      },
    },
    {
      Category="ABILITYPOOL",
      Formula=Formula("(INTSCORE-1)*3"),
      Conditions={
        function (character)
          return ((character.Stats["INT"] >= 2)) >= 1
        end,
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end) and 1 or 0)) >= 1)
        end,
      },
      Variables={
        "Animal Trick",
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
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
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
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "DEX",
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
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CON",
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
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "INT",
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
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "WIS",
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
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "CHA",
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
  Types={
    "HumanEthnicity",
  },
})
DefineAbility({
  Name="Unknown",
  Key="Human Ethnicity ~ Unknown",
  Category="Background",
  Types={
    "HumanEthnicity",
  },
})
DefineAbility({
  Name="None",
  Key="Region ~ None",
  Category="Background",
  Types={
    "Region",
  },
})
DefineAbility({
  Name="Unknown",
  Key="Region ~ Unknown",
  Category="Background",
  Types={
    "Region",
  },
})
DefineAbility({
  Name="Wildshape 2 ~ Eagle",
  Category="Internal",
  Movement={
    Fly=60,
  },
})
DefineAbility({
  Name="Wildshape 3 ~ Eagle",
  Category="Internal",
  Movement={
    Fly=80,
  },
})
DefineAbility({
  Name="Wildshape 2 ~ Gar",
  Category="Internal",
  Movement={
    Swim=60,
  },
})
DefineAbility({
  Name="Wildshape 3 ~ Squid",
  Category="Internal",
  Movement={
    Jet=240,
  },
})
