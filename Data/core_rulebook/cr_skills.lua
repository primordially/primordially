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
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Acrobatics",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Acrobatics") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Acrobatics").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.87",
})
DefineSkill({
  Name="Appraise",
  Types={
    "Intelligence",
    "Base",
  },
  KeyStat="INT",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Appraise",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Appraise") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Appraise").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.90",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Bluff",
  Types={
    "Charisma",
    "Base",
  },
  KeyStat="CHA",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Bluff",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Bluff") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Bluff").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.90",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Climb",
  Types={
    "Strength",
    "ACHECK",
    "Base",
  },
  KeyStat="STR",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Climb",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Climb") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Climb").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Climb",
      },
      Formula=Formula("8"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.HasMovement("Climb", 1))) >= 1
        end,
      },
    },
  },
  SourcePage="p.90",
})
DefineSkill({
  Name="Craft (Alchemy)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Alchemy)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Alchemy)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Alchemy)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Armor)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Armor)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Armor)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Armor)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Armor)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsArmor") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Baskets)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Baskets)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Baskets)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Baskets)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Baskets)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsBaskets") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Blacksmithing)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Blacksmithing)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Blacksmithing)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Blacksmithing)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Blacksmithing)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsBlacksmithing") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Books)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Books)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Books)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Books)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Books)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsBooks") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Bows)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Bows)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Bows)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Bows)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Bows)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsBows") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Calligraphy)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Calligraphy)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Calligraphy)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Calligraphy)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Calligraphy)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsCalligraphy") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Carpentry)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Carpentry)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Carpentry)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Carpentry)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Carpentry)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsCarpentry") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Cloth)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Cloth)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Cloth)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Cloth)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Cloth)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsCloth") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Clothing)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Clothing)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Clothing)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Clothing)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Clothing)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsClothing") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Gemcutting)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Gemcutting)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Gemcutting)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Gemcutting)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Gemcutting)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsGemcutting") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Glass)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Glass)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Glass)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Glass)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Glass)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsGlass") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Jewelry)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Jewelry)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Jewelry)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Jewelry)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Jewelry)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsJewelry") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Leather)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Leather)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Leather)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Leather)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Leather)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsLeather") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Locks)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Locks)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Locks)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Locks)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Locks)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsLocks") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Paintings)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Paintings)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Paintings)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Paintings)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Paintings)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsPaintings") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Pottery)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Pottery)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Pottery)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Pottery)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Pottery)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsPottery") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Sculptures)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Sculptures)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Sculptures)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Sculptures)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Sculptures)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsSculptures") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Ships)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Ships)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Ships)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Ships)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Ships)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsShips") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Shoes)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Shoes)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Shoes)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Shoes)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Shoes)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsShoes") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Stonemasonry)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Stonemasonry)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Stonemasonry)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Stonemasonry)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Stonemasonry)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsStonemasonry") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Traps)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Traps)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Traps)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Traps)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Traps)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftTools") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Weapons)",
  Types={
    "Intelligence",
    "Craft",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Weapons)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Craft (Weapons)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Craft (Weapons)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.91",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Craft (Weapons)",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("CraftToolsWeapons") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Craft (Untrained)",
  Types={
    "Intelligence",
    "Craft",
  },
  KeyStat="INT",
  SourcePage="p.91",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Diplomacy",
  Types={
    "Charisma",
    "Base",
  },
  KeyStat="CHA",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Diplomacy",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Diplomacy") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Diplomacy").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.93",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Disable Device",
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  UseUntrained=false,
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Disable Device",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Disable Device") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Disable Device").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.94",
  TemporaryBonuses={
    Description={
      Format="Craft skill checks are made with a -2 circumstance penalty if improvised tools are used",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="SKILL",
          Variables={
            "Disable Device",
          },
          Formula=Formula("-2"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("ThiefTools") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Disguise",
  Types={
    "Charisma",
    "Base",
  },
  KeyStat="CHA",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Disguise",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Disguise") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Disguise").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.95",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Escape Artist",
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Escape Artist",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Escape Artist") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Escape Artist").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.95",
})
DefineSkill({
  Name="Fly",
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Fly",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Fly") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Fly").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.96",
})
DefineSkill({
  Name="Handle Animal",
  Types={
    "Charisma",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Handle Animal",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Handle Animal") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Handle Animal").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.97",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Heal",
  Types={
    "Wisdom",
    "Base",
  },
  KeyStat="WIS",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Heal",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Heal") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Heal").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.98",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Intimidate",
  Types={
    "Charisma",
    "Base",
  },
  KeyStat="CHA",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Intimidate",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Intimidate") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Intimidate").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.99",
})
DefineSkill({
  Name="Knowledge (Arcana)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Arcana)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Arcana)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Arcana)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Dungeoneering)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Dungeoneering)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Dungeoneering)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Dungeoneering)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Engineering)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Engineering)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Engineering)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Engineering)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Geography)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Geography)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Geography)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Geography)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (History)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (History)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (History)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (History)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Local)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Local)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Local)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Local)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Nature)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Nature)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Nature)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Nature)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Nobility)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Nobility)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Nobility)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Nobility)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Planes)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Planes)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Planes)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Planes)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Religion)",
  Types={
    "Intelligence",
    "Knowledge",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Religion)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Knowledge (Religion)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Knowledge (Religion)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.100",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Knowledge (Untrained)",
  Types={
    "Intelligence",
    "Knowledge",
  },
  KeyStat="INT",
  SourcePage="p.100",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["UseUntrainedSkills"] >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "Special Ability" and (ability.Type == "Bardic Knowledge")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineSkill({
  Name="Linguistics",
  Types={
    "Intelligence",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Choice={
    Choose=ChooseLanguage(function (character, lang)
      return ((not (character.HasLanguage(lang)) and (((lang.IsType("Spoken"))))))
    end),
  },
  Selections=Formula("Linguisitcs_NumLanguages"),
  AutomaticLanguage={
    Selector=function (language)
      return stringMatch(language.Name, "%LIST")
    end,
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Linguistics",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Linguistics") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Linguistics").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.101",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perception",
  Types={
    "Wisdom",
    "Base",
  },
  KeyStat="WIS",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perception") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perception").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
})
DefineSkill({
  Name="Perform (Act)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Act)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Act)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Act)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Comedy)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Comedy)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Comedy)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Comedy)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Dance)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Dance)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Dance)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Dance)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Keyboard Instruments)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Keyboard Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Keyboard Instruments)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Keyboard Instruments)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Oratory)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Oratory)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Oratory)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Oratory)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Percussion Instruments)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Percussion Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Percussion Instruments)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Percussion Instruments)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Sing)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Sing)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Sing)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Sing)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (String Instruments)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (String Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (String Instruments)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (String Instruments)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Wind Instruments)",
  Types={
    "Charisma",
    "Perform",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Wind Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Perform (Wind Instruments)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Perform (Wind Instruments)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Perform (Untrained)",
  Types={
    "Charisma",
    "Perform",
  },
  KeyStat="CHA",
  SourcePage="p.102",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Architect)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Architect)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Architect)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Architect)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Baker)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Baker)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Baker)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Baker)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Barrister)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Barrister)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Barrister)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Barrister)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Brewer)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Brewer)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Brewer)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Brewer)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Butcher)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Butcher)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Butcher)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Butcher)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Clerk)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Clerk)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Clerk)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Clerk)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Cook)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Cook)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Cook)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Cook)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Courtesan)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Courtesan)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Courtesan)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Courtesan)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Driver)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Driver)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Driver)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Driver)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Engineer)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Engineer)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Engineer)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Engineer)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Farmer)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Farmer)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Farmer)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Farmer)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Fisherman)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Fisherman)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Fisherman)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Fisherman)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Gambler)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Gambler)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Gambler)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Gambler)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Gardener)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Gardener)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Gardener)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Gardener)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Herbalist)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Herbalist)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Herbalist)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Herbalist)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Innkeeper)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Innkeeper)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Innkeeper)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Innkeeper)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Librarian)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Librarian)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Librarian)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Librarian)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Merchant)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Merchant)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Merchant)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Merchant)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Midwife)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Midwife)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Midwife)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Midwife)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Miller)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Miller)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Miller)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Miller)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Miner)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Miner)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Miner)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Miner)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Porter)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Porter)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Porter)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Porter)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Sailor)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Sailor)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Sailor)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Sailor)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Scribe)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Scribe)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Scribe)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Scribe)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Shepherd)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Shepherd)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Shepherd)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Shepherd)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Soldier)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Soldier)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Soldier)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Soldier)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Soothsayer)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Soothsayer)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Soothsayer)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Soothsayer)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Stable Master)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Stable Master)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Stable Master)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Stable Master)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Tanner)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Tanner)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Tanner)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Tanner)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Trapper)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Trapper)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Trapper)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Trapper)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Woodcutter)",
  Types={
    "Wisdom",
    "Profession",
    "Base",
  },
  KeyStat="WIS",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Woodcutter)",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Profession (Woodcutter)") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Profession (Woodcutter)").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Ride",
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Ride",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Ride") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Ride").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.103",
  TemporaryBonuses={
    Description={
      Format="If you are riding bareback, or attempt to ride a creature that is ill suited as a mount, you take a -5 penalty on Ride checks.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="SKILL",
          Variables={
            "Ride",
          },
          Formula=Formula("-5"),
          Type={
            Name="Circumstance",
            Replace=false,
            Stack=false,
          },
          Conditions={
            function (character)
              return not (((#filter(character.Items, function (item) return item.IsType("Saddle") end))) >= 1)
            end,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Sense Motive",
  Types={
    "Wisdom",
    "Base",
  },
  KeyStat="WIS",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Sense Motive",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Sense Motive") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Sense Motive").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.104",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Sleight of Hand",
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  UseUntrained=false,
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Sleight of Hand",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Sleight of Hand") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Sleight of Hand").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.105",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Spellcraft",
  Types={
    "Intelligence",
    "Base",
  },
  KeyStat="INT",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Spellcraft",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Spellcraft") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Spellcraft").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.106",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
DefineSkill({
  Name="Stealth",
  Types={
    "Dexterity",
    "ACHECK",
    "Base",
  },
  KeyStat="DEX",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Stealth",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Stealth") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Stealth").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.106",
})
DefineSkill({
  Name="Survival",
  Types={
    "Wisdom",
    "Base",
  },
  KeyStat="WIS",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Survival",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Survival") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Survival").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.107",
})
DefineSkill({
  Name="Swim",
  Types={
    "Strength",
    "ACHECK",
    "Base",
  },
  KeyStat="STR",
  ArmorCheckPenalty="Yes",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Swim",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Swim") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Swim").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Swim",
      },
      Formula=Formula("RacialBonus_Swim"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.HasMovement("Swim", 1))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "RacialBonus_Swim",
      },
      Formula=Formula("8"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.108",
})
DefineSkill({
  Name="Use Magic Device",
  Types={
    "Charisma",
    "Base",
  },
  KeyStat="CHA",
  UseUntrained=false,
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Use Magic Device",
      },
      Formula=Formula("3"),
      Type={
        Name="ClassSkill",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.IsClassSkill("Use Magic Device") and 1 or 0)) >= 1
        end,
        function (character)
          return ((character.Skill("Use Magic Device").ranks >= 1 and 1 or 0)) >= 1
        end,
      },
    },
  },
  SourcePage="p.108",
  Conditions={
    function (character)
      return (character.Variables["AnimalCompanionSkill"] < 1)
    end,
  },
})
ModifySkill({
  Name="Acrobatics",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Acrobatics",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Acrobatics)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Acrobatics",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Acrobatics)")
          end)
        end,
        function (character)
          return ((character.Skill("Acrobatics").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Appraise",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Appraise",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Appraise)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Appraise",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Appraise)")
          end)
        end,
        function (character)
          return ((character.Skill("Appraise").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Bluff",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Bluff",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Bluff)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Bluff",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Bluff)")
          end)
        end,
        function (character)
          return ((character.Skill("Bluff").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Climb",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Climb",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Climb)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Climb",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Climb)")
          end)
        end,
        function (character)
          return ((character.Skill("Climb").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Alchemy)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Alchemy)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Alchemy))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Alchemy)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Alchemy))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Alchemy)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Armor)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Armor)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Armor))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Armor)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Armor))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Armor)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Baskets)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Baskets)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Baskets))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Baskets)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Baskets))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Baskets)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Books)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Books)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Books))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Books)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Books))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Books)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Bows)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Bows)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Bows))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Bows)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Bows))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Bows)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Calligraphy)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Calligraphy)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Calligraphy))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Calligraphy)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Calligraphy))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Calligraphy)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Carpentry)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Carpentry)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Carpentry))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Carpentry)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Carpentry))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Carpentry)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Cloth)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Cloth)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Cloth))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Cloth)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Cloth))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Cloth)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Clothing)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Clothing)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Clothing))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Clothing)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Clothing))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Clothing)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Glass)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Glass)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Glass))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Glass)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Glass))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Glass)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Jewelry)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Jewelry)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Jewelry))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Jewelry)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Jewelry))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Jewelry)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Leather)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Leather)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Leather))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Leather)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Leather))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Leather)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Locks)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Locks)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Locks))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Locks)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Locks))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Locks)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Paintings)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Paintings)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Paintings))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Paintings)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Paintings))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Paintings)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Pottery)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Pottery)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Pottery))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Pottery)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Pottery))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Pottery)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Sculptures)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Sculptures)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Sculptures))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Sculptures)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Sculptures))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Sculptures)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Ships)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Ships)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Ships))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Ships)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Ships))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Ships)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Shoes)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Shoes)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Shoes))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Shoes)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Shoes))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Shoes)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Stonemasonry)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Stonemasonry)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Stonemasonry))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Stonemasonry)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Stonemasonry))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Stonemasonry)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Traps)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Traps)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Traps))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Traps)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Traps))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Traps)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Untrained)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Untrained)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Untrained))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Untrained)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Untrained))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Untrained)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Craft (Weapons)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Weapons)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Weapons))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Craft (Weapons)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Craft (Weapons))")
          end)
        end,
        function (character)
          return ((character.Skill("Craft (Weapons)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Diplomacy",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Diplomacy",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Diplomacy)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Diplomacy",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Diplomacy)")
          end)
        end,
        function (character)
          return ((character.Skill("Diplomacy").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Disable Device",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Disable Device",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Disable Device)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Disable Device",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Disable Device)")
          end)
        end,
        function (character)
          return ((character.Skill("Disable Device").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Disguise",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Disguise",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Disguise)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Disguise",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Disguise)")
          end)
        end,
        function (character)
          return ((character.Skill("Disguise").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Escape Artist",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Escape Artist",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Escape Artist)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Escape Artist",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Escape Artist)")
          end)
        end,
        function (character)
          return ((character.Skill("Escape Artist").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Fly",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Fly",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Fly)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Fly",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Fly)")
          end)
        end,
        function (character)
          return ((character.Skill("Fly").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Handle Animal",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Handle Animal",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Handle Animal)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Handle Animal",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Handle Animal)")
          end)
        end,
        function (character)
          return ((character.Skill("Handle Animal").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Heal",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Heal",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Heal)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Heal",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Heal)")
          end)
        end,
        function (character)
          return ((character.Skill("Heal").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Intimidate",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Intimidate",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Intimidate)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Intimidate",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Intimidate)")
          end)
        end,
        function (character)
          return ((character.Skill("Intimidate").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Arcana)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Arcana)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Arcana))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Arcana)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Arcana))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Arcana)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Dungeoneering)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Dungeoneering)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Dungeoneering))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Dungeoneering)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Dungeoneering))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Dungeoneering)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Engineering)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Engineering)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Engineering))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Engineering)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Engineering))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Engineering)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Geography)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Geography)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Geography))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Geography)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Geography))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Geography)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (History)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (History)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (History))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (History)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (History))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (History)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Local)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Local)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Local))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Local)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Local))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Local)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Nature)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Nature)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Nature))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Nature)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Nature))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Nature)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Nobility)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Nobility)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Nobility))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Nobility)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Nobility))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Nobility)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Planes)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Planes)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Planes))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Planes)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Planes))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Planes)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Knowledge (Religion)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Knowledge (Religion)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Religion))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Knowledge (Religion)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge (Religion))")
          end)
        end,
        function (character)
          return ((character.Skill("Knowledge (Religion)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Linguistics",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Linguistics",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Linguistics)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Linguistics",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Linguistics)")
          end)
        end,
        function (character)
          return ((character.Skill("Linguistics").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perception",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perception)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perception)")
          end)
        end,
        function (character)
          return ((character.Skill("Perception").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Act)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Act)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Act))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Act)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Act))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Act)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Comedy)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Comedy)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Comedy))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Comedy)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Comedy))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Comedy)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Dance)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Dance)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Dance))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Dance)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Dance))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Dance)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Keyboard Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Keyboard Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Keyboard Instruments))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Keyboard Instruments)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Keyboard Instruments))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Keyboard Instruments)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Oratory)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Oratory)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Oratory))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Oratory)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Oratory))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Oratory)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Percussion Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Percussion Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Percussion Instruments))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Percussion Instruments)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Percussion Instruments))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Percussion Instruments)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Sing)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Sing)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Sing))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Sing)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Sing))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Sing)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (String Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (String Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (String Instruments))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (String Instruments)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (String Instruments))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (String Instruments)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Untrained)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Untrained)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Untrained))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Untrained)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Untrained))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Untrained)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Perform (Wind Instruments)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perform (Wind Instruments)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Wind Instruments))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Perform (Wind Instruments)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Perform (Wind Instruments))")
          end)
        end,
        function (character)
          return ((character.Skill("Perform (Wind Instruments)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Architect)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Architect)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Architect))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Architect)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Architect))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Architect)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Baker)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Baker)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Baker))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Baker)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Baker))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Baker)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Barrister)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Barrister)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Barrister))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Barrister)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Barrister))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Barrister)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Brewer)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Brewer)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Brewer))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Brewer)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Brewer))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Brewer)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Butcher)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Butcher)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Butcher))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Butcher)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Butcher))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Butcher)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Clerk)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Clerk)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Clerk))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Clerk)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Clerk))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Clerk)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Cook)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Cook)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Cook))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Cook)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Cook))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Cook)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Courtesan)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Courtesan)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Courtesan))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Courtesan)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Courtesan))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Courtesan)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Driver)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Driver)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Driver))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Driver)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Driver))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Driver)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Engineer)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Engineer)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Engineer))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Engineer)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Engineer))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Engineer)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Farmer)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Farmer)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Farmer))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Farmer)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Farmer))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Farmer)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Fisherman)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Fisherman)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Fisherman))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Fisherman)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Fisherman))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Fisherman)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Gambler)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Gambler)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Gambler))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Gambler)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Gambler))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Gambler)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Gardener)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Gardener)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Gardener))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Gardener)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Gardener))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Gardener)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Herbalist)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Herbalist)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Herbalist))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Herbalist)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Herbalist))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Herbalist)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Innkeeper)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Innkeeper)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Innkeeper))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Innkeeper)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Innkeeper))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Innkeeper)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Librarian)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Librarian)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Librarian))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Librarian)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Librarian))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Librarian)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Merchant)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Merchant)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Merchant))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Merchant)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Merchant))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Merchant)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Midwife)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Midwife)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Midwife))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Midwife)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Midwife))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Midwife)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Miller)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Miller)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Miller))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Miller)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Miller))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Miller)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Miner)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Miner)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Miner))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Miner)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Miner))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Miner)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Porter)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Porter)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Porter))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Porter)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Porter))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Porter)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Sailor)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Sailor)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Sailor))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Sailor)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Sailor))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Sailor)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Scribe)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Scribe)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Scribe))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Scribe)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Scribe))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Scribe)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Shepherd)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Shepherd)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Shepherd))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Shepherd)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Shepherd))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Shepherd)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Soldier)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Soldier)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Soldier))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Soldier)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Soldier))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Soldier)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Stable Master)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Stable Master)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Stable Master))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Stable Master)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Stable Master))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Stable Master)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Tanner)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Tanner)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Tanner))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Tanner)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Tanner))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Tanner)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Trapper)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Trapper)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Trapper))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Trapper)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Trapper))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Trapper)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Profession (Woodcutter)",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Profession (Woodcutter)",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Woodcutter))")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Profession (Woodcutter)",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Profession (Woodcutter))")
          end)
        end,
        function (character)
          return ((character.Skill("Profession (Woodcutter)").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Ride",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Ride",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Ride)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Ride",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Ride)")
          end)
        end,
        function (character)
          return ((character.Skill("Ride").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Sense Motive",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Sense Motive",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Sense Motive)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Sense Motive",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Sense Motive)")
          end)
        end,
        function (character)
          return ((character.Skill("Sense Motive").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Sleight of Hand",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Sleight of Hand",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Sleight of Hand)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Sleight of Hand",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Sleight of Hand)")
          end)
        end,
        function (character)
          return ((character.Skill("Sleight of Hand").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Spellcraft",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Spellcraft",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Spellcraft)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Spellcraft",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Spellcraft)")
          end)
        end,
        function (character)
          return ((character.Skill("Spellcraft").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Stealth",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Stealth",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Stealth)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Stealth",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Stealth)")
          end)
        end,
        function (character)
          return ((character.Skill("Stealth").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Survival",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Survival",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Survival)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Survival",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Survival)")
          end)
        end,
        function (character)
          return ((character.Skill("Survival").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Swim",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Swim",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Swim)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Swim",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Swim)")
          end)
        end,
        function (character)
          return ((character.Skill("Swim").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
ModifySkill({
  Name="Use Magic Device",
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Use Magic Device",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Use Magic Device)")
          end)
        end,
      },
    },
    {
      Category="SKILL",
      Variables={
        "Use Magic Device",
      },
      Formula=Formula("6"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Use Magic Device)")
          end)
        end,
        function (character)
          return ((character.Skill("Use Magic Device").ranks >= 10 and 1 or 0)) >= 1
        end,
      },
    },
  },
})
DefineSkill({
  Name="Untrained Strength",
  KeyStat="STR",
  SortKey="z",
  Conditions={
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Dexterity",
  KeyStat="DEX",
  SortKey="z",
  Conditions={
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Intelligence",
  KeyStat="INT",
  SortKey="z",
  Conditions={
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Wisdom",
  KeyStat="WIS",
  SortKey="z",
  Conditions={
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Untrained Charisma",
  KeyStat="CHA",
  SortKey="z",
  Conditions={
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Profession (Untrained)",
  KeyStat="WIS",
  Conditions={
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Disable Device",
  KeyStat="DEX",
  Conditions={
    function (character)
      return not (((character.Skill("Disable Device").ranks >= 1 and 1 or 0)) >= 1)
    end,
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Handle Animal",
  KeyStat="CHA",
  Conditions={
    function (character)
      return not (((character.Skill("Handle Animal").ranks >= 1 and 1 or 0)) >= 1)
    end,
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Linguistics",
  KeyStat="INT",
  Conditions={
    function (character)
      return not (((character.Skill("Linguistics").ranks >= 1 and 1 or 0)) >= 1)
    end,
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Sleight of Hand",
  KeyStat="DEX",
  Conditions={
    function (character)
      return not (((character.Skill("Sleight of Hand").ranks >= 1 and 1 or 0)) >= 1)
    end,
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Spellcraft",
  KeyStat="INT",
  Conditions={
    function (character)
      return not (((character.Skill("Spellcraft").ranks >= 1 and 1 or 0)) >= 1)
    end,
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
DefineSkill({
  Name="Use Magic Device",
  KeyStat="CHA",
  Conditions={
    function (character)
      return not (((character.Skill("Use Magic Device").ranks >= 1 and 1 or 0)) >= 1)
    end,
    function (character)
      return (character.Variables["UseUntrainedSkills"] >= 1)
    end,
  },
})
