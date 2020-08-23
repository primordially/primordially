-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_abilities_familiar_cr.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "FamiliarGrantedBonus_1",
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "FamiliarGrantedBonus_2",
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "FamiliarGrantedBonus_3",
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "FamiliarGrantedBonus_4",
      },
    },
  },
})
DefineAbility({
  Name="Standard Familiar List",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Bat" or follower.Name == "Cat" or follower.Name == "Hawk" or follower.Name == "Lizard" or follower.Name == "Monkey" or follower.Name == "Owl" or follower.Name == "Rat" or follower.Name == "Raven" or follower.Name == "Toad" or follower.Name == "Viper" or follower.Name == "Weasel"
      end,
      FollowerLevelAdjustment=0,
    },
  },
})
DefineAbility({
  Name="Improved Familiar List",
  Category="Internal",
})
ModifyAbility({
  Name="Improved Familiar List",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Improved Familiar List (3rd Level)",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["FamiliarMasterLVL"] >= 3) or (character.Variables["Caster_Level_Highest__Arcane"] >= 3) or (character.Variables["ImprovedFamiliarQualifierLVL"] >= 3)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Improved Familiar List (5th Level)",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["FamiliarMasterLVL"] >= 5) or (character.Variables["Caster_Level_Highest__Arcane"] >= 5) or (character.Variables["ImprovedFamiliarQualifierLVL"] >= 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Improved Familiar List (7th Level)",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["FamiliarMasterLVL"] >= 7) or (character.Variables["Caster_Level_Highest__Arcane"] >= 7) or (character.Variables["ImprovedFamiliarQualifierLVL"] >= 7)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Improved Familiar List (3rd Level)",
  Category="Internal",
})
ModifyAbility({
  Name="Improved Familiar List (3rd Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Rat (Dire)"
      end,
      FollowerLevelAdjustment=0,
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List (3rd Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Bat (Celestial)" or follower.Name == "Cat (Celestial)" or follower.Name == "Hawk (Celestial)" or follower.Name == "Lizard (Celestial)" or follower.Name == "Monkey (Celestial)" or follower.Name == "Owl (Celestial)" or follower.Name == "Rat (Celestial)" or follower.Name == "Raven (Celestial)" or follower.Name == "Toad (Celestial)" or follower.Name == "Viper (Celestial)" or follower.Name == "Weasel (Celestial)"
      end,
      FollowerLevelAdjustment=0,
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG") or character.IsAlignment("LN") or character.IsAlignment("TN") or character.IsAlignment("CN")
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List (3rd Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Bat (Fiendish)" or follower.Name == "Cat (Fiendish)" or follower.Name == "Hawk (Fiendish)" or follower.Name == "Lizard (Fiendish)" or follower.Name == "Monkey (Fiendish)" or follower.Name == "Owl (Fiendish)" or follower.Name == "Rat (Fiendish)" or follower.Name == "Raven (Fiendish)" or follower.Name == "Toad (Fiendish)" or follower.Name == "Viper (Fiendish)" or follower.Name == "Weasel (Fiendish)"
      end,
      FollowerLevelAdjustment=0,
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE") or character.IsAlignment("LN") or character.IsAlignment("TN") or character.IsAlignment("CN")
        end,
      },
    },
  },
})
DefineAbility({
  Name="Improved Familiar List (5th Level)",
  Category="Internal",
})
ModifyAbility({
  Name="Improved Familiar List (5th Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Elemental (Air/Small)" or follower.Name == "Elemental (Earth/Small)" or follower.Name == "Elemental (Fire/Small)" or follower.Name == "Elemental (Water/Small)" or follower.Name == "Stirge"
      end,
      FollowerLevelAdjustment=0,
    },
  },
})
DefineAbility({
  Name="Improved Familiar List (7th Level)",
  Category="Internal",
})
ModifyAbility({
  Name="Improved Familiar List (7th Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Homunculus" or follower.Name == "Mephit (Air)" or follower.Name == "Mephit (Dust)" or follower.Name == "Mephit (Earth)" or follower.Name == "Mephit (Fire)" or follower.Name == "Mephit (Ice)" or follower.Name == "Mephit (Magma)" or follower.Name == "Mephit (Ooze)" or follower.Name == "Mephit (Salt)" or follower.Name == "Mephit (Steam)" or follower.Name == "Mephit (Water)"
      end,
      FollowerLevelAdjustment=0,
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List (7th Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Pseudodragon"
      end,
      FollowerLevelAdjustment=0,
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE"))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List (7th Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Devil (Imp)"
      end,
      FollowerLevelAdjustment=0,
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE"))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Improved Familiar List (7th Level)",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Demon (Quasit)"
      end,
      FollowerLevelAdjustment=0,
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE") or character.IsAlignment("NG") or character.IsAlignment("CG"))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["FamiliarLVL"] >= 1)
        end,
      },
      Variables={
        "Familiar Alertness Choice",
      },
    },
  },
})
DefineAbility({
  Name="Familiar's Alertness ability Active",
  Key="Familiar Alertness Choice ~ Alertness Active",
  Category="Special Ability",
  Description={
    Format="PC has a familiar that has the Alertness (Ex) ability and it is within arms' reach, the master gains the Alertness feat.",
  },
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Alertness",
      },
    },
  },
  Types={
    "FamiliarAlertnessChoice",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Familiar's Alertness ability Inactive",
  Key="Familiar Alertness Choice ~ Alertness Inactive",
  Category="Special Ability",
  Description={
    Format="PC does not have a familiar with the Alertness class feature or is not within arm's reach.",
  },
  Types={
    "FamiliarAlertnessChoice",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Familiar Type",
  Key="Familiar ~ Augmented Animal",
  Category="Internal",
  Templates={
    "Familiar ~ Augmented Animal",
  },
})
DefineAbility({
  Name="Familiar",
  Key="Companion ~ Familiar",
  Category="Internal",
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Natural Armor Bonus",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarNaturalArmorBonus"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarNaturalArmorBonus") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarNaturalArmorBonus"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarNaturalArmorBonus",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Intelligence Score",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarIntelligenceScore"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarIntelligenceScore") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarIntelligenceScore"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarIntelligenceScore",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Alertness",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarAlertness"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarAlertness") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarAlertness"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarAlertness",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Improved Evasion",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarImprovedEvasion"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarImprovedEvasion") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarImprovedEvasion"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarImprovedEvasion",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Share Spells",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarShareSpells"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarShareSpells") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarShareSpells"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarShareSpells",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Empathic Link",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarEmpathicLink"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarEmpathicLink") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarEmpathicLink"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarEmpathicLink",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Deliver Touch Spells",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 3)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarDeliverTouchSpells"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarDeliverTouchSpells") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarDeliverTouchSpells"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarDeliverTouchSpells",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Speak with Master",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 5)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarSpeakwithMaster"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarSpeakwithMaster") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarSpeakwithMaster"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarSpeakwithMaster",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Speak with Animals of Its Kind",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarSpeakwithAnimalsofItsKind"] == 0)
        end,
        function (character, item, sources)
          return (any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Augmented Animal") end))
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarSpeakwithAnimalsofItsKind") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarSpeakwithAnimalsofItsKind"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarSpeakwithAnimalsofItsKind",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Spell Resistance",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 11)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarSpellResistance"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarSpellResistance") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarSpellResistance"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarSpellResistance",
      },
    },
  },
})
ModifyAbility({
  Name="Companion ~ Familiar",
  Category="Internal",
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Scry on Familiar",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 13)
        end,
        function (character, item, sources)
          return (character.Variables["CF_FamiliarScryonFamiliar"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("CF_FamiliarScryonFamiliar") then return true end
            return false
          end) or character.Facts["ABILITY"]["CF_FamiliarScryonFamiliar"] == "true"
        end,
      },
      Variables={
        "CF_FamiliarScryonFamiliar",
      },
    },
  },
})
DefineAbility({
  Name="Natural Armor Bonus",
  Key="Familiar ~ Natural Armor Bonus",
  Category="Special Ability",
  Description={
    Format="The number noted here is in addition to the familiar's existing natural armor bonus.",
  },
  SourcePage="p.83",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("(1+MASTERVAR(\"FamiliarLVL\"))/2"),
      Type={
        Name="NaturalArmor",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Intelligence Score",
  Key="Familiar ~ Intelligence Score",
  Category="Special Ability",
  Description={
    Format="The familiar's Intelligence score.",
  },
  SourcePage="p.83",
  StatModifications={
    {
    },
  },
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Alertness",
  Key="Familiar ~ Alertness",
  Category="Special Ability",
  Description={
    Format="While a familiar is within arm's reach, the master gains the Alertness feat.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Improved Evasion",
  Key="Familiar ~ Improved Evasion",
  Category="Special Ability",
  Description={
    Format="When subjected to an attack that normally allows a Reflex saving throw for half damage, a familiar takes no damage if it makes a successful saving throw and half damage even if the saving throw fails.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Extraordinary",
    "Defensive",
  },
})
DefineAbility({
  Name="Share Spells",
  Key="Familiar ~ Share Spells",
  Category="Special Ability",
  Description={
    Format="The wizard may cast a spell with a target of \"You\" on his familiar (as a touch spell) instead of on himself. A wizard may cast spells on his familiar even if the spells do not normally affect creatures of the familiar's type (magical beast).",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Special Quality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Empathic Link",
  Key="Familiar ~ Empathic Link",
  Category="Special Ability",
  Description={
    Format="The master has an empathic link with his familiar to a 1 mile distance. The master can communicate emphatically with the familiar, but cannot see through its eyes. Because of the link's limited nature, only general emotions can be shared. The master has the same connection to an item or place that his familiar does.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Supernatural",
    "Communicate",
  },
})
DefineAbility({
  Name="Deliver Touch Spells",
  Key="Familiar ~ Deliver Touch Spells",
  Category="Special Ability",
  Description={
    Format="If the master is 3rd level or higher, a familiar can deliver touch spells for him. If the master and the familiar are in contact at the time the master casts a touch spell, he can designate his familiar as the \"toucher.\" The familiar can then deliver the touch spell just as the master would. As usual, if the master casts another spell before the touch is delivered, the touch spell dissipates.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialAttack",
    "Special Attack",
    "Supernatural",
  },
})
DefineAbility({
  Name="Speak with Master",
  Key="Familiar ~ Speak with Master",
  Category="Special Ability",
  Description={
    Format="If the master is 5th level or higher, a familiar and the master can communicate verbally as if they were using a common language. Other creatures do not understand the communication without magical help.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Extraordinary",
    "Communicate",
  },
})
DefineAbility({
  Name="Speak with Animals of Its Kind",
  Key="Familiar ~ Speak with Animals of Its Kind",
  Category="Special Ability",
  Description={
    Format="If the master is 7th level or higher, a familiar can communicate with animals of approximately the same kind as itself (including dire varieties): bats with bats, cats with felines, hawks and owls and ravens with birds, lizards and snakes with reptiles, monkeys with other simians, rats with rodents, toads with amphibians, and weasels with ermines and minks. Such communication is limited by the Intelligence of the conversing creatures.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Extraordinary",
    "Communicate",
  },
})
DefineAbility({
  Name="Spell Resistance",
  Key="Familiar ~ Spell Resistance",
  Category="Special Ability",
  Description={
    Format="If the master is 11th level or higher, a familiar gains spell resistance equal to the master's level + 5. To affect the familiar with a spell, another spellcaster must get a result on a caster level check (1d20 + caster level) that equals or exceeds the familiar's spell resistance.",
  },
  SourcePage="p.83",
  SpellResistance=Formula("mastervar(\"FamiliarLVL\")+5"),
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Scry on Familiar",
  Key="Familiar ~ Scry on Familiar",
  Category="Special Ability",
  Description={
    Format="If the master is 13th level or higher, he may scry on his familiar (as if casting the scrying spell) once per day.",
  },
  SourcePage="p.83",
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Special Quality",
    "SpellLike",
  },
})
DefineAbility({
  Name="Speak One Language",
  Key="Familiar ~ Speak One Language",
  Category="Special Ability",
  Description={
    Format="The familiar can speak one language of its master's choice as a supernatural ability.",
  },
  SourcePage="p.82",
  Templates={
    "Familiar Speaks One Language",
  },
  Types={
    "Class Feature",
    "Familiar Class Feature",
    "SpecialQuality",
    "Supernatural",
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Bat)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Fly",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Cat)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Stealth",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Hawk)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Perception",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Lizard)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Climb",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Monkey)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Acrobatics",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Owl)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Perception",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Rat)",
  Category="Internal",
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("FamiliarGrantedBonus_2"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Fortitude",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Raven)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Appraise",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Viper)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Bluff",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Toad)",
  Category="Internal",
  Bonuses={
    {
      Category="HP",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "CURRENTMAX",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Weasel)",
  Category="Internal",
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("FamiliarGrantedBonus_2"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Reflex",
      },
    },
  },
})
