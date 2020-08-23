-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_skills.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineSkill({
  Name="Acrobatics",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.87",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Acrobatics") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Acrobatics").ranks >= 1)
        end,
      },
      Variables={
        "Acrobatics",
      },
    },
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Appraise",
  KeyStat="INT",
  SourcePage="p.90",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Appraise") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Appraise").ranks >= 1)
        end,
      },
      Variables={
        "Appraise",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Base",
  },
})
DefineSkill({
  Name="Bluff",
  KeyStat="CHA",
  SourcePage="p.90",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Bluff") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Bluff").ranks >= 1)
        end,
      },
      Variables={
        "Bluff",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Base",
  },
})
DefineSkill({
  Name="Climb",
  ArmorCheckPenalty="Yes",
  KeyStat="STR",
  SourcePage="p.90",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Climb") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Climb").ranks >= 1)
        end,
      },
      Variables={
        "Climb",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Conditions={
        function (character, item, sources)
          return (character.HasMovement("Climb", 1))
        end,
      },
      Variables={
        "Climb",
      },
    },
  },
  Types={
    "Strength",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Alchemy)",
  KeyStat="INT",
  SourcePage="p.91",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Alchemy)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Alchemy)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Alchemy)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Armor)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsArmor")))
        end,
      },
      Variables={
        "Craft (Armor)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Armor)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Armor)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Armor)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Baskets)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsBaskets")))
        end,
      },
      Variables={
        "Craft (Baskets)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Baskets)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Baskets)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Baskets)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Blacksmithing)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsBlacksmithing")))
        end,
      },
      Variables={
        "Craft (Blacksmithing)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Blacksmithing)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Blacksmithing)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Blacksmithing)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Books)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsBooks")))
        end,
      },
      Variables={
        "Craft (Books)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Books)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Books)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Books)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Bows)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsBows")))
        end,
      },
      Variables={
        "Craft (Bows)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Bows)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Bows)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Bows)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Calligraphy)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsCalligraphy")))
        end,
      },
      Variables={
        "Craft (Calligraphy)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Calligraphy)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Calligraphy)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Calligraphy)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Carpentry)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsCarpentry")))
        end,
      },
      Variables={
        "Craft (Carpentry)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Carpentry)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Carpentry)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Carpentry)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Cloth)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsCloth")))
        end,
      },
      Variables={
        "Craft (Cloth)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Cloth)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Cloth)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Cloth)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Clothing)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsClothing")))
        end,
      },
      Variables={
        "Craft (Clothing)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Clothing)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Clothing)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Clothing)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Gemcutting)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsGemcutting")))
        end,
      },
      Variables={
        "Craft (Gemcutting)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Gemcutting)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Gemcutting)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Gemcutting)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Glass)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsGlass")))
        end,
      },
      Variables={
        "Craft (Glass)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Glass)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Glass)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Glass)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Jewelry)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsJewelry")))
        end,
      },
      Variables={
        "Craft (Jewelry)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Jewelry)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Jewelry)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Jewelry)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Leather)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsLeather")))
        end,
      },
      Variables={
        "Craft (Leather)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Leather)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Leather)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Leather)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Locks)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsLocks")))
        end,
      },
      Variables={
        "Craft (Locks)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Locks)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Locks)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Locks)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Paintings)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsPaintings")))
        end,
      },
      Variables={
        "Craft (Paintings)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Paintings)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Paintings)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Paintings)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Pottery)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsPottery")))
        end,
      },
      Variables={
        "Craft (Pottery)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Pottery)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Pottery)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Pottery)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Sculptures)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsSculptures")))
        end,
      },
      Variables={
        "Craft (Sculptures)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Sculptures)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Sculptures)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Sculptures)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Ships)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsShips")))
        end,
      },
      Variables={
        "Craft (Ships)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Ships)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Ships)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Ships)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Shoes)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsShoes")))
        end,
      },
      Variables={
        "Craft (Shoes)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Shoes)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Shoes)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Shoes)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Stonemasonry)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsStonemasonry")))
        end,
      },
      Variables={
        "Craft (Stonemasonry)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Stonemasonry)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Stonemasonry)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Stonemasonry)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Traps)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftTools")))
        end,
      },
      Variables={
        "Craft (Traps)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Traps)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Traps)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Traps)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Weapons)",
  KeyStat="INT",
  SourcePage="p.91",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("CraftToolsWeapons")))
        end,
      },
      Variables={
        "Craft (Weapons)",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Craft (Weapons)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Weapons)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Weapons)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
})
DefineSkill({
  Name="Craft (Untrained)",
  KeyStat="INT",
  SourcePage="p.91",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Craft",
  },
})
DefineSkill({
  Name="Diplomacy",
  KeyStat="CHA",
  SourcePage="p.93",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Diplomacy") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Diplomacy").ranks >= 1)
        end,
      },
      Variables={
        "Diplomacy",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Base",
  },
})
DefineSkill({
  Name="Disable Device",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.94",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("ThiefTools")))
        end,
      },
      Variables={
        "Disable Device",
      },
    },
    Target="PC",
  },
  TemporaryBonusDescription={
    Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
  },
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Disable Device") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Disable Device").ranks >= 1)
        end,
      },
      Variables={
        "Disable Device",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Disguise",
  KeyStat="CHA",
  SourcePage="p.95",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Disguise") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Disguise").ranks >= 1)
        end,
      },
      Variables={
        "Disguise",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Base",
  },
})
DefineSkill({
  Name="Escape Artist",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.95",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Escape Artist") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Escape Artist").ranks >= 1)
        end,
      },
      Variables={
        "Escape Artist",
      },
    },
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Fly",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.96",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Fly") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Fly").ranks >= 1)
        end,
      },
      Variables={
        "Fly",
      },
    },
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Handle Animal",
  KeyStat="CHA",
  SourcePage="p.97",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Handle Animal") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Handle Animal").ranks >= 1)
        end,
      },
      Variables={
        "Handle Animal",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Base",
  },
})
DefineSkill({
  Name="Heal",
  KeyStat="WIS",
  SourcePage="p.98",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Heal") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Heal").ranks >= 1)
        end,
      },
      Variables={
        "Heal",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Base",
  },
})
DefineSkill({
  Name="Intimidate",
  KeyStat="CHA",
  SourcePage="p.99",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Intimidate") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Intimidate").ranks >= 1)
        end,
      },
      Variables={
        "Intimidate",
      },
    },
  },
  Types={
    "Charisma",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Arcana)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Arcana)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Arcana)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Arcana)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Dungeoneering)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Dungeoneering)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Dungeoneering)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Dungeoneering)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Engineering)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Engineering)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Engineering)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Engineering)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Geography)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Geography)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Geography)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Geography)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (History)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (History)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (History)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (History)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Local)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Local)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Local)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Local)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Nature)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Nature)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Nature)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Nature)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Nobility)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Nobility)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Nobility)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Nobility)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Planes)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Planes)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Planes)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Planes)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Religion)",
  KeyStat="INT",
  SourcePage="p.100",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Knowledge (Religion)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Religion)").ranks >= 1)
        end,
      },
      Variables={
        "Knowledge (Religion)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
})
DefineSkill({
  Name="Knowledge (Untrained)",
  KeyStat="INT",
  SourcePage="p.100",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1) or character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.IsAnyType("Bardic Knowledge") then return true end
        return false
      end)
    end,
  },
  Types={
    "Intelligence",
    "Knowledge",
  },
})
DefineSkill({
  Name="Linguistics",
  Choice={
    Choose=ChooseLanguage(function (character, lang)
      return ((not (character.HasLanguage(lang)) and (((lang.IsType("Spoken"))))))
    end),
  },
  KeyStat="INT",
  Selections=Formula("Linguisitcs_NumLanguages"),
  SourcePage="p.101",
  UseUntrained=false,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "%LIST")
      end,
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Linguistics") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Linguistics").ranks >= 1)
        end,
      },
      Variables={
        "Linguistics",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Base",
  },
})
DefineSkill({
  Name="Perception",
  KeyStat="WIS",
  SourcePage="p.102",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perception") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perception").ranks >= 1)
        end,
      },
      Variables={
        "Perception",
      },
    },
  },
  Types={
    "Wisdom",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Act)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Act)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Act)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Act)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Comedy)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Comedy)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Comedy)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Comedy)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Dance)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Dance)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Dance)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Dance)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Keyboard Instruments)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Keyboard Instruments)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Keyboard Instruments)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Keyboard Instruments)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Oratory)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Oratory)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Oratory)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Oratory)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Percussion Instruments)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Percussion Instruments)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Percussion Instruments)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Percussion Instruments)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Sing)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Sing)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Sing)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Sing)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (String Instruments)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (String Instruments)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (String Instruments)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (String Instruments)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Wind Instruments)",
  KeyStat="CHA",
  SourcePage="p.102",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Perform (Wind Instruments)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Wind Instruments)").ranks >= 1)
        end,
      },
      Variables={
        "Perform (Wind Instruments)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
})
DefineSkill({
  Name="Perform (Untrained)",
  KeyStat="CHA",
  SourcePage="p.102",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Perform",
  },
})
DefineSkill({
  Name="Profession (Architect)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Architect)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Architect)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Architect)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Baker)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Baker)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Baker)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Baker)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Barrister)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Barrister)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Barrister)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Barrister)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Brewer)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Brewer)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Brewer)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Brewer)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Butcher)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Butcher)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Butcher)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Butcher)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Clerk)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Clerk)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Clerk)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Clerk)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Cook)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Cook)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Cook)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Cook)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Courtesan)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Courtesan)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Courtesan)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Courtesan)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Driver)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Driver)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Driver)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Driver)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Engineer)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Engineer)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Engineer)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Engineer)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Farmer)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Farmer)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Farmer)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Farmer)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Fisherman)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Fisherman)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Fisherman)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Fisherman)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Gambler)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Gambler)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Gambler)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Gambler)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Gardener)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Gardener)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Gardener)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Gardener)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Herbalist)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Herbalist)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Herbalist)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Herbalist)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Innkeeper)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Innkeeper)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Innkeeper)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Innkeeper)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Librarian)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Librarian)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Librarian)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Librarian)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Merchant)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Merchant)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Merchant)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Merchant)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Midwife)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Midwife)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Midwife)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Midwife)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Miller)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Miller)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Miller)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Miller)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Miner)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Miner)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Miner)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Miner)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Porter)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Porter)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Porter)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Porter)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Sailor)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Sailor)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Sailor)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Sailor)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Scribe)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Scribe)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Scribe)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Scribe)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Shepherd)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Shepherd)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Shepherd)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Shepherd)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Soldier)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Soldier)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Soldier)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Soldier)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Soothsayer)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Soothsayer)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Soothsayer)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Soothsayer)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Stable Master)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Stable Master)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Stable Master)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Stable Master)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Tanner)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Tanner)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Tanner)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Tanner)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Trapper)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Trapper)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Trapper)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Trapper)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Profession (Woodcutter)",
  KeyStat="WIS",
  SourcePage="p.103",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Profession (Woodcutter)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Woodcutter)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Woodcutter)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
})
DefineSkill({
  Name="Ride",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.103",
  TemporaryBonus={
    Bonus={
      Category="SKILL",
      Formula=Formula("-5"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return not ((character.HasItemOfType("Saddle")))
        end,
      },
      Variables={
        "Ride",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="If you are riding bareback, or attempt to ride a creature that is ill suited as a mount, you take a -5 penalty on Ride checks.",
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Ride") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Ride").ranks >= 1)
        end,
      },
      Variables={
        "Ride",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Sense Motive",
  KeyStat="WIS",
  SourcePage="p.104",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Sense Motive") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Sense Motive").ranks >= 1)
        end,
      },
      Variables={
        "Sense Motive",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Wisdom",
    "Base",
  },
})
DefineSkill({
  Name="Sleight of Hand",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.105",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Sleight of Hand") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Sleight of Hand").ranks >= 1)
        end,
      },
      Variables={
        "Sleight of Hand",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Spellcraft",
  KeyStat="INT",
  SourcePage="p.106",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Spellcraft") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Spellcraft").ranks >= 1)
        end,
      },
      Variables={
        "Spellcraft",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Intelligence",
    "Base",
  },
})
DefineSkill({
  Name="Stealth",
  ArmorCheckPenalty="Yes",
  KeyStat="DEX",
  SourcePage="p.106",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Stealth") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Stealth").ranks >= 1)
        end,
      },
      Variables={
        "Stealth",
      },
    },
  },
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Survival",
  KeyStat="WIS",
  SourcePage="p.107",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Survival") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Survival").ranks >= 1)
        end,
      },
      Variables={
        "Survival",
      },
    },
  },
  Types={
    "Wisdom",
    "Base",
  },
})
DefineSkill({
  Name="Swim",
  ArmorCheckPenalty="Yes",
  KeyStat="STR",
  SourcePage="p.108",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Swim") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Swim").ranks >= 1)
        end,
      },
      Variables={
        "Swim",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("RacialBonus_Swim"),
      Type={
        Name="Racial",
      },
      Conditions={
        function (character, item, sources)
          return (character.HasMovement("Swim", 1))
        end,
      },
      Variables={
        "Swim",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "RacialBonus_Swim",
      },
    },
  },
  Types={
    "Strength",
    "ACHECK",
    "Base",
  },
})
DefineSkill({
  Name="Use Magic Device",
  KeyStat="CHA",
  SourcePage="p.108",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
      },
      Conditions={
        function (character, item, sources)
          return ((character.IsClassSkill("Use Magic Device") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Use Magic Device").ranks >= 1)
        end,
      },
      Variables={
        "Use Magic Device",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
  Types={
    "Charisma",
    "Base",
  },
})
ModifySkill({
  Name="Acrobatics",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Acrobatics)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Acrobatics",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Acrobatics)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Acrobatics").ranks >= 10)
        end,
      },
      Variables={
        "Acrobatics",
      },
    },
  },
})
ModifySkill({
  Name="Appraise",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Appraise)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Appraise",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Appraise)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Appraise").ranks >= 10)
        end,
      },
      Variables={
        "Appraise",
      },
    },
  },
})
ModifySkill({
  Name="Bluff",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Bluff)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bluff",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Bluff)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Bluff").ranks >= 10)
        end,
      },
      Variables={
        "Bluff",
      },
    },
  },
})
ModifySkill({
  Name="Climb",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Climb)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Climb",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Climb)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Climb").ranks >= 10)
        end,
      },
      Variables={
        "Climb",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Alchemy)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Alchemy))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Alchemy)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Alchemy))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Alchemy)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Alchemy)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Armor)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Armor))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Armor)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Armor))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Armor)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Armor)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Baskets)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Baskets))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Baskets)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Baskets))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Baskets)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Baskets)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Books)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Books))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Books)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Books))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Books)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Books)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Bows)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Bows))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Bows)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Bows))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Bows)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Bows)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Calligraphy)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Calligraphy))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Calligraphy)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Calligraphy))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Calligraphy)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Calligraphy)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Carpentry)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Carpentry))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Carpentry)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Carpentry))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Carpentry)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Carpentry)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Cloth)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Cloth))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Cloth)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Cloth))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Cloth)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Cloth)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Clothing)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Clothing))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Clothing)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Clothing))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Clothing)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Clothing)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Glass)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Glass))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Glass)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Glass))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Glass)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Glass)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Jewelry)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Jewelry))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Jewelry)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Jewelry))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Jewelry)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Jewelry)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Leather)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Leather))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Leather)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Leather))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Leather)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Leather)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Locks)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Locks))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Locks)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Locks))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Locks)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Locks)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Paintings)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Paintings))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Paintings)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Paintings))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Paintings)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Paintings)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Pottery)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Pottery))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Pottery)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Pottery))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Pottery)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Pottery)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Sculptures)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Sculptures))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Sculptures)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Sculptures))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Sculptures)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Sculptures)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Ships)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Ships))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Ships)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Ships))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Ships)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Ships)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Shoes)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Shoes))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Shoes)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Shoes))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Shoes)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Shoes)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Stonemasonry)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Stonemasonry))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Stonemasonry)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Stonemasonry))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Stonemasonry)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Stonemasonry)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Traps)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Traps))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Traps)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Traps))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Traps)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Traps)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Untrained)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Untrained))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Untrained)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Untrained))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Untrained)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Untrained)",
      },
    },
  },
})
ModifySkill({
  Name="Craft (Weapons)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Weapons))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Craft (Weapons)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Craft (Weapons))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Weapons)").ranks >= 10)
        end,
      },
      Variables={
        "Craft (Weapons)",
      },
    },
  },
})
ModifySkill({
  Name="Diplomacy",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Diplomacy)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Diplomacy",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Diplomacy)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Diplomacy").ranks >= 10)
        end,
      },
      Variables={
        "Diplomacy",
      },
    },
  },
})
ModifySkill({
  Name="Disable Device",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Disable Device)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Disable Device",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Disable Device)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Disable Device").ranks >= 10)
        end,
      },
      Variables={
        "Disable Device",
      },
    },
  },
})
ModifySkill({
  Name="Disguise",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Disguise)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Disguise",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Disguise)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Disguise").ranks >= 10)
        end,
      },
      Variables={
        "Disguise",
      },
    },
  },
})
ModifySkill({
  Name="Escape Artist",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Escape Artist)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Escape Artist",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Escape Artist)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Escape Artist").ranks >= 10)
        end,
      },
      Variables={
        "Escape Artist",
      },
    },
  },
})
ModifySkill({
  Name="Fly",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Fly)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fly",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Fly)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Fly").ranks >= 10)
        end,
      },
      Variables={
        "Fly",
      },
    },
  },
})
ModifySkill({
  Name="Handle Animal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Handle Animal)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Handle Animal",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Handle Animal)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Handle Animal").ranks >= 10)
        end,
      },
      Variables={
        "Handle Animal",
      },
    },
  },
})
ModifySkill({
  Name="Heal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Heal)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Heal",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Heal)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Heal").ranks >= 10)
        end,
      },
      Variables={
        "Heal",
      },
    },
  },
})
ModifySkill({
  Name="Intimidate",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Intimidate)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Intimidate",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Intimidate)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Intimidate").ranks >= 10)
        end,
      },
      Variables={
        "Intimidate",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Arcana)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Arcana))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Arcana)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Arcana))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Arcana)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Arcana)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Dungeoneering)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Dungeoneering))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Dungeoneering)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Dungeoneering))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Dungeoneering)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Dungeoneering)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Engineering)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Engineering))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Engineering)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Engineering))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Engineering)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Engineering)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Geography)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Geography))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Geography)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Geography))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Geography)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Geography)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (History)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (History))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (History)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (History))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (History)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (History)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Local)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Local))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Local)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Local))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Local)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Local)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Nature)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Nature))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Nature)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Nature))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Nature)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Nature)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Nobility)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Nobility))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Nobility)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Nobility))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Nobility)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Nobility)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Planes)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Planes))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Planes)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Planes))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Planes)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Planes)",
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Religion)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Religion))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Knowledge (Religion)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Knowledge (Religion))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Knowledge (Religion)").ranks >= 10)
        end,
      },
      Variables={
        "Knowledge (Religion)",
      },
    },
  },
})
ModifySkill({
  Name="Linguistics",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Linguistics)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Linguistics",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Linguistics)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Linguistics").ranks >= 10)
        end,
      },
      Variables={
        "Linguistics",
      },
    },
  },
})
ModifySkill({
  Name="Perception",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perception)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perception)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perception").ranks >= 10)
        end,
      },
      Variables={
        "Perception",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Act)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Act))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Act)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Act))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Act)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Act)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Comedy)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Comedy))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Comedy)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Comedy))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Comedy)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Comedy)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Dance)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Dance))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Dance)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Dance))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Dance)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Dance)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Keyboard Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Keyboard Instruments))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Keyboard Instruments)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Keyboard Instruments))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Keyboard Instruments)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Keyboard Instruments)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Oratory)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Oratory))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Oratory)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Oratory))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Oratory)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Oratory)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Percussion Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Percussion Instruments))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Percussion Instruments)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Percussion Instruments))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Percussion Instruments)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Percussion Instruments)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Sing)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Sing))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Sing)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Sing))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Sing)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Sing)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (String Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (String Instruments))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (String Instruments)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (String Instruments))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (String Instruments)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (String Instruments)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Untrained)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Untrained))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Untrained)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Untrained))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Untrained)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Untrained)",
      },
    },
  },
})
ModifySkill({
  Name="Perform (Wind Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Wind Instruments))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Perform (Wind Instruments)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Perform (Wind Instruments))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Perform (Wind Instruments)").ranks >= 10)
        end,
      },
      Variables={
        "Perform (Wind Instruments)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Architect)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Architect))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Architect)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Architect))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Architect)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Architect)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Baker)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Baker))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Baker)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Baker))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Baker)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Baker)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Barrister)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Barrister))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Barrister)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Barrister))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Barrister)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Barrister)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Brewer)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Brewer))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Brewer)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Brewer))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Brewer)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Brewer)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Butcher)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Butcher))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Butcher)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Butcher))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Butcher)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Butcher)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Clerk)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Clerk))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Clerk)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Clerk))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Clerk)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Clerk)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Cook)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Cook))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Cook)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Cook))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Cook)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Cook)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Courtesan)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Courtesan))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Courtesan)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Courtesan))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Courtesan)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Courtesan)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Driver)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Driver))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Driver)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Driver))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Driver)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Driver)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Engineer)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Engineer))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Engineer)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Engineer))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Engineer)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Engineer)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Farmer)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Farmer))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Farmer)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Farmer))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Farmer)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Farmer)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Fisherman)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Fisherman))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Fisherman)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Fisherman))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Fisherman)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Fisherman)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Gambler)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Gambler))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Gambler)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Gambler))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Gambler)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Gambler)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Gardener)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Gardener))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Gardener)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Gardener))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Gardener)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Gardener)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Herbalist)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Herbalist))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Herbalist)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Herbalist))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Herbalist)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Herbalist)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Innkeeper)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Innkeeper))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Innkeeper)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Innkeeper))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Innkeeper)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Innkeeper)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Librarian)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Librarian))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Librarian)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Librarian))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Librarian)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Librarian)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Merchant)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Merchant))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Merchant)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Merchant))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Merchant)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Merchant)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Midwife)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Midwife))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Midwife)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Midwife))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Midwife)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Midwife)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Miller)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Miller))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Miller)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Miller))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Miller)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Miller)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Miner)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Miner))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Miner)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Miner))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Miner)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Miner)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Porter)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Porter))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Porter)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Porter))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Porter)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Porter)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Sailor)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Sailor))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Sailor)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Sailor))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Sailor)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Sailor)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Scribe)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Scribe))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Scribe)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Scribe))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Scribe)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Scribe)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Shepherd)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Shepherd))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Shepherd)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Shepherd))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Shepherd)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Shepherd)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Soldier)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Soldier))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Soldier)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Soldier))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Soldier)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Soldier)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Stable Master)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Stable Master))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Stable Master)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Stable Master))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Stable Master)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Stable Master)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Tanner)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Tanner))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Tanner)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Tanner))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Tanner)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Tanner)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Trapper)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Trapper))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Trapper)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Trapper))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Trapper)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Trapper)",
      },
    },
  },
})
ModifySkill({
  Name="Profession (Woodcutter)",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Woodcutter))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Woodcutter)",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Profession (Woodcutter))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Woodcutter)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Woodcutter)",
      },
    },
  },
})
ModifySkill({
  Name="Ride",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Ride)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ride",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Ride)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Ride").ranks >= 10)
        end,
      },
      Variables={
        "Ride",
      },
    },
  },
})
ModifySkill({
  Name="Sense Motive",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Sense Motive)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Sense Motive",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Sense Motive)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Sense Motive").ranks >= 10)
        end,
      },
      Variables={
        "Sense Motive",
      },
    },
  },
})
ModifySkill({
  Name="Sleight of Hand",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Sleight of Hand)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Sleight of Hand",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Sleight of Hand)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Sleight of Hand").ranks >= 10)
        end,
      },
      Variables={
        "Sleight of Hand",
      },
    },
  },
})
ModifySkill({
  Name="Spellcraft",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Spellcraft)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Spellcraft",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Spellcraft)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Spellcraft").ranks >= 10)
        end,
      },
      Variables={
        "Spellcraft",
      },
    },
  },
})
ModifySkill({
  Name="Stealth",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Stealth)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Stealth",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Stealth)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Stealth").ranks >= 10)
        end,
      },
      Variables={
        "Stealth",
      },
    },
  },
})
ModifySkill({
  Name="Survival",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Survival)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Survival",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Survival)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Survival").ranks >= 10)
        end,
      },
      Variables={
        "Survival",
      },
    },
  },
})
ModifySkill({
  Name="Swim",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Swim)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Swim",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Swim)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Swim").ranks >= 10)
        end,
      },
      Variables={
        "Swim",
      },
    },
  },
})
ModifySkill({
  Name="Use Magic Device",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Use Magic Device)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Use Magic Device",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Skill Focus (Use Magic Device)" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Use Magic Device").ranks >= 10)
        end,
      },
      Variables={
        "Use Magic Device",
      },
    },
  },
})
DefineSkill({
  Name="Untrained Strength",
  SortKey="z",
  KeyStat="STR",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Dexterity",
  SortKey="z",
  KeyStat="DEX",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Intelligence",
  SortKey="z",
  KeyStat="INT",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Wisdom",
  SortKey="z",
  KeyStat="WIS",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Charisma",
  SortKey="z",
  KeyStat="CHA",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Untrained)",
  KeyStat="WIS",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Disable Device",
  Key="Untrained ~ Disable Device",
  KeyStat="DEX",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return not ((character.Skill("Disable Device").ranks >= 1))
    end,
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Handle Animal",
  Key="Untrained ~ Handle Animal",
  KeyStat="CHA",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return not ((character.Skill("Handle Animal").ranks >= 1))
    end,
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Linguistics",
  Key="Untrained ~ Linguistics",
  KeyStat="INT",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return not ((character.Skill("Linguistics").ranks >= 1))
    end,
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Sleight of Hand",
  Key="Untrained ~ Sleight of Hand",
  KeyStat="DEX",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return not ((character.Skill("Sleight of Hand").ranks >= 1))
    end,
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Spellcraft",
  Key="Untrained ~ Spellcraft",
  KeyStat="INT",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return not ((character.Skill("Spellcraft").ranks >= 1))
    end,
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Use Magic Device",
  Key="Untrained ~ Use Magic Device",
  KeyStat="CHA",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return not ((character.Skill("Use Magic Device").ranks >= 1))
    end,
    function (character, item, sources)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
