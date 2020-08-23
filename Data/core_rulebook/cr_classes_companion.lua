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
  DisplayName="Animal",
  HitDie=8,
  IntModToSkills=false,
  MaxLevel=20,
  SkillPointsPerLevel=Formula("0+BaseClassSkillPts"),
  SourcePage="p.52",
  Visible=false,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2"),
      Conditions={
        function (character, item, sources)
          return not ((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end)))
        end,
      },
      Variables={
        "Animal Companion Feat",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")*3/4"),
      Type={
        Name="Base",
        Replace=true,
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
      Variables={
        "BASEAB",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")/2+2"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")/3"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
      Variables={
        "BASE.Will",
      },
    },
    {
      Category="VAR",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
      Variables={
        "ClassBABModerate",
      },
    },
    {
      Category="VAR",
      Formula=Formula("CL"),
      Variables={
        "CompanionClassLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["INTSCORE"] < 3)
        end,
      },
      Variables={
        "AnimalCompanionSkill",
      },
    },
    {
      Category="VAR",
      Formula=Formula("MAX(1,2+INT)"),
      Conditions={
        function (character, item, sources)
          return not ((any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end)))
        end,
      },
      Variables={
        "BaseClassSkillPts",
      },
    },
    {
      Category="VAR",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
      Variables={
        "ClassSaveGood_Fortitude",
      },
    },
    {
      Category="VAR",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
      Variables={
        "ClassSaveGood_Reflex",
      },
    },
    {
      Category="VAR",
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
      Variables={
        "ClassSavePoor_Will",
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Climb",
    "Fly",
    "Perception",
    "Stealth",
    "Swim",
  },
  Types={
    "Monster",
    "Companion",
  },
  Facts={
    ClassType="Companion",
    Abb="AC",
  },
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Formula=Formula("-1"),
          Variables={
            "FEAT",
          },
        },
      },
    },
  },
})
