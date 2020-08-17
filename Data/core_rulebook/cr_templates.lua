-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_templates.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineTemplate({
  Name="Wizard Spellbook",
  StartingKitCount=1,
  Visible=false,
  StartingKitChoices={
    "Wizard Spellbook",
  },
})
DefineTemplate({
  Name="Shadowdancer Darkvision",
  Visible=false,
  Templates={
    "Shadowdancer Has Darkvision",
    "Shadowdancer No Darkvision",
  },
})
DefineTemplate({
  Name="Shadowdancer No Darkvision",
  Visible=false,
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
DefineTemplate({
  Name="Shadowdancer Has Darkvision",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Variables={
        "DarkvisionRange",
      },
    },
  },
})
DefineTemplate({
  Name="Timeless Body",
  Visible=false,
  TemplateChoices={
    "Timeless Body ~ Adult",
    "Timeless Body ~ Middle Age",
    "Timeless Body ~ Old",
    "Timeless Body ~ Venerable",
  },
})
DefineTemplate({
  Name="Timeless Body ~ Adult",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((character.AgeSet >= "Middle-Aged")) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return not (((character.AgeSet >= "Old")) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("3"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((character.AgeSet >= "Old")) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return not (((character.AgeSet >= "Venerable")) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Conditions={
        function (character)
          return ((character.AgeSet >= "Venerable")) >= 1
        end,
      },
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
  },
  Conditions={
    function (character)
      return not (((character.AgeSet >= "Middle-Aged")) >= 1)
    end,
  },
})
DefineTemplate({
  Name="Timeless Body ~ Middle Age",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((character.AgeSet >= "Old")) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return not (((character.AgeSet >= "Venerable")) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("5"),
      Conditions={
        function (character)
          return ((character.AgeSet >= "Venerable")) >= 1
        end,
      },
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.AgeSet >= "Middle-Aged")) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return not (((character.AgeSet >= "Old")) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineTemplate({
  Name="Timeless Body ~ Old",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Conditions={
        function (character)
          return ((character.AgeSet >= "Venerable")) >= 1
        end,
      },
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.AgeSet >= "Old")) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return not (((character.AgeSet >= "Venerable")) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineTemplate({
  Name="Timeless Body ~ Venerable",
  Visible=false,
  Conditions={
    function (character)
      return ((character.AgeSet >= "Venerable")) >= 1
    end,
  },
})
DefineTemplate({
  Name="Augment Summoning",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
        "CON",
      },
    },
  },
})
DefineTemplate({
  Name="Half Hitdie",
  HitDie={
    ClassType="Monster",
    Formula=Formula("%/2"),
  },
  Visible=false,
})
DefineTemplate({
  Name="Quarter Hitdie",
  HitDie={
    ClassType="Monster",
    Formula=Formula("%/4"),
  },
  Visible=false,
})
DefineTemplate({
  Name="Eighth Hitdie",
  HitDie={
    ClassType="Monster",
    Formula=Formula("%/8"),
  },
  Visible=false,
})
DefineTemplate({
  Name="Alter Self (Medium)",
  Reach=5,
  Size="M",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
  },
  Conditions={
    function (character)
      return (character.HasSpell("Alter Self") and 1 or 0) >= 1
    end,
  },
})
DefineTemplate({
  Name="Alter Self (Small)",
  Reach=5,
  Size="S",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
      },
    },
  },
  Conditions={
    function (character)
      return (character.HasSpell("Alter Self") and 1 or 0) >= 1
    end,
  },
})
DefineTemplate({
  Name="Righteous Might (Damage Reduction/Evil)",
  DamageReduction={
    Value="0/Evil",
  },
  Description={
    Format="This Template provides the Damage Reduction to a character when Righteous Might is cast.",
  },
  Visible=true,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Name == "Channel Positive Energy")
      end)
    end,
    function (character)
      return (character.HasSpell("Righteous Might") and 1 or 0) >= 1
    end,
  },
})
DefineTemplate({
  Name="Righteous Might (Damage Reduction/Good)",
  DamageReduction={
    Value="0/Good",
  },
  Description={
    Format="This Template provides the Damage Reduction to a character when Righteous Might is cast.",
  },
  Visible=true,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Name == "Channel Negative Energy")
      end)
    end,
    function (character)
      return (character.HasSpell("Righteous Might") and 1 or 0) >= 1
    end,
  },
})
DefineTemplate({
  Name="Trained Animal",
  Visible=true,
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
      },
      Variables={
        "Animal Trick",
      },
    },
    {
      Category="ABILITYPOOL",
      Formula=Formula("3"),
      Conditions={
        function (character)
          return ((character.Stats["INT"] >= 2)) >= 1
        end,
      },
      Variables={
        "Animal Trick",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Name == "Animal Tricks and Training")
      end))
    end,
    function (character)
      return ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Animal") end) and 1 or 0)) >= 1
    end,
  },
})
DefineTemplate({
  Name="Inherent Ability Bonus (Strength)",
  SourcePage="p.370",
  Visible=true,
  TemplateChoices={
    "Inherent Strength Bonus +1",
    "Inherent Strength Bonus +2",
    "Inherent Strength Bonus +3",
    "Inherent Strength Bonus +4",
    "Inherent Strength Bonus +5",
  },
})
DefineTemplate({
  Name="Inherent Ability Bonus (Dexterity)",
  SourcePage="p.370",
  Visible=true,
  TemplateChoices={
    "Inherent Dexterity Bonus +1",
    "Inherent Dexterity Bonus +2",
    "Inherent Dexterity Bonus +3",
    "Inherent Dexterity Bonus +4",
    "Inherent Dexterity Bonus +5",
  },
})
DefineTemplate({
  Name="Inherent Ability Bonus (Constitution)",
  SourcePage="p.370",
  Visible=true,
  TemplateChoices={
    "Inherent Constitution Bonus +1",
    "Inherent Constitution Bonus +2",
    "Inherent Constitution Bonus +3",
    "Inherent Constitution Bonus +4",
    "Inherent Constitution Bonus +5",
  },
})
DefineTemplate({
  Name="Inherent Ability Bonus (Intelligence)",
  SourcePage="p.370",
  Visible=true,
  TemplateChoices={
    "Inherent Intelligence Bonus +1",
    "Inherent Intelligence Bonus +2",
    "Inherent Intelligence Bonus +3",
    "Inherent Intelligence Bonus +4",
    "Inherent Intelligence Bonus +5",
  },
})
DefineTemplate({
  Name="Inherent Ability Bonus (Wisdom)",
  SourcePage="p.370",
  Visible=true,
  TemplateChoices={
    "Inherent Wisdom Bonus +1",
    "Inherent Wisdom Bonus +2",
    "Inherent Wisdom Bonus +3",
    "Inherent Wisdom Bonus +4",
    "Inherent Wisdom Bonus +5",
  },
})
DefineTemplate({
  Name="Inherent Ability Bonus (Charisma)",
  SourcePage="p.370",
  Visible=true,
  TemplateChoices={
    "Inherent Charisma Bonus +1",
    "Inherent Charisma Bonus +2",
    "Inherent Charisma Bonus +3",
    "Inherent Charisma Bonus +4",
    "Inherent Charisma Bonus +5",
  },
})
DefineTemplate({
  Name="Inherent Strength Bonus +1",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Inherent",
      },
      Variables={
        "STR",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Strength Bonus +2",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Inherent",
      },
      Variables={
        "STR",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Strength Bonus +3",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Inherent",
      },
      Variables={
        "STR",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Strength Bonus +4",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Inherent",
      },
      Variables={
        "STR",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Strength Bonus +5",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("5"),
      Type={
        Name="Inherent",
      },
      Variables={
        "STR",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Dexterity Bonus +1",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Inherent",
      },
      Variables={
        "DEX",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Dexterity Bonus +2",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Inherent",
      },
      Variables={
        "DEX",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Dexterity Bonus +3",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Inherent",
      },
      Variables={
        "DEX",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Dexterity Bonus +4",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Inherent",
      },
      Variables={
        "DEX",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Dexterity Bonus +5",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("5"),
      Type={
        Name="Inherent",
      },
      Variables={
        "DEX",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Constitution Bonus +1",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CON",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Constitution Bonus +2",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CON",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Constitution Bonus +3",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CON",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Constitution Bonus +4",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CON",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Constitution Bonus +5",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("5"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CON",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Intelligence Bonus +1",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Inherent",
      },
      Variables={
        "INT",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Intelligence Bonus +2",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Inherent",
      },
      Variables={
        "INT",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Intelligence Bonus +3",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Inherent",
      },
      Variables={
        "INT",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Intelligence Bonus +4",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Inherent",
      },
      Variables={
        "INT",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Intelligence Bonus +5",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("5"),
      Type={
        Name="Inherent",
      },
      Variables={
        "INT",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Wisdom Bonus +1",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Inherent",
      },
      Variables={
        "WIS",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Wisdom Bonus +2",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Inherent",
      },
      Variables={
        "WIS",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Wisdom Bonus +3",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Inherent",
      },
      Variables={
        "WIS",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Wisdom Bonus +4",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Inherent",
      },
      Variables={
        "WIS",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Wisdom Bonus +5",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("5"),
      Type={
        Name="Inherent",
      },
      Variables={
        "WIS",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Charisma Bonus +1",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CHA",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Charisma Bonus +2",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CHA",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Charisma Bonus +3",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("3"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CHA",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Charisma Bonus +4",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CHA",
      },
    },
  },
})
DefineTemplate({
  Name="Inherent Charisma Bonus +5",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("5"),
      Type={
        Name="Inherent",
      },
      Variables={
        "CHA",
      },
    },
  },
})
DefineTemplate({
  Name="Human Ethnicity",
  Visible=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Human Ethnicity",
      },
    },
  },
})
DefineTemplate({
  Name="Starting Gold ~ CRB",
  Visible=false,
  TemplateChoices={
    "Starting Gold CRB ~ Random",
    "Starting Gold CRB ~ Maximum",
    "Starting Gold CRB ~ Average",
  },
})
DefineTemplate({
  Name="Starting Gold CRB ~ Random",
  StartingKitCount=1,
  Visible=false,
  StartingKitChoices={
    "Starting Gold CRB ~ Random",
  },
})
DefineTemplate({
  Name="Starting Gold CRB ~ Maximum",
  StartingKitCount=1,
  Visible=false,
  StartingKitChoices={
    "Starting Gold CRB ~ Maximum",
  },
})
DefineTemplate({
  Name="Starting Gold CRB ~ Average",
  StartingKitCount=1,
  Visible=false,
  StartingKitChoices={
    "Starting Gold CRB ~ Average",
  },
})
DefineTemplate({
  Name="Wealth by PC Level",
  Visible=false,
  TemplateChoices={
    "PC Level 2",
    "PC Level 3",
    "PC Level 4",
    "PC Level 5",
    "PC Level 6",
    "PC Level 7",
    "PC Level 8",
    "PC Level 9",
    "PC Level 10",
    "PC Level 11",
    "PC Level 12",
    "PC Level 13",
    "PC Level 14",
    "PC Level 15",
    "PC Level 16",
    "PC Level 17",
    "PC Level 18",
    "PC Level 19",
    "PC Level 20",
  },
})
DefineTemplate({
  Name="PC Level 2",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 2 and character.PcLevel <= 2
    end,
  },
  StartingKitChoices={
    "PC Level 2",
  },
})
DefineTemplate({
  Name="PC Level 3",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 3 and character.PcLevel <= 3
    end,
  },
  StartingKitChoices={
    "PC Level 3",
  },
})
DefineTemplate({
  Name="PC Level 4",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 4 and character.PcLevel <= 4
    end,
  },
  StartingKitChoices={
    "PC Level 4",
  },
})
DefineTemplate({
  Name="PC Level 5",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 5 and character.PcLevel <= 5
    end,
  },
  StartingKitChoices={
    "PC Level 5",
  },
})
DefineTemplate({
  Name="PC Level 6",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 6 and character.PcLevel <= 6
    end,
  },
  StartingKitChoices={
    "PC Level 6",
  },
})
DefineTemplate({
  Name="PC Level 7",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 7 and character.PcLevel <= 7
    end,
  },
  StartingKitChoices={
    "PC Level 7",
  },
})
DefineTemplate({
  Name="PC Level 8",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 8 and character.PcLevel <= 8
    end,
  },
  StartingKitChoices={
    "PC Level 8",
  },
})
DefineTemplate({
  Name="PC Level 9",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 9 and character.PcLevel <= 9
    end,
  },
  StartingKitChoices={
    "PC Level 9",
  },
})
DefineTemplate({
  Name="PC Level 10",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 10 and character.PcLevel <= 10
    end,
  },
  StartingKitChoices={
    "PC Level 10",
  },
})
DefineTemplate({
  Name="PC Level 11",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 11 and character.PcLevel <= 11
    end,
  },
  StartingKitChoices={
    "PC Level 11",
  },
})
DefineTemplate({
  Name="PC Level 12",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 12 and character.PcLevel <= 12
    end,
  },
  StartingKitChoices={
    "PC Level 12",
  },
})
DefineTemplate({
  Name="PC Level 13",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 13 and character.PcLevel <= 13
    end,
  },
  StartingKitChoices={
    "PC Level 13",
  },
})
DefineTemplate({
  Name="PC Level 14",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 14 and character.PcLevel <= 14
    end,
  },
  StartingKitChoices={
    "PC Level 14",
  },
})
DefineTemplate({
  Name="PC Level 15",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 15 and character.PcLevel <= 15
    end,
  },
  StartingKitChoices={
    "PC Level 15",
  },
})
DefineTemplate({
  Name="PC Level 16",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 16 and character.PcLevel <= 16
    end,
  },
  StartingKitChoices={
    "PC Level 16",
  },
})
DefineTemplate({
  Name="PC Level 17",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 17 and character.PcLevel <= 17
    end,
  },
  StartingKitChoices={
    "PC Level 17",
  },
})
DefineTemplate({
  Name="PC Level 18",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 18 and character.PcLevel <= 18
    end,
  },
  StartingKitChoices={
    "PC Level 18",
  },
})
DefineTemplate({
  Name="PC Level 19",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 19 and character.PcLevel <= 19
    end,
  },
  StartingKitChoices={
    "PC Level 19",
  },
})
DefineTemplate({
  Name="PC Level 20",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 20 and character.PcLevel <= 20
    end,
  },
  StartingKitChoices={
    "PC Level 20",
  },
})
DefineTemplate({
  Name="Wealth by NPC Level",
  Visible=false,
  TemplateChoices={
    "Basic NPC",
    "Heroic NPC",
  },
})
DefineTemplate({
  Name="Basic NPC",
  Visible=false,
  TemplateChoices={
    "Basic Level 1",
    "Basic Level 2",
    "Basic Level 3",
    "Basic Level 4",
    "Basic Level 5",
    "Basic Level 6",
    "Basic Level 7",
    "Basic Level 8",
    "Basic Level 9",
    "Basic Level 10",
    "Basic Level 11",
    "Basic Level 12",
    "Basic Level 13",
    "Basic Level 14",
    "Basic Level 15",
    "Basic Level 16",
    "Basic Level 17",
    "Basic Level 18",
    "Basic Level 19",
    "Basic Level 20",
  },
})
DefineTemplate({
  Name="Basic Level 1",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 1 and character.PcLevel <= 1
    end,
  },
  StartingKitChoices={
    "Basic Level 1",
  },
})
DefineTemplate({
  Name="Basic Level 2",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 2 and character.PcLevel <= 2
    end,
  },
  StartingKitChoices={
    "Basic Level 2",
  },
})
DefineTemplate({
  Name="Basic Level 3",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 3 and character.PcLevel <= 3
    end,
  },
  StartingKitChoices={
    "Basic Level 3",
  },
})
DefineTemplate({
  Name="Basic Level 4",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 4 and character.PcLevel <= 4
    end,
  },
  StartingKitChoices={
    "Basic Level 4",
  },
})
DefineTemplate({
  Name="Basic Level 5",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 5 and character.PcLevel <= 5
    end,
  },
  StartingKitChoices={
    "Basic Level 5",
  },
})
DefineTemplate({
  Name="Basic Level 6",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 6 and character.PcLevel <= 6
    end,
  },
  StartingKitChoices={
    "Basic Level 6",
  },
})
DefineTemplate({
  Name="Basic Level 7",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 7 and character.PcLevel <= 7
    end,
  },
  StartingKitChoices={
    "Basic Level 7",
  },
})
DefineTemplate({
  Name="Basic Level 8",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 8 and character.PcLevel <= 8
    end,
  },
  StartingKitChoices={
    "Basic Level 8",
  },
})
DefineTemplate({
  Name="Basic Level 9",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 9 and character.PcLevel <= 9
    end,
  },
  StartingKitChoices={
    "Basic Level 9",
  },
})
DefineTemplate({
  Name="Basic Level 10",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 10 and character.PcLevel <= 10
    end,
  },
  StartingKitChoices={
    "Basic Level 10",
  },
})
DefineTemplate({
  Name="Basic Level 11",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 11 and character.PcLevel <= 11
    end,
  },
  StartingKitChoices={
    "Basic Level 11",
  },
})
DefineTemplate({
  Name="Basic Level 12",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 12 and character.PcLevel <= 12
    end,
  },
  StartingKitChoices={
    "Basic Level 12",
  },
})
DefineTemplate({
  Name="Basic Level 13",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 13 and character.PcLevel <= 13
    end,
  },
  StartingKitChoices={
    "Basic Level 13",
  },
})
DefineTemplate({
  Name="Basic Level 14",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 14 and character.PcLevel <= 14
    end,
  },
  StartingKitChoices={
    "Basic Level 14",
  },
})
DefineTemplate({
  Name="Basic Level 15",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 15 and character.PcLevel <= 15
    end,
  },
  StartingKitChoices={
    "Basic Level 15",
  },
})
DefineTemplate({
  Name="Basic Level 16",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 16 and character.PcLevel <= 16
    end,
  },
  StartingKitChoices={
    "Basic Level 16",
  },
})
DefineTemplate({
  Name="Basic Level 17",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 17 and character.PcLevel <= 17
    end,
  },
  StartingKitChoices={
    "Basic Level 17",
  },
})
DefineTemplate({
  Name="Basic Level 18",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 18 and character.PcLevel <= 18
    end,
  },
  StartingKitChoices={
    "Basic Level 18",
  },
})
DefineTemplate({
  Name="Basic Level 19",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 19 and character.PcLevel <= 19
    end,
  },
  StartingKitChoices={
    "Basic Level 19",
  },
})
DefineTemplate({
  Name="Basic Level 20",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 20 and character.PcLevel <= 20
    end,
  },
  StartingKitChoices={
    "Basic Level 20",
  },
})
DefineTemplate({
  Name="Heroic NPC",
  Visible=false,
  TemplateChoices={
    "Heroic Level 1",
    "Heroic Level 2",
    "Heroic Level 3",
    "Heroic Level 4",
    "Heroic Level 5",
    "Heroic Level 6",
    "Heroic Level 7",
    "Heroic Level 8",
    "Heroic Level 9",
    "Heroic Level 10",
    "Heroic Level 11",
    "Heroic Level 12",
    "Heroic Level 13",
    "Heroic Level 14",
    "Heroic Level 15",
    "Heroic Level 16",
    "Heroic Level 17",
    "Heroic Level 18",
    "Heroic Level 19",
    "Heroic Level 20",
  },
})
DefineTemplate({
  Name="Heroic Level 1",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 1 and character.PcLevel <= 1
    end,
  },
  StartingKitChoices={
    "Heroic Level 1",
  },
})
DefineTemplate({
  Name="Heroic Level 2",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 2 and character.PcLevel <= 2
    end,
  },
  StartingKitChoices={
    "Heroic Level 2",
  },
})
DefineTemplate({
  Name="Heroic Level 3",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 3 and character.PcLevel <= 3
    end,
  },
  StartingKitChoices={
    "Heroic Level 3",
  },
})
DefineTemplate({
  Name="Heroic Level 4",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 4 and character.PcLevel <= 4
    end,
  },
  StartingKitChoices={
    "Heroic Level 4",
  },
})
DefineTemplate({
  Name="Heroic Level 5",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 5 and character.PcLevel <= 5
    end,
  },
  StartingKitChoices={
    "Heroic Level 5",
  },
})
DefineTemplate({
  Name="Heroic Level 6",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 6 and character.PcLevel <= 6
    end,
  },
  StartingKitChoices={
    "Heroic Level 6",
  },
})
DefineTemplate({
  Name="Heroic Level 7",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 7 and character.PcLevel <= 7
    end,
  },
  StartingKitChoices={
    "Heroic Level 7",
  },
})
DefineTemplate({
  Name="Heroic Level 8",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 8 and character.PcLevel <= 8
    end,
  },
  StartingKitChoices={
    "Heroic Level 8",
  },
})
DefineTemplate({
  Name="Heroic Level 9",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 9 and character.PcLevel <= 9
    end,
  },
  StartingKitChoices={
    "Heroic Level 9",
  },
})
DefineTemplate({
  Name="Heroic Level 10",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 10 and character.PcLevel <= 10
    end,
  },
  StartingKitChoices={
    "Heroic Level 10",
  },
})
DefineTemplate({
  Name="Heroic Level 11",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 11 and character.PcLevel <= 11
    end,
  },
  StartingKitChoices={
    "Heroic Level 11",
  },
})
DefineTemplate({
  Name="Heroic Level 12",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 12 and character.PcLevel <= 12
    end,
  },
  StartingKitChoices={
    "Heroic Level 12",
  },
})
DefineTemplate({
  Name="Heroic Level 13",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 13 and character.PcLevel <= 13
    end,
  },
  StartingKitChoices={
    "Heroic Level 13",
  },
})
DefineTemplate({
  Name="Heroic Level 14",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 14 and character.PcLevel <= 14
    end,
  },
  StartingKitChoices={
    "Heroic Level 14",
  },
})
DefineTemplate({
  Name="Heroic Level 15",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 15 and character.PcLevel <= 15
    end,
  },
  StartingKitChoices={
    "Heroic Level 15",
  },
})
DefineTemplate({
  Name="Heroic Level 16",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 16 and character.PcLevel <= 16
    end,
  },
  StartingKitChoices={
    "Heroic Level 16",
  },
})
DefineTemplate({
  Name="Heroic Level 17",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 17 and character.PcLevel <= 17
    end,
  },
  StartingKitChoices={
    "Heroic Level 17",
  },
})
DefineTemplate({
  Name="Heroic Level 18",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 18 and character.PcLevel <= 18
    end,
  },
  StartingKitChoices={
    "Heroic Level 18",
  },
})
DefineTemplate({
  Name="Heroic Level 19",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 19 and character.PcLevel <= 19
    end,
  },
  StartingKitChoices={
    "Heroic Level 19",
  },
})
DefineTemplate({
  Name="Heroic Level 20",
  StartingKitCount=1,
  Visible=false,
  Conditions={
    function (character)
      return character.PcLevel >= 20 and character.PcLevel <= 20
    end,
  },
  StartingKitChoices={
    "Heroic Level 20",
  },
})
DefineTemplate({
  Name="Ability Damaged (Strength)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("-AbilityDamagePenaltyStrength"),
      Type={
        Name="AbilityDamage",
      },
      Variables={
        "CMD",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have taken STR damage",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Damaged (Dexterity)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("AbilityDamageDEX/2"),
      Variables={
        "AbilityDamagePenaltyDEX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have taken DEX damage",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Damaged (Constitution)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("%CHOICE"),
      Variables={
        "AbilityDamageCON",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have taken CON damage",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Damaged (Intelligence)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("%CHOICE"),
      Variables={
        "AbilityDamageINT",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have taken INT damage",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Damaged (Wisdom)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("%CHOICE"),
      Variables={
        "AbilityDamageWIS",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have taken WIS damage",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Damaged (Charisma)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("%CHOICE"),
      Variables={
        "AbilityDamageCHA",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have taken CHA damage",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Drained (Strength)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "STR",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have temporarily lost 1 or more Strength ability score points",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Drained (Dexterity)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "DEX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have temporarily lost 1 or more Dexterity ability score points",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Drained (Constitution)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "CON",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have temporarily lost 1 or more Constitution ability score points",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Drained (Intelligence)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "INT",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have temporarily lost 1 or more Intelligence ability score points",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Drained (Wisdom)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "WIS",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have temporarily lost 1 or more Wisdom ability score points",
  },
  Visible=false,
})
DefineTemplate({
  Name="Ability Drained (Charisma)",
  SourcePage="p.555",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "CHA",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have temporarily lost 1 or more Charisma ability score points",
  },
  Visible=false,
})
DefineTemplate({
  Name="Energy Drained",
  SourcePage="p.562",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("-1*(%CHOICE)"),
      Variables={
        "CMD_BAB",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You have gained one or more negative levels",
  },
  Visible=false,
})
DefineTemplate({
  Name="Blinded",
  SourcePage="p.565",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-4"),
      Variables={
        "TYPE.Strength",
        "TYPE.Dexterity",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You cannot see. You take a -2 penalty to Armor Class, loses your Dexterity bonus to AC (if any), and take a -4 penalty on most Strength- and Dexterity-based skill checks and on opposed Perception skill checks. All checks and activities that rely on vision (such as reading and Perception checks based on sight) automatically fail. All opponents are considered to have total concealment (50% miss chance) against the blinded character. Blind creatures must make a DC 10 Acrobatics skill check to move faster than half speed. Creatures that fail this check fall prone.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Cowering",
  SourcePage="p.566",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("-max(0,DEX)"),
      Variables={
        "AC",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="frozen in fear and can take no actions. A cowering character takes a -2 penalty to Armor Class and loses his Dexterity bonus (if any).",
  },
  Visible=false,
})
DefineTemplate({
  Name="Dazzled",
  SourcePage="p.566",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("-1"),
      Variables={
        "TOHIT",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You are unable to see well because of overstimulation of the eyes. A dazzled creature takes a -1 penalty on attack rolls and sight-based Perception checks.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Deafened",
  SourcePage="p.566",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("-4"),
      Variables={
        "INITIATIVE",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A deafened character cannot hear. He takes a -4 penalty on initiative checks, automatically fails Perception checks based on sound, takes a -4 penalty on opposed Perception checks, and has a 20% chance of spell failure when casting spells with verbal components.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Entangled",
  SourcePage="p.567",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "DEX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="The character is ensnared. Being entangled impedes movement, but does not entirely prevent it unless the bonds are anchored to an immobile object or tethered by an opposing force. An entangled creature moves at half speed, cannot run or charge, and takes a -2 penalty on all attack rolls and a -4 penalty to Dexterity. An entangled character who attempts to cast a spell must make a concentration check (DC 15 + spell level) or lose the spell.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Exhausted",
  SourcePage="p.567",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "STR",
        "DEX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="An exhausted character moves at half speed, cannot run or charge, and takes a -6 penalty to Strength and Dexterity. After 1 hour of complete rest, an exhausted character becomes fatigued. A fatigued character becomes exhausted by doing something else that would normally cause fatigue.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Fatigued",
  SourcePage="p.567",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
        "DEX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A fatigued character can neither run nor charge and takes a -2 penalty to Strength and Dexterity. Doing anything that would normally cause fatigue causes the fatigued character to become exhausted. After 8 hours of complete rest, fatigued characters are no longer fatigued.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Frightened",
  SourcePage="p.567",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Variables={
        "TYPE.Base",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A frightened creature flees from the source of its fear as best it can. If unable to flee, it may fight. A frightened creature takes a -2 penalty on all attack rolls, saving throws, skill checks, and ability checks. A frightened creature can use special abilities, including spells, to flee; indeed, the creature must use such means if they are the only way to escape. Frightened is like shaken, except that the creature must flee if possible. Panicked is a more extreme state of fear.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Grappled",
  SourcePage="p.567",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "DEX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A grappled creature is restrained by a creature, trap, or effect. Grappled creatures cannot move and take a -4 penalty to Dexterity. A grappled creature takes a -2 penalty on all attack rolls and combat maneuver checks, except those made to grapple or escape a grapple. In addition, grappled creatures can take no action that requires two hands to perform.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Panicked",
  SourcePage="p.568",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Variables={
        "TYPE.Base",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A panicked creature must drop anything it holds and flee at top speed from the source of its fear, as well as any other dangers it encounters, along a random path. It can't take any other actions. In addition, the creature takes a -2 penalty on all saving throws, skill checks, and ability checks. If cornered, a panicked creature cowers and does not attack, typically using the total defense action in combat.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Pinned",
  SourcePage="p.568",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("-4"),
      Variables={
        "AC",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A pinned creature is tightly bound and can take few actions. A pinned creature cannot move and is flat-footed. A pinned character also takes an additional -4 penalty to his Armor Class. A pinned creature is limited in the actions that it can take. A pinned creature can always attempt to free itself, usually through a combat maneuver check or Escape Artist check.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Prone",
  SourcePage="p.568",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("-4"),
      Variables={
        "TOHIT.MELEE",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="The character is lying on the ground. A prone attacker has a -4 penalty on melee attack rolls and cannot use a ranged weapon (except for a crossbow). A prone defender gains a +4 bonus to Armor Class against ranged attacks, but takes a -4 penalty to AC against melee attacks. Standing up is a move-equivalent action that provokes an attack of opportunity.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Shaken",
  SourcePage="p.568",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Variables={
        "TYPE.Base",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A shaken character takes a -2 penalty on attack rolls, saving throws, skill checks, and ability checks. Shaken is a less severe state of fear than frightened or panicked.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Sickened",
  SourcePage="p.568",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Variables={
        "TYPE.Base",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="The character takes a -2 penalty on all attack rolls, weapon damage rolls, saving throws, skill checks, and ability checks.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Stunned",
  SourcePage="p.568",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("-max(0,DEX)"),
      Variables={
        "AC",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="A stunned creature drops everything held, can't take actions, takes a -2 penalty to AC, and loses its Dexterity bonus to AC (if any).",
  },
  Visible=false,
})
DefineTemplate({
  Name="TestChoose",
  Choice={
    Choose=ChooseTemplate(function (character, template)
      return ((template.IsType("TestChooseTemplate")))
    end),
  },
  Visible=false,
  Templates={
    "%LIST",
  },
})
DefineTemplate({
  Name="TestMedium",
  Size="M",
  Visible=false,
  Types={
    "TestChooseTemplate",
  },
})
DefineTemplate({
  Name="TestSmall",
  Size="S",
  Visible=false,
  Types={
    "TestChooseTemplate",
  },
})
DefineTemplate({
  Name="TestTiny",
  Size="T",
  Visible=false,
  Types={
    "TestChooseTemplate",
  },
})
DefineTemplate({
  Name="TestLarge",
  Size="L",
  Visible=false,
  Types={
    "TestChooseTemplate",
  },
})
DefineTemplate({
  Name="TestDiminutive",
  Size="D",
  Visible=false,
  Types={
    "TestChooseTemplate",
  },
})
DefineTemplate({
  Name="TestHuge",
  Size="H",
  Visible=false,
  Types={
    "TestChooseTemplate",
  },
})
DefineTemplate({
  Name="Wild Shape",
  Choice={
    Choose=ChooseTemplate(function (character, template)
      return ((character.IsQualifiedFor(template) and (((template.IsType("WildshapeTemplate"))))))
    end),
  },
  Visible=true,
  Templates={
    "%LIST",
  },
})
DefineTemplate({
  Name="Wild Shape (Medium Animal)",
  Reach=5,
  Size="M",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Small Animal)",
  Reach=5,
  Size="S",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Tiny Animal)",
  Reach=0,
  Size="T",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 2)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Large Animal)",
  Reach=5,
  Size="L",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 2)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Diminutive Animal)",
  Reach=0,
  Size="D",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 3)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Huge Animal)",
  Reach=10,
  Size="H",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "STR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 3)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Small Magical Beast)",
  Reach=5,
  Size="S",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 3)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Tiny Magical Beast)",
  Reach=0,
  Size="T",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 4)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape (Large Magical Beast)",
  Reach=5,
  Size="L",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 4)
    end,
  },
})
DefineTemplate({
  Name="Wild Shape Small Animal (Badger)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ferocity",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Small Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeSmall",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=30,
    Burrow=10,
  },
})
DefineTemplate({
  Name="Wild Shape Small Animal (Dire Rat)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Small Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeSmall",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=40,
    Climb=20,
    Swim=20,
  },
})
DefineTemplate({
  Name="Wild Shape Small Animal (Dog)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Small Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeSmall",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=40,
  },
})
DefineTemplate({
  Name="Wild Shape Small Animal (Eagle)",
  HandCount=0,
  LegCount=2,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Wildshape 2 ~ Eagle",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] == 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Wildshape 3 ~ Eagle",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 3)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Flight Maneuverability",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Small Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeSmall",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=10,
    Fly=30,
  },
})
DefineTemplate({
  Name="Wild Shape Small Animal (Electric Eel)",
  HandCount=0,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Small Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeSmall",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=5,
    Swim=30,
  },
})
DefineTemplate({
  Name="Wild Shape Small Animal (Octopus)",
  HandCount=8,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
        "Octopus Wild Shape ~ Ink Cloud",
        "Octopus Wild Shape ~ Jet",
        "Octopus Wild Shape ~ Poison",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Tentacle",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Small Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeSmall",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=20,
    Swim=30,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Baboon)",
  LegCount=2,
  Visible=true,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=30,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Boar)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ferocity",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Gore",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=40,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Cheetah)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Cheetah Wild Shape ~ Sprint",
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Trip",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=50,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Constrictor Snake)",
  HandCount=0,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Constrict",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 3)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=20,
    Climb=20,
    Swim=20,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Deinonychus)",
  LegCount=2,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Pounce",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  NaturalAttacks={
    {
      Name="Foreclaw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=60,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Dire Badger)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ferocity",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=30,
    Burrow=10,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Dolphin)",
  HandCount=0,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Slam",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Swim=80,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Gar)",
  HandCount=0,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Wildshape 2 ~ Gar",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Swim=30,
    Walk=10,
    Fly=30,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Giant Frog)",
  HandCount=2,
  LegCount=2,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Giant Frog Wild Shape ~ Tongue",
        "Grab",
        "Pull",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tongue",
      Formula=Formula("-STR"),
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=30,
    Swim=30,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Goblin Dog)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=50,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Hyena)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Trip",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=50,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Leopard)",
  HandCount=2,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Pounce",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Rake",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 3)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=30,
    Climb=20,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Monitor Lizard)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
        "Lizard Monitor Wild Shape ~ Poison",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 3)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=30,
    Swim=30,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Pony)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Hoof",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=40,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Ram)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Gore",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=40,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Riding Dog)",
  HandCount=0,
  LegCount=4,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=40,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Squid)",
  HandCount=0,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Wildshape 3 ~ Squid",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 3)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Tentacle",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Swim=30,
  },
})
DefineTemplate({
  Name="Wild Shape Medium Animal (Stingray)",
  HandCount=0,
  LegCount=0,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 2)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Sting",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  Templates={
    "Wild Shape (Medium Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeMedium",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Swim=40,
  },
})
DefineTemplate({
  Name="Wild Shape Huge Animal (Allosaurus)",
  LegCount=2,
  SourcePage="TODO",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Pounce",
      },
      Conditions={
        function (character)
          return (character.Variables["WildShapeProgression"] >= 1)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Rake",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["WildShapeProgression"] >= 1)
    end,
  },
  NaturalAttacks={
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
  Templates={
    "Wild Shape (Huge Animal)",
  },
  Types={
    "WildshapeTemplate",
    "WildshapeHuge",
  },
  Visions={
    {
      Kind={
        "Low-Light Vision",
      },
    },
  },
  Movement={
    Walk=50,
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Abyssal",
  Visible=false,
  BonusLanguages={
    {
      Name="Abyssal",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Aklo",
  Visible=false,
  BonusLanguages={
    {
      Name="Aklo",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Aquan",
  Visible=false,
  BonusLanguages={
    {
      Name="Aquan",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Auran",
  Visible=false,
  BonusLanguages={
    {
      Name="Auran",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Celestial",
  Visible=false,
  BonusLanguages={
    {
      Name="Celestial",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Common",
  Visible=false,
  BonusLanguages={
    {
      Name="Common",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Draconic",
  Visible=false,
  BonusLanguages={
    {
      Name="Draconic",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Dwarven",
  Visible=false,
  BonusLanguages={
    {
      Name="Dwarven",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Elven",
  Visible=false,
  BonusLanguages={
    {
      Name="Elven",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Giant",
  Visible=false,
  BonusLanguages={
    {
      Name="Giant",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Gnoll",
  Visible=false,
  BonusLanguages={
    {
      Name="Gnoll",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Gnome",
  Visible=false,
  BonusLanguages={
    {
      Name="Gnome",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Goblin",
  Visible=false,
  BonusLanguages={
    {
      Name="Goblin",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Halfling",
  Visible=false,
  BonusLanguages={
    {
      Name="Halfling",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Ignan",
  Visible=false,
  BonusLanguages={
    {
      Name="Ignan",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Infernal",
  Visible=false,
  BonusLanguages={
    {
      Name="Infernal",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Orc",
  Visible=false,
  BonusLanguages={
    {
      Name="Orc",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Sylvan",
  Visible=false,
  BonusLanguages={
    {
      Name="Sylvan",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Terran",
  Visible=false,
  BonusLanguages={
    {
      Name="Terran",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Undercommon",
  Visible=false,
  BonusLanguages={
    {
      Name="Undercommon",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ All",
  Visible=false,
  BonusLanguages={
    {
      All=true,
    },
  },
})
DefineTemplate({
  Name="Bonus Language ~ Any Spoken",
  Visible=false,
  BonusLanguages={
    {
      Type="Spoken",
    },
  },
})
DefineTemplate({
  Name="Fighting Defensively",
  SourcePage="X",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Temp2",
      },
      Conditions={
        function (character)
          return ((character.Skill("Acrobatics").ranks >= 3 and 1 or 0)) >= 1
        end,
      },
      Variables={
        "FightingDefensivelyACBonus",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You are fighting defensively when attacking",
  },
  Visible=false,
})
DefineTemplate({
  Name="Total Defense",
  SourcePage="X",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Temp2",
      },
      Conditions={
        function (character)
          return ((character.Skill("Acrobatics").ranks >= 3 and 1 or 0)) >= 1
        end,
      },
      Variables={
        "TotalDefenseACBonus",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="You are defending yourself as a standard action",
  },
  Visible=false,
})
DefineTemplate({
  Name="Combat Expertise trade off",
  SourcePage="X",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("max((-1*%CHOICE),(-1*BAB))"),
      Type={
        Name="Temporary",
      },
      Variables={
        "TOHIT",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="When you use the attack action or the full attack action in melee, you can take a penalty of as much as -5 on your attack roll and add the same number (+5 or less) as a dodge bonus to your Armor Class.",
  },
  Visible=false,
})
DefineTemplate({
  Name="Celestial Bloodline ~ Wings of Heaven",
  SourcePage="p.74",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
  },
  Movement={
    Fly=60,
  },
})
DefineTemplate({
  Name="Monk HD d8",
  HitDie={
    ClassName="Monk",
    Formula=Formula("8"),
  },
  Visible=false,
})
