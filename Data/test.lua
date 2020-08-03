SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineClass({
  Name="Barbarian",
  Definitions={
    {
      Name="BarbarianLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BarbarianLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.31",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return not (character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE")
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Barbarian"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=12,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  ExClass="Ex-Barbarian",
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Brb",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Barbarian",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Ex-Barbarian",
  Definitions={
    {
      Name="BarbarianLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BarbarianLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  HitDie=12,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  Visible=false,
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Brb",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Barbarian",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Bard",
  SpellStat="CHA",
  Definitions={
    {
      Name="BardLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLBard",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BardLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Bard",
      },
      Formula="Caster_Level_Bard-CasterLevelBLBard",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Bard",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLBard",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Bard",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Bard\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Arcane",
      },
      Formula="Caster_Level_Bard",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Total__Arcane",
      },
      Formula="Caster_Level_Bard",
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Bard",
      },
      Formula="Caster_Level_BL_Stripped_Bard",
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.34",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=6,
  Memorize=false,
  Roles={
    "Skill",
  },
  Types={
    "Base",
    "PC",
    "SpontaneousArcane",
    "Spontaneous",
  },
  Facts={
    ClassType="PC",
    Abb="Brd",
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      SpellsPerDay={
        0, 1, },
      SpellsKnown={
        4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      SpellsPerDay={
        0, 2, },
      SpellsKnown={
        5, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      SpellsPerDay={
        0, 3, },
      SpellsKnown={
        6, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 3, 1, },
      SpellsKnown={
        6, 4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 4, 2, },
      SpellsKnown={
        6, 4, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 4, 3, },
      SpellsKnown={
        6, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 4, 3, 1, },
      SpellsKnown={
        6, 5, 4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 4, 4, 2, },
      SpellsKnown={
        6, 5, 4, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 5, 4, 3, },
      SpellsKnown={
        6, 5, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 5, 4, 3, 1, },
      SpellsKnown={
        6, 5, 5, 4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 5, 4, 4, 2, },
      SpellsKnown={
        6, 6, 5, 4, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 5, 5, 4, 3, },
      SpellsKnown={
        6, 6, 5, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 5, 5, 4, 3, 1, },
      SpellsKnown={
        6, 6, 5, 5, 4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 5, 5, 4, 4, 2, },
      SpellsKnown={
        6, 6, 6, 5, 4, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 5, 5, 5, 4, 3, },
      SpellsKnown={
        6, 6, 6, 5, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 5, 5, 5, 4, 3, 1, },
      SpellsKnown={
        6, 6, 6, 5, 5, 4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 5, 5, 5, 4, 4, 2, },
      SpellsKnown={
        6, 6, 6, 6, 5, 4, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 5, 5, 5, 5, 4, 3, },
      SpellsKnown={
        6, 6, 6, 6, 5, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 5, 5, 5, 5, 5, 4, },
      SpellsKnown={
        6, 6, 6, 6, 5, 5, 4, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 5, 5, 5, 5, 5, 5, },
      SpellsKnown={
        6, 6, 6, 6, 6, 5, 5, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Bard",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Bardic Knowledge",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_BardicKnowledge"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Bardic Countersong",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_CounterSong"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Bardic Performance",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_BardicPerformance"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Armored Casting",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_ArmoredCasting"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Cantrips",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_Cantrips"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Versatile Performance",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_VersatilePerformance"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Well-Versed",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_WellVersed"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Lore Master",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_LoreMaster"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Bard Class Feature",
          Nature="AUTOMATIC",
          Name="Bard ~ Jack of All Trades",
          Conditions={
            function (character)
              return (character.Variables["Bard_CF_JackOfAllTrades"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Cleric",
  SpellStat="WIS",
  Definitions={
    {
      Name="ClericLVL",
      InitialValue=0,
    },
    {
      Name="ClericDomainCount",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLCleric",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="DOMAIN",
      Variables={
        "NUMBER",
      },
      Formula="ClericDomainCount",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClericLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "DomainLVL",
      },
      Formula="ClericLVL",
    },
    {
      Category="VAR",
      Variables={
        "ClericDomainCount",
      },
      Formula="2",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Cleric",
      },
      Formula="Caster_Level_Cleric-CasterLevelBLCleric",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Cleric",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLCleric",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Cleric",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Cleric\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Cleric",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Cleric",
      },
      Formula="Caster_Level_BL_Stripped_Cleric",
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.38",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  BonusLanguages={
    {
      Name="Abyssal",
    },
    {
      Name="Celestial",
    },
    {
      Name="Infernal",
    },
  },
  Roles={
    "Cleric",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Clr",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
  },
  Levels={
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Good",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Good"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Evil",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Evil"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Lawful",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Lawful"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Chaotic",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Chaotic"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Cleric",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Cleric ~ Weapon and Armor Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Cleric Class Feature",
          Nature="AUTOMATIC",
          Name="Cleric ~ Aura",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Cleric Class Feature",
          Nature="AUTOMATIC",
          Name="Cleric ~ Channel Energy",
          Conditions={
            function (character)
              return (character.Variables["Cleric_CF_ChannelEnergy"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Cleric Class Feature",
          Nature="AUTOMATIC",
          Name="Cleric ~ Orisons",
          Conditions={
            function (character)
              return (character.Variables["Cleric_CF_Orisons"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Cleric Class Feature",
          Nature="AUTOMATIC",
          Name="Cleric ~ Spontaneous Casting",
          Conditions={
            function (character)
              return (character.Variables["Cleric_CF_SpontaneousCasting"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Cleric Class Feature",
          Nature="AUTOMATIC",
          Name="Cleric ~ Domains",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="Start=1,Repeat=1",
      Definitions={
        {
          Name="ClericSkillPts",
          InitialValue=0,
        },
      },
      Bonuses={
        {
          Category="SKILLPOOL",
          Variables={
            "NUMBER",
          },
          Formula="ClericSkillPts",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      SpellsPerDay={
        4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      SpellsPerDay={
        4, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 3, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Druid",
  SpellStat="WIS",
  Definitions={
    {
      Name="DruidLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLDruid",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DruidLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Druid",
      },
      Formula="Caster_Level_Druid-CasterLevelBLDruid",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Druid",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLDruid",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Druid",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Druid\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Druid",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Druid",
      },
      Formula="Caster_Level_BL_Stripped_Druid",
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.48",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "NG" or character.Alignment == "LN" or character.Alignment == "TN" or character.Alignment == "CN" or character.Alignment == "NE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Druid"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  BonusLanguages={
    {
      Name="Sylvan",
    },
  },
  Roles={
    "Druid",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Drd",
    SpellType="Divine",
  },
  AutomaticLanguages={
    {
      Name="Druidic",
    },
  },
  AutomaticKnownSpells={
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Druid",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Good",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Good"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Evil",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Evil"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Lawful",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Lawful"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Chaotic",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Chaotic"] == 1)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Orisons",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Spontaneous Casting",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_SpontaneousCasting"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Nature Sense",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_NatureSense"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Wild Empathy",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_WildEmpathy"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Nature Bond",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_NatureBond"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Woodland Stride",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_WoodlandStride"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Trackless Step",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_TracklessStep"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Wild Shape",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_WildShape"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Resist Nature's Lure",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_ResistNaturesLure"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Venom Immunity",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_VenomImmunity"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ A Thousand Faces",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_AThousandFaces"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      Abilities={
        {
          Category="Druid Class Feature",
          Nature="AUTOMATIC",
          Name="Druid ~ Timeless Body",
          Conditions={
            function (character)
              return (character.Variables["Druid_CF_TimelessBody"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Air",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Air")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Animal",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Animal")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Earth",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Earth")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Fire",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Fire")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Plant",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Plant")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Water",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Water")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Weather",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Weather")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      SpellsPerDay={
        4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      SpellsPerDay={
        4, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 3, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Fighter",
  Definitions={
    {
      Name="FighterLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "FighterLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.55",
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Ftr",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Fighter",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Fighter Class Feature",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Fighter",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterWeaponProficiencies" or ability.Type == "FighterArmorProficiencies" or ability.Type == "FighterHeavyArmorProficiency" or ability.Type == "FighterMediumArmorProficiency" or ability.Type == "FighterLightArmorProficiency" or ability.Type == "FighterShieldProficiency" or ability.Type == "FighterTowerShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Weapon Prof ~ Simple",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterWeaponProficiencies")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Heavy",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterArmorProficiencies" or ability.Type == "FighterHeavyArmorProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Medium",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterArmorProficiencies" or ability.Type == "FighterMediumArmorProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Light",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterArmorProficiencies" or ability.Type == "FighterLightArmorProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Shield Prof",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterArmorProficiencies" or ability.Type == "FighterShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Shield Prof ~ Tower",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "FighterArmorProficiencies" or ability.Type == "FighterTowerShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Fighter Level Advanced Feat Tracker",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon Specialization Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Disruptive Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Greater Shield Focus Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Greater Weapon Focus Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Spellbreaker Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Greater Weapon Specialization Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Penetrating Strike Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Critical Mastery Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Greater Penetrating Strike Qualify",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Bonuses={
        {
          Category="VAR",
          Variables={
            "BraveryLVL",
          },
          Formula="FighterLVL",
          Type={
            Name="Class",
            Replace=false,
            Stack=false,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Bonuses={
        {
          Category="VAR",
          Variables={
            "ArmorTrainingLVL",
          },
          Formula="FighterLVL",
          Type={
            Name="Class",
            Replace=false,
            Stack=false,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Bonuses={
        {
          Category="VAR",
          Variables={
            "FighterWeaponTrainingLVL",
          },
          Formula="FighterLVL",
          Type={
            Name="Class",
            Replace=false,
            Stack=false,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Bonuses={
        {
          Category="VAR",
          Variables={
            "FighterWeaponQualifyLVL",
          },
          Formula="FighterLVL",
          Type={
            Name="Class",
            Replace=false,
            Stack=false,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Fighter Class Feature",
          Nature="AUTOMATIC",
          Name="Fighter ~ Bonus Feats",
          Conditions={
            function (character)
              return (character.Variables["Fighter_CF_BonusFeats"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Fighter Class Feature",
          Nature="AUTOMATIC",
          Name="Fighter ~ Bravery",
          Conditions={
            function (character)
              return (character.Variables["Fighter_CF_Bravery"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Fighter Class Feature",
          Nature="AUTOMATIC",
          Name="Fighter ~ Armor Training",
          Conditions={
            function (character)
              return (character.Variables["Fighter_CF_ArmorTraining"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Fighter Class Feature",
          Nature="AUTOMATIC",
          Name="Fighter ~ Weapon Training",
          Conditions={
            function (character)
              return (character.Variables["Fighter_CF_WeaponTraining"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      Abilities={
        {
          Category="Fighter Class Feature",
          Nature="AUTOMATIC",
          Name="Fighter ~ Armor Mastery",
          Conditions={
            function (character)
              return (character.Variables["Fighter_CF_ArmorMastery"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Variables={
            "Weapon Mastery",
          },
          Formula="1",
          Conditions={
            function (character)
              return (character.Variables["FighterWeaponMastery"] == 0)
            end,
            function (character)
              return (character.Variables["Fighter_CF_WeaponMastery"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Monk",
  Definitions={
    {
      Name="FlurryOfBlows",
      InitialValue=0,
    },
    {
      Name="MonkLVL",
      InitialValue=0,
    },
    {
      Name="KiPoolWis",
      InitialValue=0,
    },
    {
      Name="MonkFeatQualify",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "FlurryOfBlows",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "MonkLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "KiPoolWis",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "KiPool",
      },
      Formula="1",
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Monk"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  Roles={
    "None",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Mnk",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Monk",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Paladin",
  SpellStat="CHA",
  Definitions={
    {
      Name="PaladinLVL",
      InitialValue=0,
    },
    {
      Name="PaladinDomainCount",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLPaladin",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="DOMAIN",
      Variables={
        "NUMBER",
      },
      Formula="PaladinDomainCount",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PaladinLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Paladin",
      },
      Formula="Caster_Level_Paladin-CasterLevelBLPaladin",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Paladin",
      },
      Formula="CL+Caster_Level_Bonus-3+CasterLevelBLPaladin",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Paladin",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Paladin\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Paladin",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Paladin",
      },
      Formula="Caster_Level_BL_Stripped_Paladin",
      Conditions={
        function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Paladin" and level >= 4)
          end)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.60",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "LG"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Paladin"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  ExClass="Ex-Paladin",
  ItemCreationCasterLevel="CL-3",
  Roles={
    "None",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Pld",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Paladin",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Paladin",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinWeaponProficiencies" or ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyHeavy" or ability.Type == "PaladinArmorProficiencyLight" or ability.Type == "PaladinArmorProficiencyMedium" or ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinShieldProf" or ability.Type == "PaladinShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Weapon Prof ~ Simple",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinWeaponProficiencies")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Heavy",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyHeavy")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Light",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyLight")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Medium",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyMedium")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Shield Prof",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinShieldProf" or ability.Type == "PaladinShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Aura of Good",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_AuraOfGood"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Detect Evil",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_DetectEvil"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Smite Evil",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_SmiteEvil"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Divine Grace",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_DivineGrace"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Lay on Hands",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_LayOnHands"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Aura of Courage",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_AuraOfCourage"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Divine Health",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_DivineHealth"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Mercy",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_Mercy"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Channel Positive Energy",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_ChannelPositiveEnergy"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Divine Bond",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_DivineBond"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Aura of Resolve",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_AuraOfResolve"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Aura of Justice",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_AuraOfJustice"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Aura of Faith",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_AuraOfFaith"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Aura of Righteousness",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_AuraOfRighteousness"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      Abilities={
        {
          Category="Paladin Class Feature",
          Nature="AUTOMATIC",
          Name="Paladin ~ Holy Champion",
          Conditions={
            function (character)
              return (character.Variables["Paladin_CF_HolyChampion"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 1, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 1, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 2, 1, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 2, 1, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 2, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 3, 2, 1, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 3, 2, 1, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 3, 2, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 4, 3, 2, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 4, 4, 3, 3, },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Ex-Paladin",
  Definitions={
    {
      Name="PaladinLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PaladinLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Visible=false,
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="XPal",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Paladin",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Paladin",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinWeaponProficiencies" or ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyHeavy" or ability.Type == "PaladinArmorProficiencyLight" or ability.Type == "PaladinArmorProficiencyMedium" or ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinShieldProf" or ability.Type == "PaladinShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Weapon Prof ~ Simple",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinWeaponProficiencies")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Heavy",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyHeavy")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Light",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyLight")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Medium",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyMedium")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Shield Prof",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinShieldProf" or ability.Type == "PaladinShieldProficiency")
              end))
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Ranger",
  SpellStat="WIS",
  Definitions={
    {
      Name="RangerLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLRanger",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "RangerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Ranger",
      },
      Formula="Caster_Level_Ranger-CasterLevelBLRanger",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Ranger",
      },
      Formula="CL+Caster_Level_Bonus-3+CasterLevelBLRanger",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Ranger",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Ranger\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Ranger",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Ranger",
      },
      Formula="Caster_Level_Ranger",
      Conditions={
        function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Ranger" and level >= 4)
          end)
        end,
      },
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Name="Class Skills ~ Ranger",
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerClassSkills")
          end))
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.64",
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=6,
  ItemCreationCasterLevel="CL-3",
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Rgr",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Ranger",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Favored Enemy",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_FavoredEnemy"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Favored Terrain",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_FavoredTerrain"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Track",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Track"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Wild Empathy",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_WildEmpathy"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Combat Style Feat",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_CombatStyleFeat"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Hunter's Bond",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_HuntersBond"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Woodland Stride",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_WoodlandStride"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Swift Tracker",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_SwiftTracker"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Evasion",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Evasion"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Quarry",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Quarry"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Camouflage",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Camouflage"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Improved Evasion",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Evasion"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Hide in Plain Sight",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_HideInPlainSight"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Improved Quarry",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Quarry"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      Abilities={
        {
          Category="Ranger Class Feature",
          Nature="AUTOMATIC",
          Name="Ranger ~ Master Hunter",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_MasterHunter"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Endurance",
          Conditions={
            function (character)
              return (character.Variables["Ranger_CF_Endurance"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 1, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 1, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 2, 1, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 2, 1, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 2, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 3, 2, 1, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 3, 2, 1, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 3, 2, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 4, 3, 2, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 4, 4, 3, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Definitions={
        {
          Name="DisableRangerHuntersBond",
          InitialValue=0,
        },
      },
      Bonuses={
        {
          Category="VAR",
          Variables={
            "DisableRangerHuntersBond",
          },
          Formula="1",
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "RangerHuntersBond")
              end)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Rogue",
  Definitions={
    {
      Name="RogueLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "RogueLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.67",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=8,
  Roles={
    "Skill",
  },
  Types={
    "Base",
    "PC",
    "Rogue",
  },
  Facts={
    ClassType="PC",
    Abb="Rog",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Rogue",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Rogue",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Sorcerer",
  SpellStat="CHA",
  Definitions={
    {
      Name="SorcererLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLSorcerer",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "SorcererLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Sorcerer",
      },
      Formula="Caster_Level_Sorcerer-CasterLevelBLSorcerer",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Sorcerer",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLSorcerer",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Sorcerer",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Sorcerer\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Arcane",
      },
      Formula="Caster_Level_Sorcerer",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Total__Arcane",
      },
      Formula="Caster_Level_Sorcerer",
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Sorcerer",
      },
      Formula="Caster_Level_BL_Stripped_Sorcerer",
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.70",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Memorize=false,
  Roles={
    "Sorcerer",
  },
  Types={
    "Base",
    "PC",
    "SpontaneousArcane",
    "Spontaneous",
  },
  Facts={
    ClassType="PC",
    Abb="Sor",
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Sorcerer",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Sorcerer Class Feature",
          Nature="AUTOMATIC",
          Name="Sorcerer ~ Weapon and Armor Proficiency",
          Conditions={
            function (character)
              return (character.Variables["Sorcerer_CF_WeaponProficiencies"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Sorcerer Class Feature",
          Nature="AUTOMATIC",
          Name="Sorcerer ~ Spells",
          Conditions={
            function (character)
              return (character.Variables["Sorcerer_CF_Spells"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Sorcerer Class Feature",
          Nature="AUTOMATIC",
          Name="Sorcerer ~ Standard Bloodline",
          Conditions={
            function (character)
              return (character.Variables["Sorcerer_CF_Bloodline"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Sorcerer Class Feature",
          Nature="AUTOMATIC",
          Name="Sorcerer ~ Cantrips",
          Conditions={
            function (character)
              return (character.Variables["Sorcerer_CF_Cantrips"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Sorcerer Class Feature",
          Nature="AUTOMATIC",
          Name="Sorcerer ~ Eschew Materials",
          Conditions={
            function (character)
              return (character.Variables["Sorcerer_CF_EschewMaterials"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellsPerDay={
        0, 3, },
      SpellsKnown={
        4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      SpellsPerDay={
        0, 4, },
      SpellsKnown={
        5, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      SpellsPerDay={
        0, 5, },
      SpellsKnown={
        5, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 6, 3, },
      SpellsKnown={
        6, 3, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 6, 4, },
      SpellsKnown={
        6, 4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 6, 5, 3, },
      SpellsKnown={
        7, 4, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 6, 6, 4, },
      SpellsKnown={
        7, 5, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 6, 6, 5, 3, },
      SpellsKnown={
        8, 5, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 6, 6, 6, 4, },
      SpellsKnown={
        8, 5, 4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 6, 6, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 3, 3, },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Wizard",
  SpellStat="INT",
  Definitions={
    {
      Name="DisallowWizardArcaneSchoolArchetype",
      InitialValue=0,
    },
    {
      Name="WizardLVL",
      InitialValue=0,
    },
    {
      Name="SpellMasteryQualify",
      InitialValue=0,
    },
    {
      Name="Caster_Level_BL_Stripped_Wizard",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLWizard",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "WizardLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "SpellMasteryQualify",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Wizard",
      },
      Formula="Caster_Level_Wizard-CasterLevelBLWizard",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Wizard",
      },
      Formula="WizardLVL+Caster_Level_Bonus+CasterLevelBLWizard",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Wizard",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Wizard\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Arcane",
      },
      Formula="Caster_Level_Wizard",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Total__Arcane",
      },
      Formula="Caster_Level_Wizard",
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Wizard",
      },
      Formula="Caster_Level_BL_Stripped_Wizard",
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.77",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  AllowBaseClass=false,
  Spellbook=true,
  Roles={
    "Wizard",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Wiz",
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Wizard",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Class Skills",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ClassSkills"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Weapon and Armor Proficiency",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_WeaponProficiencies"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Spells",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_Spells"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Bonus Languages",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_BonusLanguages"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Arcane Bond",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneBond"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Arcane School",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Cantrips",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_Cantrips"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Scribe Scroll",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ScribeScroll"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Bonus Feats",
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_BonusFeats"] == 0)
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Wizard Class Feature",
          Nature="AUTOMATIC",
          Name="Wizard ~ Spellbooks",
          Conditions={
            function (character)
              local count = 0
              local subCondition
              subCondition = function (character)
                local count = 0
                local subCondition
                subCondition = function (character)
                  return character.Level <= 0
                end
                if subCondition(character) then
                  count = count + 1
                end
                subCondition = function (character)
                  return 1 <= #filter(ipairs(character.ClassLevels),
                  function (class, level)
                    return (class == "Wizard" and level >= 1)
                  end)
                end
                if subCondition(character) then
                  count = count + 1
                end
                return count >= 2
              end
              if subCondition(character) then
                count = count + 1
              end
              subCondition = function (character)
                local count = 0
                local subCondition
                subCondition = function (character)
                  return not (1 <= #filter(ipairs(character.ClassLevels),
                  function (class, level)
                    return (ClassIsType(class, "Base") and level >= 0)
                  end))
                end
                if subCondition(character) then
                  count = count + 1
                end
                subCondition = function (character)
                  return 1 <= #filter(ipairs(character.ClassLevels),
                  function (class, level)
                    return (class == "Wizard" and level >= 1)
                  end)
                end
                if subCondition(character) then
                  count = count + 1
                end
                return count >= 2
              end
              if subCondition(character) then
                count = count + 1
              end
              subCondition = function (character)
                return (character.Variables["Wizard_CF_SpellBook"] == 0)
              end
              if subCondition(character) then
                count = count + 1
              end
              return count >= 1
            end,
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      SpellsPerDay={
        4, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      SpellsPerDay={
        4, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        4, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 3, 3, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, },
      WeaponBonusProficiencySelections={
      },
    },
  },
  SubClasses={
    {
      Choice={
        Kind="SCHOOL",
        Value="Abjuration",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Abjuration School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Abjurer",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Conjuration",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Conjuration School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Conjurer",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Divination",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Divination School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Diviner",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Enchantment",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Enchantment School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Enchanter",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Evocation",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Evocation School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Evoker",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Illusion",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Illusion School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Illusionist",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Necromancy",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Necromancy School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Necromancer",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Transmutation",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Transmutation School",
            },
          },
          WeaponBonusProficiencySelections={
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Transmuter",
      WeaponBonusProficiencySelections={
      },
    },
    {
      Choice={
        Kind="",
        Value="",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Universal School",
              Conditions={
                function (character)
                  return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
                end,
                function (character)
                  return (character.Variables["DisallowWizardArcaneSchoolArchetype"] == 0)
                end,
              },
            },
          },
          WeaponBonusProficiencySelections={
          },
        },
      },
      Name="Universalist",
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Arcane Archer",
  Definitions={
    {
      Name="ArcaneArcherLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArcaneArcherLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Perception",
    "Ride",
    "Stealth",
    "Survival",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.374",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot" or ability.Name == "Precise Shot")
      end)
    end,
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus (Longbow)" or ability.Name == "Weapon Focus (Shortbow)")
      end)
    end,
    function (character)
      return (character.SpellCount("Arcane", 1)) >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  HitDie=10,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Arc",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Martial Weapon Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Armor Proficiency (Medium)",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Shield Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Archer ~ Enhance Arrow",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Archer ~ Imbue Arrow",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Archer ~ Seeker Arrow",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Archer ~ Phase Arrow",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Archer ~ Hail of Arrows",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Archer ~ Arrow of Death",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Arcane Trickster",
  Definitions={
    {
      Name="ArcaneTricksterLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArcaneTricksterLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Appraise",
    "Bluff",
    "Climb",
    "Diplomacy",
    "Disable Device",
    "Disguise",
    "Escape Artist",
    "TYPE=Knowledge",
    "Perception",
    "Sense Motive",
    "Sleight of Hand",
    "Spellcraft",
    "Stealth",
    "Swim",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.376",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "NG" or character.Alignment == "TN" or character.Alignment == "NE" or character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Arcane_Trickster"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return ((character.BestSkillOfType("Disable Device").ranks >= 4 and 1 or 0) + (character.BestSkillOfType("Escape Artist").ranks >= 4 and 1 or 0) + (character.BestSkillOfType("Knowledge (Arcana)").ranks >= 4 and 1 or 0)) >= 3
    end,
    function (character)
      return (character.HasSpell("Mage Hand") and 1 or 0) >= 1
    end,
    function (character)
      return (character.SpellCount("Arcane", 2)) >= 1
    end,
    function (character)
      return (character.Variables["SneakAttackDice"] >= 2)
    end,
  },
  HitDie=6,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Art",
  },
  Levels={
    {
      Level="1",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Arcane Trickster",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Trickster ~ Ranged Legerdemain",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Trickster ~ Sneak Attack",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Trickster ~ Impromptu Sneak Attack",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Trickster ~ Tricky Spells",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Trickster ~ Invisible Thief",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Trickster ~ Surprise Spells",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Assassin",
  Definitions={
    {
      Name="AssassinLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "AssassinLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Bluff",
    "Climb",
    "Diplomacy",
    "Disable Device",
    "Disguise",
    "Escape Artist",
    "Intimidate",
    "Linguistics",
    "Perception",
    "Sense Motive",
    "Sleight of Hand",
    "Stealth",
    "Swim",
    "Use Magic Device",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.378",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Assassin"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return ((character.BestSkillOfType("Disguise").ranks >= 2 and 1 or 0) + (character.BestSkillOfType("Stealth").ranks >= 5 and 1 or 0)) >= 2
    end,
  },
  HitDie=8,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Asn",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Assassin",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Weapon and Armor Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Sneak Attack",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Uncanny Dodge",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ True Death",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Quiet Death",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Hide in Plain Sight",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Swift Death",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Assassin Class Feature",
          Nature="AUTOMATIC",
          Name="Assassin ~ Angel of Death",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Dragon Disciple",
  Definitions={
    {
      Name="DragonDiscipleLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DragonDiscipleLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Diplomacy",
    "Escape Artist",
    "Fly",
    "TYPE=Knowledge",
    "Perception",
    "Spellcraft",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.380",
  Conditions={
    function (character)
      return (#filter(character.Languages, function (lang)
      if lang.Name == "Draconic" then return true end
       end)) >= 1
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Facts["ABILITIES"]["QualifiedForDragonDisciple"] == "true"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return any(character.Classes, function (class) return class.Memorize == false end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return any(character.Classes, function (class) return contains(class.Types, "Arcane") end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return not (1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Sorcerer" and level >= 1)
          end))
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Sorcerer" and level >= 1)
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Sorcerer Bloodline ~ Draconic")
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return not (((any(character.Race.RaceTypes, function (type) stringMatch(type, "Dragon") end) and 1 or 0)) >= 1)
    end,
    function (character)
      return ((character.BestSkillOfType("Knowledge (Arcana)").ranks >= 5 and 1 or 0)) >= 1
    end,
    function (character)
      return not (((any(character.Templates, function (template) return stringMatch(template.Name, "Half Dragon") end) and 1 or 0)) >= 1)
    end,
  },
  HitDie=12,
  MaxLevel=10,
  SkillPointsPerLevel=2,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="DrD",
  },
  Levels={
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Weapon and Armor Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Spells per Day",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Natural Armor Increase",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Bloodline Feat",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Breath Weapon",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Blindsense",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Dragon Form",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      Abilities={
        {
          Category="Dragon Disciple Class Feature",
          Nature="AUTOMATIC",
          Name="Dragon Disciple ~ Wings",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Duelist",
  Definitions={
    {
      Name="DuelistLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DuelistLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Bluff",
    "Escape Artist",
    "Perception",
    "TYPE=Perform",
    "Sense Motive",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.382",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge" or ability.Name == "Mobility" or ability.Name == "Weapon Finesse")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Acrobatics").ranks >= 2 and 1 or 0) + (character.Skill("(547,100): Perform").ranks >= 2 and 1 or 0)) >= 2
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  HitDie=10,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Dul",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Weapon and Armor Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Precise Strike",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Parry",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Enhanced Mobility",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Grace",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Riposte",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Acrobatic Charge",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Elaborate Defense",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ No Retreat",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Duelist Class Feature",
          Nature="AUTOMATIC",
          Name="Duelist ~ Crippling Critical",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Eldritch Knight",
  Definitions={
    {
      Name="EldritchKnightLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "EldritchKnightLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Climb",
    "Knowledge (Arcana)",
    "Knowledge (Nobility)",
    "Linguistics",
    "Ride",
    "Sense Motive",
    "Spellcraft",
    "Swim",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.384",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Internal" and (ability.Name == "Weapon Prof ~ Martial")
      end)
    end,
    function (character)
      return (character.SpellCount("Arcane", 3)) >= 1
    end,
  },
  HitDie=10,
  MaxLevel=10,
  SkillPointsPerLevel=2,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Elk",
  },
  Levels={
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Eldritch Knight Class Feature",
          Nature="AUTOMATIC",
          Name="Eldritch Knight ~ Diverse Training",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Eldritch Knight Class Feature",
          Nature="AUTOMATIC",
          Name="Eldritch Knight ~ Spell Critical",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Loremaster",
  Definitions={
    {
      Name="LoremasterLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "LoremasterLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Appraise",
    "Diplomacy",
    "Handle Animal",
    "Heal",
    "TYPE=Knowledge",
    "Linguistics",
    "TYPE=Perform",
    "Spellcraft",
    "Use Magic Device",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.385",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge%)")
      end)
    end,
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "TYPE=Metamagic" or ability.Name == "TYPE=ItemCreation")
      end)
    end,
    function (character)
      return ((character.Skill("(588,145): Knowledge").ranks >= 7 and 1 or 0) + (character.Skill("(588,162): Knowledge").ranks >= 7 and 1 or 0)) >= 2
    end,
    function (character)
      return ((#filter(character.SpellsKnown, function (spell) return spell.School == "Divination" and spell.Level >= 3 end))) >= 1
    end,
    function (character)
      return ((#filter(character.SpellsKnown, function (spell) return spell.School == "Divination" and spell.Level >= 0 end))) >= 7
    end,
  },
  HitDie=6,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Lor",
  },
  Levels={
    {
      Level="1",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Loremaster Class Feature",
          Nature="AUTOMATIC",
          Name="Loremaster ~ Secret Lore",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Loremaster Class Feature",
          Nature="AUTOMATIC",
          Name="Loremaster ~ Lore",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      Abilities={
        {
          Category="Loremaster Class Feature",
          Nature="AUTOMATIC",
          Name="Loremaster ~ Greater Lore",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Loremaster Class Feature",
          Nature="AUTOMATIC",
          Name="Loremaster ~ True Lore",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Mystic Theurge",
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Knowledge (Arcana)",
    "Knowledge (Religion)",
    "Sense Motive",
    "Spellcraft",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.387",
  Conditions={
    function (character)
      return ((character.BestSkillOfType("Knowledge (Arcana)").ranks >= 3 and 1 or 0) + (character.BestSkillOfType("Knowledge (Religion)").ranks >= 3 and 1 or 0)) >= 2
    end,
    function (character)
      return (character.SpellCount("Divine", 2)) >= 1
    end,
    function (character)
      return (character.SpellCount("Arcane", 2)) >= 1
    end,
  },
  HitDie=6,
  MaxLevel=10,
  SkillPointsPerLevel=2,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Myt",
  },
  Levels={
    {
      Level="1",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Mystic Theurge Class Feature",
          Nature="AUTOMATIC",
          Name="Mystic Theurge ~ Combined Spells",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Mystic Theurge Class Feature",
          Nature="AUTOMATIC",
          Name="Mystic Theurge ~ Spell Synthesis",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Pathfinder Chronicler",
  Definitions={
    {
      Name="PathfinderChroniclerLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Fortitude",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PathfinderChroniclerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Appraise",
    "Bluff",
    "Diplomacy",
    "Disguise",
    "Escape Artist",
    "Intimidate",
    "TYPE=Knowledge",
    "Linguistics",
    "Perception",
    "TYPE=Perform",
    "Ride",
    "Sense Motive",
    "Sleight of Hand",
    "Survival",
    "Use Magic Device",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.388",
  Conditions={
    function (character)
      return ((character.BestSkillOfType("Linguistics").ranks >= 3 and 1 or 0) + (character.BestSkillOfType("Perform (Oratory)").ranks >= 5 and 1 or 0) + (character.BestSkillOfType("Profession (Scribe)").ranks >= 5 and 1 or 0)) >= 3
    end,
  },
  HitDie=8,
  MaxLevel=10,
  SkillPointsPerLevel=8,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="PfC",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Master Scribe",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Pathfinding",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Improved Aid",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Epic Tales",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Whispering Campaign",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Inspire Action",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Call down the Legends",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Greater Epic Tales",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Pathfinder Chronicler Class Feature",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler ~ Lay of the Exalted Dead",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Shadowdancer",
  Definitions={
    {
      Name="ShadowdancerLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShadowdancerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Bluff",
    "Diplomacy",
    "Disguise",
    "Escape Artist",
    "Perception",
    "TYPE=Perform",
    "Sleight of Hand",
    "Stealth",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.391",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Reflexes" or ability.Name == "Dodge" or ability.Name == "Mobility")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Stealth").ranks >= 5 and 1 or 0) + (character.BestSkillOfType("Perform (Dance)").ranks >= 2 and 1 or 0)) >= 2
    end,
  },
  HitDie=8,
  MaxLevel=10,
  SkillPointsPerLevel=6,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Shd",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Weapon and Armor Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Hide in Plain Sight",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Darkvision",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Evasion",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Uncanny Dodge",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Summon Shadow",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Shadow Jump",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Defensive Roll",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Slippery Mind",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Shadow Power",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      Abilities={
        {
          Category="Shadowdancer Class Feature",
          Nature="AUTOMATIC",
          Name="Shadowdancer ~ Shadow Master",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Adept",
  SpellStat="WIS",
  SpellListChoiceCount="1",
  SpellListChoices={
    "Adept",
  },
  Definitions={
    {
      Name="AdeptLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLAdept",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "AdeptLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Adept",
      },
      Formula="Caster_Level_Adept-CasterLevelBLAdept",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Adept",
      },
      Formula="AdeptLVL+Caster_Level_Bonus+CasterLevelBLAdept",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Adept",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Adept\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Adept",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Adept",
      },
      Formula="Caster_Level_BL_Stripped_Adept",
    },
  },
  ClassSkills={
    "TYPE=Craft",
    "Handle Animal",
    "Heal",
    "TYPE=Knowledge",
    "TYPE=Profession",
    "Spellcraft",
    "Survival",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.448",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Adp",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
    "PCSharpGen.LstToLua.KnownSpell",
  },
  Levels={
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=0,
              Spells={
                "Create Water",
                "Detect Magic",
                "Ghost Sound",
                "Guidance",
                "Light",
                "Mending",
                "Purify Food and Drink",
                "Read Magic",
                "Stabilize",
                "Touch of Fatigue",
              },
            },
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=1,
              Spells={
                "Bless",
                "Burning Hands",
                "Cause Fear",
                "Command",
                "Comprehend Languages",
                "Cure Light Wounds",
                "Detect Chaos",
                "Detect Evil",
                "Detect Good",
                "Detect Law",
                "Endure Elements",
                "Obscuring Mist",
                "Protection from Chaos",
                "Protection from Evil",
                "Protection from Good",
                "Protection from Law",
                "Sleep",
              },
            },
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=2,
              Spells={
                "Aid",
                "Animal Trance",
                "Bear's Endurance",
                "Bull's Strength",
                "Cat's Grace",
                "Cure Moderate Wounds",
                "Darkness",
                "Delay Poison",
                "Invisibility",
                "Mirror Image",
                "Resist Energy",
                "Scorching Ray",
                "See Invisibility",
                "Web",
              },
            },
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=3,
              Spells={
                "Animate Dead",
                "Bestow Curse",
                "Contagion",
                "Continual Flame",
                "Cure Serious Wounds",
                "Daylight",
                "Deeper Darkness",
                "Lightning Bolt",
                "Neutralize Poison",
                "Remove Curse",
                "Remove Disease",
                "Tongues",
              },
            },
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=4,
              Spells={
                "Cure Critical Wounds",
                "Minor Creation",
                "Polymorph",
                "Restoration",
                "Stoneskin",
                "Wall of Fire",
              },
            },
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=5,
              Spells={
                "Baleful Polymorph",
                "Break Enchantment",
                "Commune",
                "Heal",
                "Major Creation",
                "Raise Dead",
                "True Seeing",
                "Wall of Stone",
              },
            },
          },
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Automatic Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="2",
      SpellsPerDay={
        3, 1, },
      Bonuses={
        {
          Category="VAR",
          Variables={
            "FamiliarMasterLVL",
          },
          Formula="CL",
        },
      },
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Bond ~ Familiar",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="3",
      SpellsPerDay={
        3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="4",
      SpellsPerDay={
        3, 2, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="5",
      SpellsPerDay={
        3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="6",
      SpellsPerDay={
        3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="7",
      SpellsPerDay={
        3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="8",
      SpellsPerDay={
        3, 3, 2, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="9",
      SpellsPerDay={
        3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="10",
      SpellsPerDay={
        3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="11",
      SpellsPerDay={
        3, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="12",
      SpellsPerDay={
        3, 3, 3, 2, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="13",
      SpellsPerDay={
        3, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="14",
      SpellsPerDay={
        3, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="15",
      SpellsPerDay={
        3, 3, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="16",
      SpellsPerDay={
        3, 3, 3, 3, 2, 0, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="17",
      SpellsPerDay={
        3, 3, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="18",
      SpellsPerDay={
        3, 3, 3, 3, 2, 1, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="19",
      SpellsPerDay={
        3, 3, 3, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="20",
      SpellsPerDay={
        3, 3, 3, 3, 3, 2, },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Aristocrat",
  Definitions={
    {
      Name="AristocratLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "AristocratLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Appraise",
    "Bluff",
    "TYPE=Craft",
    "Diplomacy",
    "Disguise",
    "Handle Animal",
    "Intimidate",
    "TYPE=Knowledge",
    "Linguistics",
    "Perception",
    "TYPE=Perform",
    "TYPE=Profession",
    "Ride",
    "Sense Motive",
    "Swim",
    "Survival",
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.449",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Ari",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Martial Weapon Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Armor Proficiency (Medium)",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Tower Shield Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Commoner",
  Definitions={
    {
      Name="CommonerLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "CommonerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Climb",
    "TYPE=Craft",
    "Handle Animal",
    "Perception",
    "TYPE=Profession",
    "Ride",
    "Swim",
  },
  WeaponBonusProficiencySelections={
    {
      "TYPE=Simple", 
    }},
  SourcePage="p.449",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Com",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Commoner",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
DefineClass({
  Name="Expert",
  Definitions={
    {
      Name="ExpertLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ExpertLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  WeaponBonusProficiencySelections={
  },
  SourcePage="p.450",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=6,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Exp",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Automatic Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Armor Proficiency (Light)",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
    {
      Level="1",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Variables={
            "Expert Class Skills",
          },
          Formula="10",
        },
      },
      WeaponBonusProficiencySelections={
      },
    },
  },
})
