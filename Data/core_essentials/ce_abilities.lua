-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_abilities.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("max(Caster_Level_Highest__Arcane,Caster_Level_Highest__Divine)"),
      Variables={
        "Caster_Level_Highest",
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Age",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAgeRules"] == 1)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Bool",
      },
      Conditions={
        function (character, item, sources)
          return (character.IsType("PC")) or (character.IsType("NPC"))
        end,
      },
      Variables={
        "UseAgeRules",
      },
    },
  },
})
DefineAbility({
  Name="Age",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Youth"))
        end,
      },
      Variables={
        "AgeProgression",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Adult"))
        end,
      },
      Variables={
        "AgeProgression",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Middle-Aged"))
        end,
      },
      Variables={
        "AgeProgression",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Old"))
        end,
      },
      Variables={
        "AgeProgression",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Venerable"))
        end,
      },
      Variables={
        "AgeProgression",
      },
    },
  },
})
ModifyAbility({
  Name="Age",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Age ~ Youth",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["AgeProgression"] == 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Age",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Age ~ Adult",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["AgeProgression"] == 2)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Age",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Age ~ Middle-Aged",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["AgeProgression"] == 3)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Age",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Age ~ Old",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["AgeProgression"] == 4)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Age",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Age ~ Venerable",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["AgeProgression"] == 5)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Age ~ Youth",
  Category="Internal",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-2"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAgeRulesNegateAgePenalties"] == 0)
        end,
      },
      Variables={
        "STR",
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Age",
      },
      Variables={
        "DEX",
      },
    },
  },
})
DefineAbility({
  Name="Age ~ Adult",
  Category="Internal",
})
DefineAbility({
  Name="Age ~ Middle-Aged",
  Category="Internal",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Type={
        Name="Age",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAgeRulesNegateAgePenalties"] == 0)
        end,
      },
      Variables={
        "STR",
        "DEX",
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Age",
      },
      Variables={
        "INT",
        "WIS",
        "CHA",
      },
    },
  },
})
DefineAbility({
  Name="Age ~ Old",
  Category="Internal",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-3"),
      Type={
        Name="Age",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAgeRulesNegateAgePenalties"] == 0)
        end,
      },
      Variables={
        "STR",
        "DEX",
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Age",
      },
      Variables={
        "INT",
        "WIS",
        "CHA",
      },
    },
  },
})
DefineAbility({
  Name="Age ~ Venerable",
  Category="Internal",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-6"),
      Type={
        Name="Age",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAgeRulesNegateAgePenalties"] == 0)
        end,
      },
      Variables={
        "STR",
        "DEX",
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Age",
      },
      Variables={
        "INT",
        "WIS",
        "CHA",
      },
    },
  },
})
DefineAbility({
  Name="Rules ~ Use Age Rules (Monsters)",
  Category="Internal",
  Cost=0,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Bool",
      },
      Variables={
        "UseAgeRules",
      },
    },
  },
  Types={
    "OptionalRules",
  },
})
DefineAbility({
  Name="Rules ~ Use Age Rules (Negate Penalties)",
  Category="Internal",
  Cost=0,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Bool",
      },
      Variables={
        "UseAgeRulesNegateAgePenalties",
      },
    },
  },
  Types={
    "OptionalRules",
  },
})
DefineAbility({
  Name="Detect Magic",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Detect Magic",
      SpellBookName="Innate",
      Times="DetectMagicTimes",
      TimeUnit="Day",
      CasterLevel="DetectMagicLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDetectMagic"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DetectMagicTimes"] >= 1)
        end,
      },
    },
    {
      Name="Detect Magic",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Constant",
      CasterLevel="DetectMagicLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDetectMagic"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DetectMagicTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Feather Fall",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Feather Fall",
      SpellBookName="Innate",
      Times="FeatherFallTimes",
      TimeUnit="Day",
      CasterLevel="FeatherFallLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellFeatherFall"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["FeatherFallTimes"] >= 1)
        end,
      },
    },
    {
      Name="Feather Fall",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="FeatherFallLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellFeatherFall"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["FeatherFallTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Levitate",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Levitate",
      SpellBookName="Innate",
      Times="LevitateTimes",
      TimeUnit="Day",
      CasterLevel="LevitateLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellLevitate"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["LevitateTimes"] >= 1)
        end,
      },
    },
    {
      Name="Levitate",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="LevitateLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellLevitate"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["LevitateTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Faerie Fire",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Faerie Fire",
      SpellBookName="Innate",
      Times="FaerieFireTimes",
      TimeUnit="Day",
      CasterLevel="FaerieFireLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellFaerieFire"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["FaerieFireTimes"] >= 1)
        end,
      },
    },
    {
      Name="Faerie Fire",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="FaerieFireLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellFaerieFire"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["FaerieFireTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Darkness",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Darkness",
      SpellBookName="Innate",
      Times="DarknessTimes",
      TimeUnit="Day",
      CasterLevel="DarknessLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDarkness"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DarknessTimes"] >= 1)
        end,
      },
    },
    {
      Name="Darkness",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="DarknessLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDarkness"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DarknessTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Deeper Darkness",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Deeper Darkness",
      SpellBookName="Innate",
      Times="DeeperDarknessTimes",
      TimeUnit="Day",
      CasterLevel="DeeperDarknessLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDeeperDarkness"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DeeperDarknessTimes"] >= 1)
        end,
      },
    },
    {
      Name="Deeper Darkness",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="DeeperDarknessLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDeeperDarkness"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DeeperDarknessTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Dancing Lights",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Dancing Lights",
      SpellBookName="Innate",
      Times="DancingLightsTimes",
      TimeUnit="Day",
      CasterLevel="DancingLightsLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDancingLights"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DancingLightsTimes"] >= 1)
        end,
      },
    },
    {
      Name="Dancing Lights",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="DancingLightsLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDancingLights"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DancingLightsTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Spider Climb",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Spider Climb",
      SpellBookName="Innate",
      Times="SpiderClimbTimes",
      TimeUnit="Day",
      CasterLevel="SpiderClimbLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellSpiderClimb"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["SpiderClimbTimes"] >= 1)
        end,
      },
    },
    {
      Name="Spider Climb",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="SpiderClimbLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellSpiderClimb"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["SpiderClimbTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Dispel Magic",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Dispel Magic",
      SpellBookName="Innate",
      Times="DispelMagicTimes",
      TimeUnit="Day",
      CasterLevel="DispelMagicLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDispelMagic"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DispelMagicTimes"] >= 1)
        end,
      },
    },
    {
      Name="Dispel Magic",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="DispelMagicLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDispelMagic"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DispelMagicTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Divine Favor",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Divine Favor",
      SpellBookName="Innate",
      Times="DivineFavorTimes",
      TimeUnit="Day",
      CasterLevel="DivineFavorLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDivineFavor"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DivineFavorTimes"] >= 1)
        end,
      },
    },
    {
      Name="Divine Favor",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="DivineFavorLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellDivineFavor"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["DivineFavorTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Suggestion",
  Category="Spell-Like Ability",
  Visible=true,
  SpellLikeAbilities={
    {
      Name="Suggestion",
      SpellBookName="Innate",
      Times="SuggestionTimes",
      TimeUnit="Day",
      DC="13+CHA",
      CasterLevel="SuggestionLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellSuggestion"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["SuggestionTimes"] >= 1)
        end,
      },
    },
    {
      Name="Suggestion",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      DC="13+CHA",
      CasterLevel="SuggestionLVL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableSpellSuggestion"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["SuggestionTimes"] <= 0)
        end,
      },
    },
  },
  Types={
    "ClassFeatures",
    "SpellLike",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 0 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL0",
    "SpellLikeDivineLVL0",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 1 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL1",
    "SpellLikeDivineLVL1",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 2 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL2",
    "SpellLikeDivineLVL2",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 3 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL3",
    "SpellLikeDivineLVL3",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 4 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL4",
    "SpellLikeDivineLVL4",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 5 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL5",
    "SpellLikeDivineLVL5",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 6 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL6",
    "SpellLikeDivineLVL6",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 7 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL7",
    "SpellLikeDivineLVL7",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 8 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL8",
    "SpellLikeDivineLVL8",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 9 ~ Divine",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL9",
    "SpellLikeDivineLVL9",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 0 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL0",
    "SpellLikeArcaneLVL0",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 1 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL1",
    "SpellLikeArcaneLVL1",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 2 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL2",
    "SpellLikeArcaneLVL2",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 3 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL3",
    "SpellLikeArcaneLVL3",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 4 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL4",
    "SpellLikeArcaneLVL4",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 5 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL5",
    "SpellLikeArcaneLVL5",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 6 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL6",
    "SpellLikeArcaneLVL6",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 7 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL7",
    "SpellLikeArcaneLVL7",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 8 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL8",
    "SpellLikeArcaneLVL8",
  },
})
DefineAbility({
  Name="Spell-Like Ability LVL 9 ~ Arcane",
  Category="Spell-Like Ability",
  Types={
    "SpellLikeAbility",
    "SpellLikeSpellLVL9",
    "SpellLikeArcaneLVL9",
  },
})
DefineAbility({
  Name="Daylight",
  Category="SLA",
  SpellLikeAbilities={
    {
      Name="Daylight",
      SpellBookName="Innate",
      Times="Daylight_Times",
      TimeUnit="Day",
      CasterLevel="Daylight_CasterLevel",
    },
  },
  Types={
    "SLA",
    "DivineLVL2",
  },
  Facts={
    SLA_DivineLVL2="True",
  },
})
DefineAbility({
  Name="Ability Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Acid",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Confusion",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Acidic Cloud",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Alchemy",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Allergic Reaction",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Animated Hair",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Aura of Madness",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Aura",
  },
})
DefineAbility({
  Name="Aura of Misfortune",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Aura",
  },
})
DefineAbility({
  Name="Baleful Shriek",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Barbed Hairs",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Bay",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Beard",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Beguiling Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Aura",
  },
})
DefineAbility({
  Name="Black Bile",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Black Flame Knives",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Blackest Depths",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Blightfire",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Blinding Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Blinding Light",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Bristles",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Burble",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Burn",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Calm Emotions Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Captivating Cloud",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Captivating Lure",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Captivating Song",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Change Size",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Charisma Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Cling",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Constitution Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Consumptive Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Corporeal Instability",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Corrosive Blood",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Crush",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Crushing Coils",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Daemonic Pact",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dance of Ruin",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dance of Death",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dancing Chains",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dazzling Brightness",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Death Burst",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Death Curse",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Death Throes",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Death's Calling",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Death-Stealing Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Despair",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Destructive Harmonics",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Detect Thoughts",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Devour Memories",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Devour Soul",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dexterity Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Disease",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dismantle Armor",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Distraction",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Drowning Kiss",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Electrical Burst",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Electricity",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Energy Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Engulf",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Enslave Soul",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Entangle",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Entangling Chains",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Entrap",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Entropic Beams",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Evil Eye",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Explosive Rebirth",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Eye Rays",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fascinating Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fear Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Feeblemind Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fiddle",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Final Embrace Horror",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Final Embrace Master",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fists of Lightning and Thunder",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fleshdrink",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Foul Stench",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Frightener",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Gibbering",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Godslayer",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Hallucination Cloud",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Hallucinatory Spores",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Spores",
  },
})
DefineAbility({
  Name="Heat",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Horrific Appearance",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Horrific Critical",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Howl",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Ichor",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Icy Destruction",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Inflict Warpwave",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Ink Cloud",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Cloud",
  },
})
DefineAbility({
  Name="Intimidating Charge",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Kiss",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Lava Body",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Light Pulse",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Lure",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Maddening Cacophony",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Madness",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Magic Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mass Laughter",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mind Thrust",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mind-Warping Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Moan",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Molten Body",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mucus Cloud",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mummy Rot",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Nausea",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Negative Level",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Nightmare Curse",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Curse",
  },
})
DefineAbility({
  Name="Noxious Breath",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Numbing Cold",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Otherworldly Mind",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Pain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Paralysis",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Paralysis",
  },
})
DefineAbility({
  Name="Paralytic Tentacles",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Paralysis",
  },
})
DefineAbility({
  Name="Paralytic Toxin",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Paralysis",
  },
})
DefineAbility({
  Name="Petrification",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Petrifying Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Pheremones",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Pipes",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Plague Carrier",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Poison",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Poison Skin",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Poison",
  },
})
DefineAbility({
  Name="Pollen Spray",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Psychic Crush",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Pus Burst",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Regurgitate",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Repulsion Breath",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Ripping Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Roar",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Rot",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Rust",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Savage Stingers",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Screech",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shaow Mark",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shape Flesh",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shock",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shockwave",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shriek",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sinful Bite",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sinister Bite",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sinkhole",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Skullface",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sleep",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sleep Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Aura",
  },
})
DefineAbility({
  Name="Slime",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Slow",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Smashing Breath",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Smoke",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Smoke Claws",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Claws",
  },
})
DefineAbility({
  Name="Soporific Pollen",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Spores",
  },
})
DefineAbility({
  Name="Soul Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Spatial Riptide",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Spit",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Spit Acid",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Spittle",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Splinterspray",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Spore Cough",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Spores",
  },
})
DefineAbility({
  Name="Spores",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Squirming Embrace",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Starlight Blast",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Steal Breath",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Steal Voice",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stench",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stone Curse",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Storm Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Aura",
  },
})
DefineAbility({
  Name="Strands",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Strength Damage",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Strength Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stun",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stunning Fist",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stunning Glance",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Stunning Laugh",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stunning Screech",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Tail Sweep",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Telekinesis",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Teleporting Burst",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Terrifying Croak",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Terror",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Thunderbolt",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Toxic Skin",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Trample",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Trill",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Trumpet",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Unholy Blood",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Unholy Nimbus",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Aura",
  },
})
DefineAbility({
  Name="Unnatural Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Unnerving Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Gaze",
  },
})
DefineAbility({
  Name="Void Bite",
  Category="Ability Focus",
  Types={
    "Ability Focus",
    "Bite",
  },
})
DefineAbility({
  Name="Vortex",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Wail",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Wall of Gears",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Warpwave",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Water Jet",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Water's Fury",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Weakness",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Web",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Whirlwind",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Whirlwind Blast",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Wind Walk",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Wisdom Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Witchflame",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Swaying Word",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Word of Anathema",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Caging Strike",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Divine Prison",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Chains of Justice",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Stare of Oblivion",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Commanding Order",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Grasp of Honesty",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Divine Retribution",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shrapnel Burst",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Incite Violence",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Righteous Cause",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Weird Words",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Cast into the Void",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Anchoring Aura",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Freezing Bolt",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Abyssal Transformation",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Breath of Flies",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dazzling Burst",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Death Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Devour",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Drain Soul",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fear Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Fireball Breath",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Implant",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Paralyzing Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Paralyzing Touch",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Pheromones",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Rotting Curse",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Shadow Mark",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Smashing Breach",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Soul-Drained Breath",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Splintering",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Aura of Doom",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Blood-Freezing Howl",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Charming Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Corpse Call",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Musk",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Ectoplasmic Poison",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Frightful Presence",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Weakening Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Terrified Escape",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Soul-chilling Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sickening Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Paranoia",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Overwhelming Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mindlock",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Mind Drain",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Lingering Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Incite Fear",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Haunting Steps",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Consuming Nightmare",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Sap Will",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Adhesive",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Dominate",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Frightful Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Malevolence",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Frightful Moan",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Corrupting Touch",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Corrupting Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Consume Flesh",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Hungry Gaze",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Voice of the Ancients",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Evangelization",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Ohrwurm",
  Category="Ability Focus",
  Types={
    "Ability Focus",
  },
})
DefineAbility({
  Name="Disable First Level Domain Power",
  Key="DisableDomainLVL1",
  Category="Internal",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, domain)
      return ((character.HasDomain(domain)))
    end),
  },
  Stackable=false,
})
DefineAbility({
  Name="Flight Speed ~ 30",
  Category="Internal",
  Movement={
    Fly=30,
  },
})
DefineAbility({
  Name="Flight Speed ~ 40",
  Category="Internal",
  Movement={
    Fly=40,
  },
})
DefineAbility({
  Name="Flight Speed ~ 50",
  Category="Internal",
  Movement={
    Fly=50,
  },
})
DefineAbility({
  Name="Flight Speed ~ 60",
  Category="Internal",
  Movement={
    Fly=60,
  },
})
DefineAbility({
  Name="Flight Speed ~ 70",
  Category="Internal",
  Movement={
    Fly=70,
  },
})
DefineAbility({
  Name="Flight Speed ~ 80",
  Category="Internal",
  Movement={
    Fly=80,
  },
})
DefineAbility({
  Name="Flight Speed ~ 90",
  Category="Internal",
  Movement={
    Fly=90,
  },
})
DefineAbility({
  Name="Flight Speed ~ 100",
  Category="Internal",
  Movement={
    Fly=100,
  },
})
DefineAbility({
  Name="Flight Speed ~ 110",
  Category="Internal",
  Movement={
    Fly=110,
  },
})
DefineAbility({
  Name="Flight Speed ~ 120",
  Category="Internal",
  Movement={
    Fly=120,
  },
})
DefineAbility({
  Name="Flight Speed ~ 130",
  Category="Internal",
  Movement={
    Fly=130,
  },
})
DefineAbility({
  Name="Flight Speed ~ 140",
  Category="Internal",
  Movement={
    Fly=140,
  },
})
DefineAbility({
  Name="Flight Speed ~ 150",
  Category="Internal",
  Movement={
    Fly=150,
  },
})
DefineAbility({
  Name="Flight Speed ~ 160",
  Category="Internal",
  Movement={
    Fly=160,
  },
})
DefineAbility({
  Name="Flight Speed ~ 170",
  Category="Internal",
  Movement={
    Fly=170,
  },
})
DefineAbility({
  Name="Flight Speed ~ 180",
  Category="Internal",
  Movement={
    Fly=180,
  },
})
DefineAbility({
  Name="Flight Speed ~ 190",
  Category="Internal",
  Movement={
    Fly=190,
  },
})
DefineAbility({
  Name="Flight Speed ~ 200",
  Category="Internal",
  Movement={
    Fly=200,
  },
})
DefineAbility({
  Name="Flight Speed ~ 210",
  Category="Internal",
  Movement={
    Fly=210,
  },
})
DefineAbility({
  Name="Flight Speed ~ 220",
  Category="Internal",
  Movement={
    Fly=220,
  },
})
DefineAbility({
  Name="Flight Speed ~ 230",
  Category="Internal",
  Movement={
    Fly=230,
  },
})
DefineAbility({
  Name="Flight Speed ~ 240",
  Category="Internal",
  Movement={
    Fly=240,
  },
})
DefineAbility({
  Name="Flight Speed ~ 250",
  Category="Internal",
  Movement={
    Fly=250,
  },
})
DefineAbility({
  Name="Flight Speed ~ 260",
  Category="Internal",
  Movement={
    Fly=260,
  },
})
DefineAbility({
  Name="Flight Speed ~ 270",
  Category="Internal",
  Movement={
    Fly=270,
  },
})
DefineAbility({
  Name="Flight Speed ~ 280",
  Category="Internal",
  Movement={
    Fly=280,
  },
})
DefineAbility({
  Name="Flight Speed ~ 290",
  Category="Internal",
  Movement={
    Fly=290,
  },
})
DefineAbility({
  Name="Flight Speed ~ 300",
  Category="Internal",
  Movement={
    Fly=300,
  },
})
DefineAbility({
  Name="Flight Speed ~ 310",
  Category="Internal",
  Movement={
    Fly=310,
  },
})
DefineAbility({
  Name="Flight Speed ~ 320",
  Category="Internal",
  Movement={
    Fly=320,
  },
})
DefineAbility({
  Name="Burrow Speed ~ 20",
  Category="Internal",
  Movement={
    Burrow=20,
  },
})
DefineAbility({
  Name="Burrow Speed ~ 30",
  Category="Internal",
  Movement={
    Burrow=30,
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Limbs",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] >= 1) or (character.Variables["RaceLegs"] >= 1)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Limbs",
  Category="Internal",
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 1",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 2",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 2)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 3",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 3)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 4",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 4)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 5",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 6)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 7",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 7)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 8",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 8)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 9",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 9)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Arms ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceArms"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 1",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 2",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 2)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 3",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 3)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 4",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 4)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 5",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 6)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 7",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 7)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 8",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 8)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 9",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 9)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 11",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 11)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 12",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 12)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 13",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 13)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 14",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 14)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 15",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 15)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 16",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 16)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 17",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 17)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 18",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 18)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 19",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 19)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 20",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 20)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 21",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 21)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 22",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 22)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 23",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 23)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 24",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 24)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 25",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 25)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 26",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 26)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 27",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 27)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Limbs",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Legs ~ 28",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["RaceLegs"] == 28)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Arms ~ 1",
  Category="Internal",
  Templates={
    "Arms ~ 1",
  },
})
DefineAbility({
  Name="Arms ~ 2",
  Category="Internal",
  Templates={
    "Arms ~ 2",
  },
})
DefineAbility({
  Name="Arms ~ 3",
  Category="Internal",
  Templates={
    "Arms ~ 3",
  },
})
DefineAbility({
  Name="Arms ~ 4",
  Category="Internal",
  Templates={
    "Arms ~ 4",
  },
})
DefineAbility({
  Name="Arms ~ 5",
  Category="Internal",
  Templates={
    "Arms ~ 5",
  },
})
DefineAbility({
  Name="Arms ~ 6",
  Category="Internal",
  Templates={
    "Arms ~ 6",
  },
})
DefineAbility({
  Name="Arms ~ 7",
  Category="Internal",
  Templates={
    "Arms ~ 7",
  },
})
DefineAbility({
  Name="Arms ~ 8",
  Category="Internal",
  Templates={
    "Arms ~ 8",
  },
})
DefineAbility({
  Name="Arms ~ 9",
  Category="Internal",
  Templates={
    "Arms ~ 9",
  },
})
DefineAbility({
  Name="Arms ~ 10",
  Category="Internal",
  Templates={
    "Arms ~ 10",
  },
})
DefineAbility({
  Name="Legs ~ 1",
  Category="Internal",
  Templates={
    "Legs ~ 1",
  },
})
DefineAbility({
  Name="Legs ~ 2",
  Category="Internal",
  Templates={
    "Legs ~ 2",
  },
})
DefineAbility({
  Name="Legs ~ 3",
  Category="Internal",
  Templates={
    "Legs ~ 3",
  },
})
DefineAbility({
  Name="Legs ~ 4",
  Category="Internal",
  Templates={
    "Legs ~ 4",
  },
})
DefineAbility({
  Name="Legs ~ 5",
  Category="Internal",
  Templates={
    "Legs ~ 5",
  },
})
DefineAbility({
  Name="Legs ~ 6",
  Category="Internal",
  Templates={
    "Legs ~ 6",
  },
})
DefineAbility({
  Name="Legs ~ 7",
  Category="Internal",
  Templates={
    "Legs ~ 7",
  },
})
DefineAbility({
  Name="Legs ~ 8",
  Category="Internal",
  Templates={
    "Legs ~ 8",
  },
})
DefineAbility({
  Name="Legs ~ 9",
  Category="Internal",
  Templates={
    "Legs ~ 9",
  },
})
DefineAbility({
  Name="Legs ~ 10",
  Category="Internal",
  Templates={
    "Legs ~ 10",
  },
})
DefineAbility({
  Name="Legs ~ 11",
  Category="Internal",
  Templates={
    "Legs ~ 11",
  },
})
DefineAbility({
  Name="Legs ~ 12",
  Category="Internal",
  Templates={
    "Legs ~ 12",
  },
})
DefineAbility({
  Name="Legs ~ 13",
  Category="Internal",
  Templates={
    "Legs ~ 13",
  },
})
DefineAbility({
  Name="Legs ~ 14",
  Category="Internal",
  Templates={
    "Legs ~ 14",
  },
})
DefineAbility({
  Name="Legs ~ 15",
  Category="Internal",
  Templates={
    "Legs ~ 15",
  },
})
DefineAbility({
  Name="Legs ~ 16",
  Category="Internal",
  Templates={
    "Legs ~ 16",
  },
})
DefineAbility({
  Name="Legs ~ 17",
  Category="Internal",
  Templates={
    "Legs ~ 17",
  },
})
DefineAbility({
  Name="Legs ~ 18",
  Category="Internal",
  Templates={
    "Legs ~ 18",
  },
})
DefineAbility({
  Name="Legs ~ 19",
  Category="Internal",
  Templates={
    "Legs ~ 19",
  },
})
DefineAbility({
  Name="Legs ~ 20",
  Category="Internal",
  Templates={
    "Legs ~ 20",
  },
})
DefineAbility({
  Name="Legs ~ 21",
  Category="Internal",
  Templates={
    "Legs ~ 21",
  },
})
DefineAbility({
  Name="Legs ~ 22",
  Category="Internal",
  Templates={
    "Legs ~ 22",
  },
})
DefineAbility({
  Name="Legs ~ 23",
  Category="Internal",
  Templates={
    "Legs ~ 23",
  },
})
DefineAbility({
  Name="Legs ~ 24",
  Category="Internal",
  Templates={
    "Legs ~ 24",
  },
})
DefineAbility({
  Name="Legs ~ 25",
  Category="Internal",
  Templates={
    "Legs ~ 25",
  },
})
DefineAbility({
  Name="Legs ~ 26",
  Category="Internal",
  Templates={
    "Legs ~ 26",
  },
})
DefineAbility({
  Name="Legs ~ 27",
  Category="Internal",
  Templates={
    "Legs ~ 27",
  },
})
DefineAbility({
  Name="Legs ~ 28",
  Category="Internal",
  Templates={
    "Legs ~ 28",
  },
})
DefineAbility({
  Name="Walk ~ 05",
  Category="Internal",
  Movement={
    Walk=5,
  },
})
DefineAbility({
  Name="Walk ~ 10",
  Category="Internal",
  Movement={
    Walk=10,
  },
})
DefineAbility({
  Name="Walk ~ 15",
  Category="Internal",
  Movement={
    Walk=15,
  },
})
DefineAbility({
  Name="Walk ~ 20",
  Category="Internal",
  Movement={
    Walk=20,
  },
})
DefineAbility({
  Name="Walk ~ 25",
  Category="Internal",
  Movement={
    Walk=25,
  },
})
DefineAbility({
  Name="Walk ~ 30",
  Category="Internal",
  Movement={
    Walk=30,
  },
})
DefineAbility({
  Name="Walk ~ 35",
  Category="Internal",
  Movement={
    Walk=35,
  },
})
DefineAbility({
  Name="Walk ~ 40",
  Category="Internal",
  Movement={
    Walk=40,
  },
})
DefineAbility({
  Name="Walk ~ 45",
  Category="Internal",
  Movement={
    Walk=45,
  },
})
DefineAbility({
  Name="Walk ~ 50",
  Category="Internal",
  Movement={
    Walk=50,
  },
})
DefineAbility({
  Name="Walk ~ 55",
  Category="Internal",
  Movement={
    Walk=55,
  },
})
DefineAbility({
  Name="Walk ~ 60",
  Category="Internal",
  Movement={
    Walk=60,
  },
})
DefineAbility({
  Name="Walk ~ 65",
  Category="Internal",
  Movement={
    Walk=65,
  },
})
DefineAbility({
  Name="Walk ~ 70",
  Category="Internal",
  Movement={
    Walk=70,
  },
})
DefineAbility({
  Name="Walk ~ 75",
  Category="Internal",
  Movement={
    Walk=75,
  },
})
DefineAbility({
  Name="Walk ~ 80",
  Category="Internal",
  Movement={
    Walk=80,
  },
})
DefineAbility({
  Name="Walk ~ 85",
  Category="Internal",
  Movement={
    Walk=85,
  },
})
DefineAbility({
  Name="Walk ~ 90",
  Category="Internal",
  Movement={
    Walk=90,
  },
})
DefineAbility({
  Name="Walk ~ 95",
  Category="Internal",
  Movement={
    Walk=95,
  },
})
DefineAbility({
  Name="Walk ~ 100",
  Category="Internal",
  Movement={
    Walk=100,
  },
})
DefineAbility({
  Name="Walk ~ 105",
  Category="Internal",
  Movement={
    Walk=105,
  },
})
DefineAbility({
  Name="Walk ~ 110",
  Category="Internal",
  Movement={
    Walk=110,
  },
})
DefineAbility({
  Name="Walk ~ 115",
  Category="Internal",
  Movement={
    Walk=115,
  },
})
DefineAbility({
  Name="Walk ~ 120",
  Category="Internal",
  Movement={
    Walk=120,
  },
})
DefineAbility({
  Name="Climb ~ 05",
  Category="Internal",
  Movement={
    Climb=5,
  },
})
DefineAbility({
  Name="Climb ~ 10",
  Category="Internal",
  Movement={
    Climb=10,
  },
})
DefineAbility({
  Name="Climb ~ 15",
  Category="Internal",
  Movement={
    Climb=15,
  },
})
DefineAbility({
  Name="Climb ~ 20",
  Category="Internal",
  Movement={
    Climb=20,
  },
})
DefineAbility({
  Name="Climb ~ 25",
  Category="Internal",
  Movement={
    Climb=25,
  },
})
DefineAbility({
  Name="Climb ~ 30",
  Category="Internal",
  Movement={
    Climb=30,
  },
})
DefineAbility({
  Name="Climb ~ 35",
  Category="Internal",
  Movement={
    Climb=35,
  },
})
DefineAbility({
  Name="Climb ~ 40",
  Category="Internal",
  Movement={
    Climb=40,
  },
})
DefineAbility({
  Name="Climb ~ 45",
  Category="Internal",
  Movement={
    Climb=45,
  },
})
DefineAbility({
  Name="Climb ~ 50",
  Category="Internal",
  Movement={
    Climb=50,
  },
})
DefineAbility({
  Name="Climb ~ 55",
  Category="Internal",
  Movement={
    Climb=55,
  },
})
DefineAbility({
  Name="Climb ~ 60",
  Category="Internal",
  Movement={
    Climb=60,
  },
})
DefineAbility({
  Name="Climb ~ 65",
  Category="Internal",
  Movement={
    Climb=65,
  },
})
DefineAbility({
  Name="Climb ~ 70",
  Category="Internal",
  Movement={
    Climb=70,
  },
})
DefineAbility({
  Name="Climb ~ 75",
  Category="Internal",
  Movement={
    Climb=75,
  },
})
DefineAbility({
  Name="Climb ~ 80",
  Category="Internal",
  Movement={
    Climb=80,
  },
})
DefineAbility({
  Name="Climb ~ 85",
  Category="Internal",
  Movement={
    Climb=85,
  },
})
DefineAbility({
  Name="Climb ~ 90",
  Category="Internal",
  Movement={
    Climb=90,
  },
})
DefineAbility({
  Name="Climb ~ 95",
  Category="Internal",
  Movement={
    Climb=95,
  },
})
DefineAbility({
  Name="Climb ~ 100",
  Category="Internal",
  Movement={
    Climb=100,
  },
})
DefineAbility({
  Name="Climb ~ 105",
  Category="Internal",
  Movement={
    Climb=105,
  },
})
DefineAbility({
  Name="Climb ~ 110",
  Category="Internal",
  Movement={
    Climb=110,
  },
})
DefineAbility({
  Name="Climb ~ 115",
  Category="Internal",
  Movement={
    Climb=115,
  },
})
DefineAbility({
  Name="Climb ~ 120",
  Category="Internal",
  Movement={
    Climb=120,
  },
})
DefineAbility({
  Name="Fly ~ 05",
  Category="Internal",
  Movement={
    Fly=5,
  },
})
DefineAbility({
  Name="Fly ~ 10",
  Category="Internal",
  Movement={
    Fly=10,
  },
})
DefineAbility({
  Name="Fly ~ 15",
  Category="Internal",
  Movement={
    Fly=15,
  },
})
DefineAbility({
  Name="Fly ~ 20",
  Category="Internal",
  Movement={
    Fly=20,
  },
})
DefineAbility({
  Name="Fly ~ 25",
  Category="Internal",
  Movement={
    Fly=25,
  },
})
DefineAbility({
  Name="Fly ~ 30",
  Category="Internal",
  Movement={
    Fly=30,
  },
})
DefineAbility({
  Name="Fly ~ 35",
  Category="Internal",
  Movement={
    Fly=35,
  },
})
DefineAbility({
  Name="Fly ~ 40",
  Category="Internal",
  Movement={
    Fly=40,
  },
})
DefineAbility({
  Name="Fly ~ 45",
  Category="Internal",
  Movement={
    Fly=45,
  },
})
DefineAbility({
  Name="Fly ~ 50",
  Category="Internal",
  Movement={
    Fly=50,
  },
})
DefineAbility({
  Name="Fly ~ 55",
  Category="Internal",
  Movement={
    Fly=55,
  },
})
DefineAbility({
  Name="Fly ~ 60",
  Category="Internal",
  Movement={
    Fly=60,
  },
})
DefineAbility({
  Name="Fly ~ 65",
  Category="Internal",
  Movement={
    Fly=65,
  },
})
DefineAbility({
  Name="Fly ~ 70",
  Category="Internal",
  Movement={
    Fly=70,
  },
})
DefineAbility({
  Name="Fly ~ 75",
  Category="Internal",
  Movement={
    Fly=75,
  },
})
DefineAbility({
  Name="Fly ~ 80",
  Category="Internal",
  Movement={
    Fly=80,
  },
})
DefineAbility({
  Name="Fly ~ 85",
  Category="Internal",
  Movement={
    Fly=85,
  },
})
DefineAbility({
  Name="Fly ~ 90",
  Category="Internal",
  Movement={
    Fly=90,
  },
})
DefineAbility({
  Name="Fly ~ 95",
  Category="Internal",
  Movement={
    Fly=95,
  },
})
DefineAbility({
  Name="Fly ~ 100",
  Category="Internal",
  Movement={
    Fly=100,
  },
})
DefineAbility({
  Name="Fly ~ 105",
  Category="Internal",
  Movement={
    Fly=105,
  },
})
DefineAbility({
  Name="Fly ~ 110",
  Category="Internal",
  Movement={
    Fly=110,
  },
})
DefineAbility({
  Name="Fly ~ 115",
  Category="Internal",
  Movement={
    Fly=115,
  },
})
DefineAbility({
  Name="Fly ~ 120",
  Category="Internal",
  Movement={
    Fly=120,
  },
})
DefineAbility({
  Name="Burrow ~ 05",
  Category="Internal",
  Movement={
    Burrow=5,
  },
})
DefineAbility({
  Name="Burrow ~ 10",
  Category="Internal",
  Movement={
    Burrow=10,
  },
})
DefineAbility({
  Name="Burrow ~ 15",
  Category="Internal",
  Movement={
    Burrow=15,
  },
})
DefineAbility({
  Name="Burrow ~ 20",
  Category="Internal",
  Movement={
    Burrow=20,
  },
})
DefineAbility({
  Name="Burrow ~ 25",
  Category="Internal",
  Movement={
    Burrow=25,
  },
})
DefineAbility({
  Name="Burrow ~ 30",
  Category="Internal",
  Movement={
    Burrow=30,
  },
})
DefineAbility({
  Name="Burrow ~ 35",
  Category="Internal",
  Movement={
    Burrow=35,
  },
})
DefineAbility({
  Name="Burrow ~ 40",
  Category="Internal",
  Movement={
    Burrow=40,
  },
})
DefineAbility({
  Name="Burrow ~ 45",
  Category="Internal",
  Movement={
    Burrow=45,
  },
})
DefineAbility({
  Name="Burrow ~ 50",
  Category="Internal",
  Movement={
    Burrow=50,
  },
})
DefineAbility({
  Name="Burrow ~ 55",
  Category="Internal",
  Movement={
    Burrow=55,
  },
})
DefineAbility({
  Name="Burrow ~ 60",
  Category="Internal",
  Movement={
    Burrow=60,
  },
})
DefineAbility({
  Name="Burrow ~ 65",
  Category="Internal",
  Movement={
    Burrow=65,
  },
})
DefineAbility({
  Name="Burrow ~ 70",
  Category="Internal",
  Movement={
    Burrow=70,
  },
})
DefineAbility({
  Name="Burrow ~ 75",
  Category="Internal",
  Movement={
    Burrow=75,
  },
})
DefineAbility({
  Name="Burrow ~ 80",
  Category="Internal",
  Movement={
    Burrow=80,
  },
})
DefineAbility({
  Name="Burrow ~ 85",
  Category="Internal",
  Movement={
    Burrow=85,
  },
})
DefineAbility({
  Name="Burrow ~ 90",
  Category="Internal",
  Movement={
    Burrow=90,
  },
})
DefineAbility({
  Name="Burrow ~ 95",
  Category="Internal",
  Movement={
    Burrow=95,
  },
})
DefineAbility({
  Name="Burrow ~ 100",
  Category="Internal",
  Movement={
    Burrow=100,
  },
})
DefineAbility({
  Name="Burrow ~ 105",
  Category="Internal",
  Movement={
    Burrow=105,
  },
})
DefineAbility({
  Name="Burrow ~ 110",
  Category="Internal",
  Movement={
    Burrow=110,
  },
})
DefineAbility({
  Name="Burrow ~ 115",
  Category="Internal",
  Movement={
    Burrow=115,
  },
})
DefineAbility({
  Name="Burrow ~ 120",
  Category="Internal",
  Movement={
    Burrow=120,
  },
})
DefineAbility({
  Name="Swim ~ 05",
  Category="Internal",
  Movement={
    Swim=5,
  },
})
DefineAbility({
  Name="Swim ~ 10",
  Category="Internal",
  Movement={
    Swim=10,
  },
})
DefineAbility({
  Name="Swim ~ 15",
  Category="Internal",
  Movement={
    Swim=15,
  },
})
DefineAbility({
  Name="Swim ~ 20",
  Category="Internal",
  Movement={
    Swim=20,
  },
})
DefineAbility({
  Name="Swim ~ 25",
  Category="Internal",
  Movement={
    Swim=25,
  },
})
DefineAbility({
  Name="Swim ~ 30",
  Category="Internal",
  Movement={
    Swim=30,
  },
})
DefineAbility({
  Name="Swim ~ 35",
  Category="Internal",
  Movement={
    Swim=35,
  },
})
DefineAbility({
  Name="Swim ~ 40",
  Category="Internal",
  Movement={
    Swim=40,
  },
})
DefineAbility({
  Name="Swim ~ 45",
  Category="Internal",
  Movement={
    Swim=45,
  },
})
DefineAbility({
  Name="Swim ~ 50",
  Category="Internal",
  Movement={
    Swim=50,
  },
})
DefineAbility({
  Name="Swim ~ 55",
  Category="Internal",
  Movement={
    Swim=55,
  },
})
DefineAbility({
  Name="Swim ~ 60",
  Category="Internal",
  Movement={
    Swim=60,
  },
})
DefineAbility({
  Name="Swim ~ 65",
  Category="Internal",
  Movement={
    Swim=65,
  },
})
DefineAbility({
  Name="Swim ~ 70",
  Category="Internal",
  Movement={
    Swim=70,
  },
})
DefineAbility({
  Name="Swim ~ 75",
  Category="Internal",
  Movement={
    Swim=75,
  },
})
DefineAbility({
  Name="Swim ~ 80",
  Category="Internal",
  Movement={
    Swim=80,
  },
})
DefineAbility({
  Name="Swim ~ 85",
  Category="Internal",
  Movement={
    Swim=85,
  },
})
DefineAbility({
  Name="Swim ~ 90",
  Category="Internal",
  Movement={
    Swim=90,
  },
})
DefineAbility({
  Name="Swim ~ 95",
  Category="Internal",
  Movement={
    Swim=95,
  },
})
DefineAbility({
  Name="Swim ~ 100",
  Category="Internal",
  Movement={
    Swim=100,
  },
})
DefineAbility({
  Name="Swim ~ 105",
  Category="Internal",
  Movement={
    Swim=105,
  },
})
DefineAbility({
  Name="Swim ~ 110",
  Category="Internal",
  Movement={
    Swim=110,
  },
})
DefineAbility({
  Name="Swim ~ 115",
  Category="Internal",
  Movement={
    Swim=115,
  },
})
DefineAbility({
  Name="Swim ~ 120",
  Category="Internal",
  Movement={
    Swim=120,
  },
})
DefineAbility({
  Name="Encumbrance Rules",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("-max(EncumbrancePenalty,ArmorCheckPenalty)"),
      Type={
        Name="Encumbrance",
      },
      Variables={
        "TYPE=ACHECK",
      },
    },
    {
      Category="VAR",
      Formula=Formula("ACCHECK"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
  },
})
DefineAbility({
  Name="Light",
  Key="Encumbrance ~ Light",
  Category="Internal",
})
DefineAbility({
  Name="Medium",
  Key="Encumbrance ~ Medium",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Encumbrance ~ Reduced Movement",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "EncumbrancePenalty",
      },
    },
  },
})
DefineAbility({
  Name="Heavy",
  Key="Encumbrance ~ Heavy",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Encumbrance ~ Reduced Movement",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "EncumbrancePenalty",
      },
    },
  },
})
DefineAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("CombinedMove_Walk"),
      Variables={
        "ReducedSpeedFormula_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("05"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 5)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 10)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 15)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 20)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("20"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 25)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 30)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("25"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 35)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 40)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 45)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("35"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 50)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("40"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 5)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 60)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("45"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 65)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("50"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 70)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 75)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("55"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 80)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 85)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 90)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("65"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 95)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("70"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 100)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 105)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("75"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] == 110)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("80"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] >= 115)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Walk"] <= 120)
        end,
      },
      Variables={
        "ReducedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("CombinedMove_Climb"),
      Variables={
        "ReducedSpeedFormula_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("05"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 5)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 10)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 15)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 20)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("20"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 25)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 30)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("25"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 35)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 40)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 45)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("35"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 50)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("40"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 5)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 60)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("45"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 65)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("50"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 70)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 75)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("55"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 80)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 85)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 90)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("65"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 95)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("70"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 100)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 105)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("75"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] == 110)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("80"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] >= 115)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Climb"] <= 120)
        end,
      },
      Variables={
        "ReducedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("CombinedMove_Fly"),
      Variables={
        "ReducedSpeedFormula_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("05"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 5)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 10)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 15)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 20)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("20"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 25)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 30)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("25"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 35)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 40)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 45)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("35"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 50)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("40"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 5)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 60)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("45"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 65)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("50"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 70)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 75)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("55"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 80)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 85)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 90)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("65"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 95)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("70"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 100)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 105)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("75"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] == 110)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("80"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] >= 115)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Fly"] <= 120)
        end,
      },
      Variables={
        "ReducedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("CombinedMove_Burrow"),
      Variables={
        "ReducedSpeedFormula_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("05"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 5)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 10)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 15)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 20)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("20"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 25)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 30)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("25"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 35)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 40)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 45)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("35"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 50)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("40"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 5)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 60)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("45"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 65)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("50"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 70)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 75)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("55"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 80)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 85)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 90)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("65"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 95)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("70"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 100)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 105)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("75"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] == 110)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("80"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] >= 115)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Burrow"] <= 120)
        end,
      },
      Variables={
        "ReducedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("CombinedMove_Swim"),
      Variables={
        "ReducedSpeedFormula_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("05"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 5)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 10)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 15)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 20)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("20"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 25)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 30)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("25"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 35)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 40)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 45)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("35"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 50)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("40"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 5)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 60)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("45"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 65)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("50"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 70)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 75)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("55"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 80)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 85)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 90)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("65"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 95)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("70"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 100)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 105)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("75"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] == 110)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Encumbrance ~ Reduced Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("80"),
      Type={
        Name="Modified",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] >= 115)
        end,
        function (character, item, sources)
          return (character.Variables["ReducedSpeedFormula_Swim"] <= 120)
        end,
      },
      Variables={
        "ReducedMove_Swim",
      },
    },
  },
})
DefineAbility({
  Name="Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("PostBonusMove_Walk+min(CombinedMove_Walk,ReducedMove_All)"),
      Type={
        Name="Speed",
      },
      Variables={
        "TotalSpeed_Walk",
      },
    },
    {
      Category="VAR",
      Formula=Formula("BaseMove_Walk+BonusMove_Walk"),
      Variables={
        "CombinedMove_Walk",
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("PostBonusMove_Climb+min(CombinedMove_Climb,ReducedMove_All)"),
      Type={
        Name="Speed",
      },
      Variables={
        "TotalSpeed_Climb",
      },
    },
    {
      Category="VAR",
      Formula=Formula("BaseMove_Climb+BonusMove_Climb"),
      Variables={
        "CombinedMove_Climb",
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("PostBonusMove_Fly+min(CombinedMove_Fly,ReducedMove_All)"),
      Type={
        Name="Speed",
      },
      Variables={
        "TotalSpeed_Fly",
      },
    },
    {
      Category="VAR",
      Formula=Formula("BaseMove_Fly+BonusMove_Fly"),
      Variables={
        "CombinedMove_Fly",
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("PostBonusMove_Burrow+min(CombinedMove_Burrow,ReducedMove_All)"),
      Type={
        Name="Speed",
      },
      Variables={
        "TotalSpeed_Burrow",
      },
    },
    {
      Category="VAR",
      Formula=Formula("BaseMove_Burrow+BonusMove_Burrow"),
      Variables={
        "CombinedMove_Burrow",
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("PostBonusMove_Swim+min(CombinedMove_Swim,ReducedMove_All)"),
      Type={
        Name="Speed",
      },
      Variables={
        "TotalSpeed_Swim",
      },
    },
    {
      Category="VAR",
      Formula=Formula("BaseMove_Swim+BonusMove_Swim"),
      Variables={
        "CombinedMove_Swim",
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 05",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 15",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 15)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 20",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 20)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 25",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 25)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 30",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 30)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 35",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 35)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 40",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 40)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 45",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 45)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 50",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 50)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 55",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 55)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 60",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 60)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 65",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 65)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 70",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 70)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 75",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 75)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 80",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 80)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 85",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 85)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 90",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 90)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 95",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 95)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 100",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 100)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 105",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 105)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 110",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 110)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 115",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 115)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Walk ~ 120",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Walk"] == 120)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 05",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 15",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 15)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 20",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 20)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 25",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 25)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 30",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 30)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 35",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 35)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 40",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 40)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 45",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 45)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 50",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 50)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 55",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 55)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 60",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 60)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 65",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 65)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 70",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 70)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 75",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 75)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 80",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 80)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 85",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 85)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 90",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 90)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 95",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 95)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 100",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 100)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 105",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 105)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 110",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 110)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 115",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 115)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Swim ~ 120",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Swim"] == 120)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 05",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 15",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 15)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 20",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 20)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 25",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 25)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 30",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 30)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 35",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 35)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 40",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 40)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 45",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 45)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 50",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 50)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 55",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 55)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 60",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 60)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 65",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 65)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 70",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 70)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 75",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 75)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 80",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 80)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 85",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 85)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 90",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 90)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 95",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 95)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 100",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 100)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 105",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 105)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 110",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 110)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 115",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 115)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Climb ~ 120",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Climb"] == 120)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 05",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 15",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 15)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 20",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 20)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 25",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 25)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 30",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 30)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 35",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 35)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 40",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 40)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 45",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 45)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 50",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 50)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 55",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 55)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 60",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 60)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 65",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 65)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 70",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 70)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 75",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 75)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 80",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 80)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 85",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 85)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 90",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 90)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 95",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 95)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 100",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 100)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 105",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 105)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 110",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 110)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 115",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 115)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Burrow ~ 120",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Burrow"] == 120)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 05",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 10",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 15",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 15)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 20",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 20)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 25",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 25)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 30",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 30)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 35",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 35)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 40",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 40)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 45",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 45)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 50",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 50)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 55",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 55)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 60",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 60)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 65",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 65)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 70",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 70)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 75",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 75)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 80",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 80)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 85",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 85)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 90",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 90)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 95",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 95)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 100",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 100)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 105",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 105)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 110",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 110)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 115",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 115)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Movement",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Fly ~ 120",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["TotalSpeed_Fly"] == 120)
        end,
      },
    },
  },
})
DefineAbility({
  Name="F",
  Key="SIZE F",
  SortKey="1",
  Category="Internal",
  Templates={
    "SIZE_F",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="D",
  Key="SIZE D",
  SortKey="2",
  Category="Internal",
  Templates={
    "SIZE_D",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="T",
  Key="SIZE T",
  SortKey="3",
  Category="Internal",
  Templates={
    "SIZE_T",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="S",
  Key="SIZE S",
  SortKey="4",
  Category="Internal",
  Templates={
    "SIZE_S",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="M",
  Key="SIZE M",
  SortKey="5",
  Category="Internal",
  Templates={
    "SIZE_M",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="L",
  Key="SIZE L",
  SortKey="6",
  Category="Internal",
  Templates={
    "SIZE_L",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="H",
  Key="SIZE H",
  SortKey="7",
  Category="Internal",
  Templates={
    "SIZE_H",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="G",
  Key="SIZE G",
  SortKey="8",
  Category="Internal",
  Templates={
    "SIZE_G",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="C",
  Key="SIZE C",
  SortKey="9",
  Category="Internal",
  Templates={
    "SIZE_C",
  },
  Types={
    "Size",
  },
})
DefineAbility({
  Name="Fine",
  Key="Race Size ~ F",
  SortKey="1",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Fine"] == "true"
    end,
  },
  Templates={
    "SIZE_F",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Diminutive",
  Key="Race Size ~ D",
  SortKey="2",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Diminutive"] == "true"
    end,
  },
  Templates={
    "SIZE_D",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Tiny",
  Key="Race Size ~ T",
  SortKey="3",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Tiny"] == "true"
    end,
  },
  Templates={
    "SIZE_T",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Small",
  Key="Race Size ~ S",
  SortKey="4",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Small"] == "true"
    end,
  },
  Templates={
    "SIZE_S",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Medium",
  Key="Race Size ~ M",
  SortKey="5",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Medium"] == "true"
    end,
  },
  Templates={
    "SIZE_M",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Large",
  Key="Race Size ~ L",
  SortKey="6",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Large"] == "true"
    end,
  },
  Templates={
    "SIZE_L",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Huge",
  Key="Race Size ~ H",
  SortKey="7",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Huge"] == "true"
    end,
  },
  Templates={
    "SIZE_H",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Gargantuan",
  Key="Race Size ~ G",
  SortKey="8",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Gargantuan"] == "true"
    end,
  },
  Templates={
    "SIZE_G",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Colossal",
  Key="Race Size ~ C",
  SortKey="9",
  Category="Racial Size",
  Conditions={
    function (character, item, sources)
      return character.Facts["ABILITY"]["RaceSizeAllowed_Colossal"] == "true"
    end,
  },
  Templates={
    "SIZE_C",
  },
  Types={
    "Race Size",
  },
})
DefineAbility({
  Name="Rules ~ Preview Sheet - Use Alternative Spell Listing Method",
  Category="Internal",
  Cost=0,
  Description={
    Format="Sets the Standard Sheet to display MEMORIZED/PREPRARED Spells first.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Bool",
      },
      Variables={
        "UseAlternativeSpellListing_a",
      },
    },
  },
  Types={
    "OptionalRules",
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Save Bonus Tracker",
      },
    },
  },
})
DefineAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Poison",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Poison"] == 0))
        end,
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Poison"] == "SaveBonus_vs_Spells"))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Spells",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Spells"] == 0))
        end,
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Poison"] == "SaveBonus_vs_Spells"))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Poison and Spells",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Poison"] == 0))
        end,
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Spells"] == 0))
        end,
        function (character, item, sources)
          return (character.Variables["SaveBonus_vs_Poison"] == "SaveBonus_vs_Spells")
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Enchantments",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Enchantments"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Illusions",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Illusions"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Fear",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Fear"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Slipping and Falling",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_Slipping"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Climate (Cold)",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["FortSave_vs_ColdClimate"] >= 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Climate (Hot)",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["FortSave_vs_HotClimate"] >= 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Swarms and Vermin",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["FortSave_vs_SwarmsAndVermin"] >= 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_NegativeLevels"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Traps (Underground)",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_TrapsUnderground"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Psychic Spells",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_PsychicSpells"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Sanity Damage",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_SanityDamage"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Mind-Affecting",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_MindAffecting"] == 0))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Save Bonus Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Save Bonus",
      Nature="AUTOMATIC",
      Names={
        "Divine Spells",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.Variables["SaveBonus_vs_DivineSpells"] == 0))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Poison",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. poison",
      Arguments={
        "SaveBonus_vs_Poison",
      },
    },
  },
})
DefineAbility({
  Name="Spells",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. spells and spell-like abilities",
      Arguments={
        "SaveBonus_vs_Spells",
      },
    },
  },
})
DefineAbility({
  Name="Poison and Spells",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. poison, spells, and spell-like abilities",
      Arguments={
        "max(SaveBonus_vs_Poison,SaveBonus_vs_Spells)",
      },
    },
  },
})
DefineAbility({
  Name="Enchantments",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. enchantments",
      Arguments={
        "SaveBonus_vs_Enchantments",
      },
    },
  },
})
DefineAbility({
  Name="Illusions",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. illusions",
      Arguments={
        "SaveBonus_vs_Illusions",
      },
    },
  },
})
DefineAbility({
  Name="Fear",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. fear",
      Arguments={
        "SaveBonus_vs_Fear",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["SaveBonus_vs_Fear"] >= 1)
        end,
      },
    },
    {
      Name="AllSaveBonus",
      FormatString="%1 vs. fear",
      Arguments={
        "SaveBonus_vs_Fear",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["SaveBonus_vs_Fear"] < 0)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Slipping and Falling",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 to avoid slipping and falling",
      Arguments={
        "SaveBonus_vs_Slipping",
      },
    },
  },
})
DefineAbility({
  Name="Climate (Cold)",
  Category="Save Bonus",
  Aspects={
    {
      Name="FortSaveBonus",
      FormatString="+%1 vs. cold climate",
      Arguments={
        "FortSave_vs_ColdClimate",
      },
    },
  },
})
DefineAbility({
  Name="Climate (Hot)",
  Category="Save Bonus",
  Aspects={
    {
      Name="FortSaveBonus",
      FormatString="+%1 vs. hot climate",
      Arguments={
        "FortSave_vs_HotClimate",
      },
    },
  },
})
DefineAbility({
  Name="Swarms and Vermin",
  Category="Save Bonus",
  Aspects={
    {
      Name="FortSaveBonus",
      FormatString="+%1 vs. poison and distraction ability of swarms and vermin",
      Arguments={
        "FortSave_vs_SwarmsAndVermin",
      },
    },
  },
})
DefineAbility({
  Name="Negative Levels",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 to remove negative levels",
      Arguments={
        "SaveBonus_vs_NegativeLevels",
      },
    },
  },
})
DefineAbility({
  Name="Traps (Underground)",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. traps and hazards when underground",
      Arguments={
        "SaveBonus_vs_TrapsUnderground",
      },
    },
  },
})
DefineAbility({
  Name="Psychic Spells",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. psychic spells and spell-like abilities",
      Arguments={
        "SaveBonus_vs_PsychicSpells",
      },
    },
  },
})
DefineAbility({
  Name="Sanity Damage",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. sanity damage",
      Arguments={
        "SaveBonus_vs_SanityDamage",
      },
    },
  },
})
DefineAbility({
  Name="Mind-Affecting",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. mind-affecting effects",
      Arguments={
        "SaveBonus_vs_MindAffecting",
      },
    },
  },
})
DefineAbility({
  Name="Divine Spells",
  Category="Save Bonus",
  Aspects={
    {
      Name="AllSaveBonus",
      FormatString="+%1 vs. divine spells and spell-like abilities",
      Arguments={
        "SaveBonus_vs_DivineSpells",
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "No Intelligence Score",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoIntelligenceSetTrue"] == 1)
        end,
      },
    },
  },
})
DefineAbility({
  Name="No Intelligence Score",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Grant Intelligence",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "NoIntelligenceSetTrue",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "Mindless",
      },
    },
  },
  Types={
    "OptionalRules",
    "Misc",
  },
})
DefineAbility({
  Name="Grant Standard Feat Progression",
  Category="Internal",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1+(TL/3)"),
      Variables={
        "FEAT",
      },
    },
  },
  Types={
    "OptionalRules",
    "Misc",
  },
})
