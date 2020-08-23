-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_skills.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
DefineSkill({
  Name="Bluff (Perform (Act))",
  KeyStat="CHA",
  SourcePage="p.90",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Act" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Disguise (Perform (Act))",
  KeyStat="CHA",
  SourcePage="p.95",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Act" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Bluff (Perform (Comedy))",
  KeyStat="CHA",
  SourcePage="p.90",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Comedy" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Intimidate (Perform (Comedy))",
  KeyStat="CHA",
  SourcePage="p.99",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Comedy" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Acrobatics (Perform (Dance))",
  KeyStat="CHA",
  SourcePage="p.87",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Dance" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Fly (Perform (Dance))",
  KeyStat="CHA",
  SourcePage="p.96",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Dance" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Diplomacy (Perform (Keyboard Instruments))",
  KeyStat="CHA",
  SourcePage="p.93",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Keyboard Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Intimidate (Perform (Keyboard Instruments))",
  KeyStat="CHA",
  SourcePage="p.104",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Keyboard Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Diplomacy (Perform (Oratory))",
  KeyStat="CHA",
  SourcePage="p.93",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Oratory" then return true end
        if ability.Name == "Skald Versatile Performance ~ Oratory" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Sense Motive (Perform (Oratory))",
  KeyStat="CHA",
  SourcePage="p.104",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Oratory" then return true end
        if ability.Name == "Skald Versatile Performance ~ Oratory" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Handle Animal (Perform (Percussion Instruments))",
  KeyStat="CHA",
  SourcePage="p.97",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Percussion Instruments" then return true end
        if ability.Name == "Skald Versatile Performance ~ Percussion Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Intimidate (Perform (Percussion Instruments))",
  KeyStat="CHA",
  SourcePage="p.99",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Percussion Instruments" then return true end
        if ability.Name == "Skald Versatile Performance ~ Percussion Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Bluff (Perform (Sing))",
  KeyStat="CHA",
  SourcePage="p.90",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Sing" then return true end
        if ability.Name == "Skald Versatile Performance ~ Sing" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Sense Motive (Perform (Sing))",
  KeyStat="CHA",
  SourcePage="p.104",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Sing" then return true end
        if ability.Name == "Skald Versatile Performance ~ Sing" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Bluff (Perform (String Instruments))",
  KeyStat="CHA",
  SourcePage="p.90",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ String Instruments" then return true end
        if ability.Name == "Skald Versatile Performance ~ String Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Diplomacy (Perform (String Instruments))",
  KeyStat="CHA",
  SourcePage="p.93",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ String Instruments" then return true end
        if ability.Name == "Skald Versatile Performance ~ String Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Diplomacy (Perform (Wind Instruments))",
  KeyStat="CHA",
  SourcePage="p.93",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Wind Instruments" then return true end
        if ability.Name == "Skald Versatile Performance ~ Wind Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Handle Animal (Perform (Wind Instruments))",
  KeyStat="CHA",
  SourcePage="p.97",
  UseUntrained=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Versatile Performance ~ Wind Instruments" then return true end
        if ability.Name == "Skald Versatile Performance ~ Wind Instruments" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  IsClassSkillFor={
    "ALL",
  },
  Types={
    "SkillUse",
  },
})
DefineSkill({
  Name="Samurai Mount",
  KeyStat="DEX",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Special Ability" then return false end
        if ability.Name == "Mount ~ Samurai" then return true end
        return false
      end)
    end,
    function (character, item, sources)
      return (IsRuleEnabled("DISPLAYSKILLUSE"))
    end,
  },
  Types={
    "SkillUse",
  },
})
ModifySkill({
  Name="Acrobatics",
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("floor((var(\"MOVE[Walk]\")-30)/10)*4"),
      Type={
        Name="Move",
      },
      Variables={
        "Acrobatics=When Jumping",
      },
    },
  },
})
ModifySkill({
  Name="Ride",
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("SamuraiMountACP"),
      Variables={
        "Samurai Mount",
      },
    },
    {
      Category="VAR",
      Formula=Formula("var(\"ARMOR.0.ACCHECK\")"),
      Variables={
        "RideACP",
      },
    },
    {
      Category="VAR",
      Formula=Formula("RideACP-(RideACP*2)"),
      Variables={
        "SamuraiMountACP",
      },
    },
  },
})
DefineSkill({
  Name="Profession (Fortune-teller)",
  KeyStat="WIS",
  SourceDate="2010-11",
  SourceLong="Inner Sea Primer",
  SourcePage="p.103",
  SourceShort="ISP",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/companion/pathfinderRPG/v5748btpy8hih",
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
          return ((character.IsClassSkill("Profession (Fortune-teller)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Fortune-teller)").ranks >= 1)
        end,
      },
      Variables={
        "Profession (Fortune-teller)",
      },
    },
  },
  Types={
    "Wisdom",
    "Profession",
  },
})
ModifySkill({
  Name="Profession (Fortune-teller)",
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
            if ability.Name == "Skill Focus (Profession (Fortune-teller))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "Profession (Fortune-teller)",
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
            if ability.Name == "Skill Focus (Profession (Fortune-teller))" then return true end
            return false
          end)
        end,
        function (character, item, sources)
          return (character.Skill("Profession (Fortune-teller)").ranks >= 10)
        end,
      },
      Variables={
        "Profession (Fortune-teller)",
      },
    },
  },
})
DefineSkill({
  Name="Craft (Clockwork)",
  KeyStat="INT",
  SourceLong="Bestiary 3",
  SourcePage="p.54",
  SourceShort="B3",
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
          return ((character.IsClassSkill("Craft (Clockwork)") and 1 or 0)) >= 1
        end,
        function (character, item, sources)
          return (character.Skill("Craft (Clockwork)").ranks >= 1)
        end,
      },
      Variables={
        "Craft (Clockwork)",
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
ModifySkill({
  Name="Acrobatics",
  Situations={
    "When Jumping",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Jump/Underground",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Move Through",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Move through threatened squares",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Swing",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Underground",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Reduce Damage from Falls",
  },
})
ModifySkill({
  Name="Appraise",
  Situations={
    "to assess nonmagical metals or gemstones",
  },
})
ModifySkill({
  Name="Appraise",
  Situations={
    "to assess treasure found in or under the water",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Feint",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Imitate Voice",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Lie",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Pass Hidden Message",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Potentially Sexually Attracted",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Secret Messages",
    "Conceal Identity",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Sexually Attracted",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "While using change shape ability",
  },
})
ModifySkill({
  Name="Climb",
  Situations={
    "Rope",
  },
})
ModifySkill({
  Name="Climb",
  Situations={
    "Underground",
  },
})
ModifySkill({
  Name="Craft (Alchemy)",
  Situations={
    "Create item",
  },
})
ModifySkill({
  Name="Craft (Alchemy)",
  Situations={
    "Brew Poisons",
  },
})
ModifySkill({
  Name="Craft (Alchemy)",
  Situations={
    "to make poison",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "City Officials",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "to gather information",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Influence Monster",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Potentially Sexually Attracted",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "interacting with dwarves",
  },
})
ModifySkill({
  Name="Disable Device",
  Situations={
    "Magical Traps",
    "Traps",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "to appear human",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "Appear as cloak",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "As Medium humanoid",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "Mimic objects",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "When using change shape",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "While using change shape ability",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "as original race",
  },
})
ModifySkill({
  Name="Escape Artist",
  Situations={
    "Escape manacles or ropes",
  },
})
ModifySkill({
  Name="Handle Animal",
  Situations={
    "Push Animal",
  },
})
ModifySkill({
  Name="Handle Animal",
  Situations={
    "Reptiles",
  },
})
ModifySkill({
  Name="Heal",
  Situations={
    "Animal",
  },
})
ModifySkill({
  Name="Heal",
  Situations={
    "Treat disease and poison",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "Demoralize Animal",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "interacting with dwarves",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "Mounted",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "to demoralize",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "Elders",
  },
})
ModifySkill({
  Name="Knowledge (Arcana)",
  Situations={
    "ID monster",
  },
})
ModifySkill({
  Name="Knowledge (Arcana)",
  Situations={
    "to identify dragons",
  },
})
ModifySkill({
  Name="Knowledge (Dungeoneering)",
  Situations={
    "ID monster",
  },
})
ModifySkill({
  Name="Knowledge (Dungeoneering)",
  Situations={
    "Navigate",
  },
})
ModifySkill({
  Name="Knowledge (Dungeoneering)",
  Situations={
    "Underground",
  },
})
ModifySkill({
  Name="Knowledge (History)",
  Situations={
    "pertaining to dwarves or their enemies",
  },
})
ModifySkill({
  Name="Knowledge (Local)",
  Situations={
    "ID monster",
  },
})
ModifySkill({
  Name="Knowledge (Local)",
  Situations={
    "local art or music scene",
  },
})
ModifySkill({
  Name="Knowledge (Nature)",
  Situations={
    "ID monster",
  },
})
ModifySkill({
  Name="Knowledge (Planes)",
  Situations={
    "ID monster",
  },
})
ModifySkill({
  Name="Knowledge (Religion)",
  Situations={
    "ID monster",
  },
})
ModifySkill({
  Name="Linguistics",
  Situations={
    "Forgery",
  },
})
ModifySkill({
  Name="Linguistics",
  Situations={
    "Identify Forgery",
  },
})
ModifySkill({
  Name="Linguistics",
  Situations={
    "Decipher unfamiliar languages",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Blindsense",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Determine Food Spoiled",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Identify Potion",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "In dim light or darkness",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Notice Creatures Underwater",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "to notice flying creatures",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Notice Hidden Object",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "to notice unusual stonework",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Notice unusual stonework/Underground",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Opposed",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Precious metals and gemstones",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Trapfinding",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Underground",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Underwater",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "When listening",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "When using blindsense",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "sight- and hearing-based",
  },
})
ModifySkill({
  Name="Ride",
  Situations={
    "Samurai Mount",
  },
})
ModifySkill({
  Name="Sense Motive",
  Situations={
    "Secret Messages",
  },
})
ModifySkill({
  Name="Sense Motive",
  Situations={
    "Sense Enchantment",
  },
})
ModifySkill({
  Name="Sense Motive",
  Situations={
    "to get a hunch about a social situation",
  },
})
ModifySkill({
  Name="Sleight of Hand",
  Situations={
    "Conceal Small Object",
  },
})
ModifySkill({
  Name="Sleight of Hand",
  Situations={
    "Conceal Weapon",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "decipher the writing on a scroll",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "Cast Defensively",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "Identify Curse or Emotion",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "Identify Enchantment",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "Identify Magic Auras and Items",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "to identify magic item properties",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "concealed in metal objects or debris",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Darkness or smoke",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In ambush",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In bright light",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In brush",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In caverns",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In darkness",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In deserts",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In dim light",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In dim light or darkness",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In forests",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In hilly or rocky areas",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In lair",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In marshes",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In metal or stony areas",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In mud",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In rocky areas",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In rocky terrain",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In sand",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In scrubland or brush",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In shadowy conditions",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In shallow water",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In snow",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In grass",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In stony environs",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In stony or icy areas",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In swamps",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In tall grass",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In thick vegetation",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In vegetation",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In water",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In webs",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Load Crossbow",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Move Silently",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Poison Ammo",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Sniping",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Stationary for at least one round",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Underground",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Underwater",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "When moving",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "When submerged",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In rocks",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "Undergrowth",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In dense vegetation",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Avoid Becoming Lost in Caverns and Rocky Areas",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Avoid Getting Lost",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Avoid becoming lost",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Darklands",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Desert",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Find Food",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Follow or identify tracks",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Follow or identify tracks/Underground",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "In forests",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Navigate",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Rainforest",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "while at sea",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "to find and follow tracks made by giants",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Track by scent",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Tracking",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Tracking Undead",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Underground",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Urban",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Get along in the wild",
  },
})
ModifySkill({
  Name="Use Magic Device",
  Situations={
    "Spell Trigger or Spell Completion",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Giant subtype",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Giant subtype",
  },
})
ModifySkill({
  Name="Sense Motive",
  Situations={
    "Giant subtype",
  },
})
ModifySkill({
  Name="Appraise",
  Situations={
    "Giant subtype",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "sight-based",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "Maintain Balance",
  },
})
ModifySkill({
  Name="Acrobatics",
  Situations={
    "on the ground",
  },
})
ModifySkill({
  Name="Appraise",
  Situations={
    "Gems",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Fool Someone",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Using voice",
  },
})
ModifySkill({
  Name="Climb",
  Situations={
    "With spider legs",
  },
})
ModifySkill({
  Name="Climb",
  Situations={
    "Without Rope",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Aberrations",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Demons",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Dromites",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Undead",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Using voice",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Wild Empathy",
  },
})
ModifySkill({
  Name="Disable Device",
  Situations={
    "Traps",
  },
})
ModifySkill({
  Name="Disable Device",
  Situations={
    "Unlock Door",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "As animal of different species",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "As specific animal of same species",
  },
})
ModifySkill({
  Name="Handle Animal",
  Situations={
    "Train Animal",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "Demons",
  },
})
ModifySkill({
  Name="Intimidate",
  Situations={
    "Demoralize",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "At night",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Avoid Surprise",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "Find Secret Doors",
  },
})
ModifySkill({
  Name="Perception",
  Situations={
    "See Through Disguise",
  },
})
ModifySkill({
  Name="Sleight of Hand",
  Situations={
    "Pick pockets of stunned or disabled victims",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "Counterspell",
  },
})
ModifySkill({
  Name="Spellcraft",
  Situations={
    "Identity magic item",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In jungles",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "On plains",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "In urban environments",
  },
})
ModifySkill({
  Name="Stealth",
  Situations={
    "While still",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Find Fresh Water",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "In water",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Jungles",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Plains",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Swamps",
  },
})
ModifySkill({
  Name="Survival",
  Situations={
    "Undergrowth",
  },
})
ModifySkill({
  Name="Swim",
  Situations={
    "Completely Underwater",
  },
})
ModifySkill({
  Name="Use Magic Device",
  Situations={
    "activate item",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Pass messages",
  },
})
ModifySkill({
  Name="Escape Artist",
  Situations={
    "Escape bonds/grapple",
  },
})
ModifySkill({
  Name="Handle Animal",
  Situations={
    "Birds of prey",
  },
})
ModifySkill({
  Name="Knowledge (Planes)",
  Situations={
    "ID demon",
  },
})
ModifySkill({
  Name="Linguistics",
  Situations={
    "Create forgeries",
  },
})
ModifySkill({
  Name="Sense Motive",
  Situations={
    "Resist feint",
  },
})
ModifySkill({
  Name="Handle Animal",
  Situations={
    "Horse",
  },
})
ModifySkill({
  Name="Ride",
  Situations={
    "Horse",
  },
})
ModifySkill({
  Name="Disguise",
  Situations={
    "Inhabiting a corpse",
  },
})
ModifySkill({
  Name="Escape Artist",
  Situations={
    "Not inhabiting a corpse",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Influence evil outsiders",
  },
})
ModifySkill({
  Name="Diplomacy",
  Situations={
    "Persuade others",
  },
})
ModifySkill({
  Name="Bluff",
  Situations={
    "Convince others that a lie is true",
  },
})
