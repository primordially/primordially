-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_classes_companion.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineClass({
  Name="Companion",
  IntModToSkills=false,
  DisplayName="Animal",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
  },
  Facts={
    ClassType="Companion",
    Abb="AC",
  },
  SourcePage="p.52",
  ClassSkills={
    "Acrobatics",
    "Climb",
    "Fly",
    "Perception",
    "Stealth",
    "Swim",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Animal Companion Feat",
      },
      Formula=Formula("(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2"),
      Conditions={
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")*3/4"),
      Type={
        Name="Base",
        Replace=true,
        Stack=false,
      },
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")/2+2"),
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")/3"),
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "CompanionClassLevel",
      },
      Formula=Formula("CL"),
    },
    {
      Category="VAR",
      Variables={
        "AnimalCompanionSkill",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["INTSCORE"] < 3)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BaseClassSkillPts",
      },
      Formula=Formula("MAX(1,2+INT)"),
      Conditions={
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  Types={
    "Monster",
    "Companion",
  },
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel="0+BaseClassSkillPts",
  Visible=false,
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Variables={
            "FEAT",
          },
          Formula=Formula("-1"),
        },
      },
    },
  },
})
