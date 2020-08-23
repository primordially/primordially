-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_classes_race.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineClass({
  Name="Aberration",
  HitDie=10,
  IntModToSkills=false,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("0+BaseClassSkillPts"),
  SourcePage="p.307",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Aberration Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Construct Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
      Variables={
        "ClassSavePoor_Fortitude",
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
        "ClassSavePoor_Reflex",
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
        "ClassSaveGood_Will",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
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
    {
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
        "ClassBABFull",
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
        "ClassSavePoor_Fortitude",
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
        "ClassSavePoor_Reflex",
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
    "Escape Artist",
    "Fly",
    "Intimidate",
    "TYPE=Knowledge",
    "Perception",
    "Spellcraft",
    "Stealth",
    "Survival",
    "Swim",
    "Acrobatics",
    "Climb",
    "Fly",
    "Perception",
    "Stealth",
    "Swim",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Aberration")
    end,
    function (character, item, sources)
      return character.Race.IsType("Animal")
    end,
    function (character, item, sources)
      return character.Race.IsType("Construct")
    end,
  },
  Templates={
    "Construct",
  },
  Types={
    "Monster",
    "Monster",
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Formula=Formula("-1"),
          Conditions={
            function (character, item, sources)
              return (any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end))
            end,
          },
          Variables={
            "FEAT",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Dragon",
  DisplayName="Humanoid",
  HitDie=8,
  IntModToSkills=false,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("0+BaseClassSkillPts"),
  SourcePage="p.308",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Dragon Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Fey Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Humanoid Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Humanoid Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Humanoid Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Magical Beast Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Monstrous Humanoid Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ooze Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
        "ClassBABFull",
      },
    },
    {
      Category="VAR",
      Formula=Formula("CL"),
      Variables={
        "DragonLVL",
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
        "ClassSaveGood_Will",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel()/2"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
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
        "ClassBABPoor",
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
        "ClassSavePoor_Fortitude",
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
        "ClassSaveGood_Will",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Reflex",
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
        "ClassSavePoor_Reflex",
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
    {
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Reflex",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
      Variables={
        "ClassSavePoor_Fortitude",
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
    {
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
      Formula=Formula("classlevel(\"APPLIEDAS=NONEPIC\")"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
      Variables={
        "ClassSavePoor_Fortitude",
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
        "ClassSavePoor_Reflex",
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
        "ClassSaveGood_Will",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
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
        "ClassBABFull",
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
    {
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
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
        "ClassBABFull",
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
        "ClassSavePoor_Fortitude",
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
        "ClassSaveGood_Will",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
        "ClassSavePoor_Fortitude",
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
        "ClassSavePoor_Reflex",
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
    "Appraise",
    "Bluff",
    "Climb",
    "TYPE=Craft",
    "Diplomacy",
    "Fly",
    "Heal",
    "Intimidate",
    "TYPE=Knowledge",
    "Linguistics",
    "Perception",
    "Sense Motive",
    "Spellcraft",
    "Stealth",
    "Survival",
    "Swim",
    "Use Magic Device",
    "Acrobatics",
    "Bluff",
    "Climb",
    "TYPE=Craft",
    "Diplomacy",
    "Disguise",
    "Escape Artist",
    "Fly",
    "Knowledge (Geography)",
    "Knowledge (Local)",
    "Knowledge (Nature)",
    "Perception",
    "TYPE=Perform",
    "Sense Motive",
    "Sleight of Hand",
    "Stealth",
    "Swim",
    "Use Magic Device",
    "Climb",
    "TYPE=Craft",
    "Handle Animal",
    "Heal",
    "TYPE=Profession",
    "Ride",
    "Survival",
    "Climb",
    "TYPE=Craft",
    "Handle Animal",
    "Heal",
    "TYPE=Profession",
    "Ride",
    "Survival",
    "Climb",
    "TYPE=Craft",
    "Handle Animal",
    "Heal",
    "TYPE=Profession",
    "Ride",
    "Survival",
    "Acrobatics",
    "Climb",
    "Fly",
    "Perception",
    "Stealth",
    "Swim",
    "Climb",
    "TYPE=Craft",
    "Fly",
    "Intimidate",
    "Perception",
    "Ride",
    "Stealth",
    "Survival",
    "Swim",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Dragon")
    end,
    function (character, item, sources)
      return character.Race.IsType("Fey")
    end,
    function (character, item, sources)
      return character.Race.IsType("Humanoid")
    end,
    function (character, item, sources)
      return character.Race.IsType("Humanoid")
    end,
    function (character, item, sources)
      return character.Race.IsType("Humanoid")
    end,
    function (character, item, sources)
      return character.Race.IsType("Magical Beast")
    end,
    function (character, item, sources)
      return character.Race.IsType("Monstrous humanoid")
    end,
    function (character, item, sources)
      return character.Race.IsType("Ooze")
    end,
  },
  Types={
    "Monster",
    "Monster",
    "Monster",
    "Monster",
    "Monster",
    "Monster",
    "Monster",
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Formula=Formula("-1"),
          Conditions={
            function (character, item, sources)
              return (any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end))
            end,
          },
          Variables={
            "FEAT",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Outsider (Fort/Ref)",
  DisplayName="Outsider",
  HitDie=10,
  IntModToSkills=true,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("6"),
  SourcePage="p.309",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Outsider Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
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
        "ClassBABFull",
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
    "Bluff",
    "TYPE=Craft",
    "Knowledge (Planes)",
    "Perception",
    "Sense Motive",
    "Stealth",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Outsider")
    end,
  },
  Types={
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Names={
            "All Automatic Proficiencies",
            "All Martial Weapon Proficiencies",
          },
        },
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Names={
            "Weapon Prof ~ Simple",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Outsider (Fort/Will)",
  DisplayName="Outsider",
  HitDie=10,
  IntModToSkills=true,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("6"),
  SourcePage="p.309",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Outsider Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Reflex",
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
        "ClassBABFull",
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
        "ClassSavePoor_Reflex",
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
        "ClassSaveGood_Will",
      },
    },
  },
  ClassSkills={
    "Bluff",
    "TYPE=Craft",
    "Knowledge (Planes)",
    "Perception",
    "Sense Motive",
    "Stealth",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Outsider")
    end,
  },
  Types={
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Names={
            "All Automatic Proficiencies",
            "All Martial Weapon Proficiencies",
          },
        },
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Names={
            "Weapon Prof ~ Simple",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Outsider (Ref/Will)",
  DisplayName="Outsider",
  HitDie=10,
  IntModToSkills=true,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("6"),
  SourcePage="p.309",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Outsider Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
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
        "ClassBABFull",
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
        "ClassSavePoor_Fortitude",
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
        "ClassSaveGood_Will",
      },
    },
  },
  ClassSkills={
    "Bluff",
    "TYPE=Craft",
    "Knowledge (Planes)",
    "Perception",
    "Sense Motive",
    "Stealth",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Outsider")
    end,
  },
  Types={
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Names={
            "All Automatic Proficiencies",
            "All Martial Weapon Proficiencies",
          },
        },
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Names={
            "Weapon Prof ~ Simple",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Plant",
  HitDie=8,
  IntModToSkills=false,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("0+BaseClassSkillPts"),
  SourcePage="p.309",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Plant Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Will",
        "BASE.Reflex",
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
        "ClassSavePoor_Reflex",
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
    "Perception",
    "Stealth",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Plant")
    end,
  },
  Types={
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Formula=Formula("-1"),
          Conditions={
            function (character, item, sources)
              return (any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end))
            end,
          },
          Variables={
            "FEAT",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Undead",
  HitDie=8,
  IntModToSkills=false,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("0+BaseClassSkillPts"),
  SourcePage="p.309",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Undead Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
      Formula=Formula("MAX(1,4+INT)"),
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
        "ClassSavePoor_Fortitude",
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
        "ClassSavePoor_Reflex",
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
        "ClassSaveGood_Will",
      },
    },
  },
  ClassSkills={
    "Climb",
    "Disguise",
    "Fly",
    "Intimidate",
    "Knowledge (Arcana)",
    "Knowledge (Religion)",
    "Perception",
    "Sense Motive",
    "Spellcraft",
    "Stealth",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Undead")
    end,
  },
  Templates={
    "Undead",
  },
  Types={
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Formula=Formula("-1"),
          Conditions={
            function (character, item, sources)
              return (any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end))
            end,
          },
          Variables={
            "FEAT",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Vermin",
  HitDie=8,
  IntModToSkills=false,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("0+BaseClassSkillPts"),
  SourcePage="p.310",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Vermin Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Will",
        "BASE.Reflex",
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
        "ClassSavePoor_Reflex",
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
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Vermin")
    end,
  },
  Types={
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
  Levels={
    {
      Level="Start=3,Repeat=2",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Formula=Formula("-1"),
          Conditions={
            function (character, item, sources)
              return (any(character.Templates, function (template) return stringMatch(template.Name, "No Intelligence Score") end))
            end,
          },
          Variables={
            "FEAT",
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Sorcerer/Cleric (Arcane)",
  Memorize=false,
  SpellListChoiceCount=2,
  SpellStat="CHA",
  Visible=false,
  Bonuses={
    {
      Category="CASTERLEVEL",
      Formula=Formula("CL"),
      Variables={
        "Sorcerer/Cleric (Arcane)",
      },
    },
  },
  SpellListChoices={
    "Cleric",
    "Sorcerer",
  },
  Facts={
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      SpellsPerDay={
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("4"),
        Formula("2"),
      },
    },
    {
      Level="2",
      SpellsPerDay={
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("5"),
        Formula("2"),
      },
    },
    {
      Level="3",
      SpellsPerDay={
        Formula("6"),
        Formula("5"),
      },
      SpellsKnown={
        Formula("5"),
        Formula("3"),
      },
    },
    {
      Level="4",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("6"),
        Formula("3"),
        Formula("1"),
      },
    },
    {
      Level="5",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("6"),
        Formula("4"),
        Formula("2"),
      },
    },
    {
      Level="6",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("7"),
        Formula("4"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="7",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("7"),
        Formula("5"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="8",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("8"),
        Formula("5"),
        Formula("3"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="9",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("8"),
        Formula("5"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="10",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="11",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="12",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="13",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="14",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="15",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="16",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="17",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="18",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("5"),
        Formula("3"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("3"),
        Formula("2"),
        Formula("1"),
      },
    },
    {
      Level="19",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("4"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("3"),
        Formula("3"),
        Formula("2"),
      },
    },
    {
      Level="20",
      SpellsPerDay={
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
        Formula("6"),
      },
      SpellsKnown={
        Formula("9"),
        Formula("5"),
        Formula("5"),
        Formula("4"),
        Formula("4"),
        Formula("4"),
        Formula("3"),
        Formula("3"),
        Formula("3"),
        Formula("3"),
      },
    },
  },
})
DefineClass({
  Name="Construct (Mindless)",
  DisplayName="Vermin",
  HitDie=8,
  IntModToSkills=true,
  LevelsPerFeat=0,
  MaxLevel=-1,
  SkillPointsPerLevel=Formula("2"),
  SourcePage="p.310",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Construct Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ooze Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Plant Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Undead Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "CMB Output",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Vermin Traits",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["NoTypeTraits"] == 0)
        end,
      },
    },
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
      Category="COMBAT",
      Formula=Formula("classlevel()"),
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
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
        "ClassBABFull",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Will",
        "BASE.Reflex",
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Will",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
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
      Category="COMBAT",
      Formula=Formula("classlevel()*3/4"),
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
      Formula=Formula("classlevel()/2+2"),
      Variables={
        "BASE.Fortitude",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("classlevel()/3"),
      Variables={
        "BASE.Will",
        "BASE.Reflex",
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
  },
  ClassSkills={
    "Acrobatics",
    "Climb",
    "Fly",
    "Perception",
    "Stealth",
    "Swim",
  },
  Conditions={
    function (character, item, sources)
      return character.Race.IsType("Construct")
    end,
    function (character, item, sources)
      return character.Race.IsType("Ooze")
    end,
    function (character, item, sources)
      return character.Race.IsType("Plant")
    end,
    function (character, item, sources)
      return character.Race.IsType("Undead")
    end,
    function (character, item, sources)
      return character.Race.IsType("Vermin")
    end,
  },
  Templates={
    "Construct",
    "Mindless",
    "Mindless",
    "Undead",
    "Mindless",
  },
  Types={
    "Monster",
    "Monster",
    "Monster",
    "Monster",
    "Monster",
  },
  Facts={
    ClassType="Monster",
  },
})
