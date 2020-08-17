-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_abilities_companion.lst
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
DefineAbility({
  Name="Intelligence Lock Tracker",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 1",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 1)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 2",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 2)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 6",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 6)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 7",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 7)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 8",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 8)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 9",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 9)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 10",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 10)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 11",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 11)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 12",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 12)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 13",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 13)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 14",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 14)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 15",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 15)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 16",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 16)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 17",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 17)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 18",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 18)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 19",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 19)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 20",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 20)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 21",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 21)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 22",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 22)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 23",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 23)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 24",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 24)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 25",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 25)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 26",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 26)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 27",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 27)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 28",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 28)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 29",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 29)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="VIRTUAL",
      Names={
        "Lock Int ~ 30",
      },
      Conditions={
        function (character)
          return (character.Variables["IntelligenceLockNumber"] == 30)
        end,
        function (character)
          return (character.Variables["DisableIntLock"] < 1)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["INTSCORE"] > "IntelligenceLockNumber")
        end,
      },
      Variables={
        "DisableIntLock",
      },
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 1",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 2",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 6",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 7",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 8",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 9",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 10",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 11",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 12",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 13",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 14",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 15",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 16",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 17",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 18",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 19",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 20",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 21",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 22",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 23",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 24",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 25",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 26",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 27",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 28",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 29",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Lock Int ~ 30",
  Category="Internal",
  StatModifications={
    {
    },
  },
})
DefineAbility({
  Name="Special Mount",
  Key="Base Companion ~ Special Mount",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ AC Bonus",
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Stat Bonus",
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Bonus Tricks",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_BonusTricks")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Link",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionLink")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Share Spells",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionShareSpells")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Ability Score Increase",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 5)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_AbilityScoreIncrease")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Devotion",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 6)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionDevotion")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Multiattack",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 9)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionMultiattack")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Evasion",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 3)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionEvasion")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Improved Evasion",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 16)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionImprovedEvasion")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Spell Resistance",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 15)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_SpellResistance")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Animal Companion",
  Key="Base Companion ~ Animal Companion",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ AC Bonus",
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Stat Bonus",
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Bonus Tricks",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_BonusTricks")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Link",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionLink")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Share Spells",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 1)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionShareSpells")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Ability Score Increase",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_AbilityScoreIncrease")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Devotion",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 6)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionDevotion")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Multiattack",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 9)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionMultiattack")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Evasion",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 3)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionEvasion")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Improved Evasion",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 16)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionImprovedEvasion")
          end))
        end,
      },
    },
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Spell Resistance",
      },
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 15)
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_SpellResistance")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Bonus Tricks",
  Key="Animal Companion ~ Bonus Tricks",
  Category="Special Ability",
  Description={
    Format="%1",
    Arguments={
      Formula("BonusTricks"),
    },
  },
  SourcePage="p.52",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="%1",
      Arguments={
        "BonusTricks",
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("var(\"BonusTricks\")"),
      Variables={
        "Animal Trick",
      },
    },
  },
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Link",
  Key="Animal Companion ~ Link",
  Category="Special Ability",
  Description={
    Format="A master can handle her animal companion as a free action, or push it as a move action, even if she doesn't have any ranks in the Handle Animal skill. The master gains a +4 circumstance bonus on all wild empathy checks and Handle Animal checks made regarding an animal companion.",
  },
  SourcePage="p.52",
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Share Spells",
  Key="Animal Companion ~ Share Spells",
  Category="Special Ability",
  Description={
    Format="The master may cast a spell with a target of \"You\" on her animal companion (as a spell with a range of touch) instead of on herself. A master may cast spells on her animal companion even if the spells normally do not affect creatures of the companion's type (animal). Spells cast in this way must come from a class that grants an animal companion. This ability does not allow the animal to share abilities that are not spells, even if they function like spells.",
  },
  SourcePage="p.52",
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Ability Score Increase",
  Key="Animal Companion ~ Ability Score Increase",
  Category="Special Ability",
  Description={
    Format="The animal companion adds +1 to one of its ability scores.",
  },
  SourcePage="p.53",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("(MasterLevel>=4)+(MasterLevel>=9)+(MasterLevel>=14)+(MasterLevel>=20)"),
      Variables={
        "Companion Stat Increase",
      },
    },
  },
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Devotion",
  Key="Animal Companion ~ Devotion",
  Category="Special Ability",
  Description={
    Format="An animal companion gains a +4 morale bonus on Will saves against enchantment spells and effects.",
  },
  SourcePage="p.53",
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Multiattack",
  Key="Animal Companion ~ Multiattack",
  Category="Special Ability",
  Description={
    Format="An animal companion gains Multiattack as a bonus feat if it has three or more natural attacks and does not already have that feat. If it does not have the requisite three or more natural attacks, the animal companion instead gains a second attack with one of its natural weapons, albeit at a -5 penalty.",
  },
  SourcePage="p.53",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Multiattack",
      },
      Conditions={
        function (character)
          return (character.Variables["NaturalAttacks"] >= 3)
        end,
      },
    },
  },
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Companion gets a second attack with their primary attack at -5",
      Conditions={
        function (character)
          return (character.Variables["NaturalAttacks"] <= 3)
        end,
      },
    },
  },
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Evasion",
  Key="Animal Companion ~ Evasion",
  Category="Special Ability",
  Description={
    Format="If an animal companion is subjected to an attack that normally allows a Reflex saving throw for half damage, it takes no damage if it makes a successful saving throw.",
  },
  SourcePage="p.53",
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Improved Evasion",
  Key="Animal Companion ~ Improved Evasion",
  Category="Special Ability",
  Description={
    Format="When subjected to an attack that normally allows a Reflex saving throw for half damage, an animal companion takes no damage if it makes a successful saving throw and only half damage if the saving throw fails.",
  },
  SourcePage="p.53",
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Spell Resistance",
  Key="Animal Companion ~ Spell Resistance",
  Category="Special Ability",
  Description={
    Format="%1",
    Arguments={
      Formula("MasterLevel+5"),
    },
  },
  SpellResistance="MasterLevel+5",
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="AC Bonus",
  Key="Animal Companion ~ AC Bonus",
  Category="Special Ability",
  Description={
    Format="%1",
    Arguments={
      Formula("2*floor(MasterLevel/3)"),
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2*floor(MasterLevel/3)"),
      Type={
        Name="NaturalArmor",
        Stack=true,
      },
      Variables={
        "AC",
      },
    },
  },
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Stat Bonus",
  Key="Animal Companion ~ Stat Bonus",
  Category="Special Ability",
  Description={
    Format="%1",
    Arguments={
      Formula("floor(MasterLevel/3)"),
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("floor(MasterLevel/3)"),
      Variables={
        "STR",
        "DEX",
      },
    },
  },
  Types={
    "CompanionClassFeatures",
    "ClassFeatures",
    "SpecialQuality",
  },
})
ModifyAbility({
  Name="Animal Companion ~ Multiattack",
  Category="Special Ability",
  Description={
    Format="You gain a second attack with one of your natural weapons at -5.",
    Conditions={
      function (character)
        return (character.Variables["NaturalAttacks"] < 3)
      end,
    },
  },
})
DefineAbility({
  Name="Mod Bonus Tricks",
  Key="Companion ~ Bonus Tricks",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Bonus Tricks",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_BonusTricks")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Link",
  Key="Companion ~ Link",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Link",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionLink")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Share Spells",
  Key="Companion ~ Share Spells",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Share Spells",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionShareSpells")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Ability Score Increase",
  Key="Companion ~ Ability Score Increase",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Ability Score Increase",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_AbilityScoreIncrease")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Devotion",
  Key="Companion ~ Devotion",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Devotion",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionDevotion")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Multiattack",
  Key="Companion ~ Multiattack",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Multiattack",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionMultiattack")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Evasion",
  Key="Companion ~ Evasion",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Evasion",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionEvasion")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Improved Evasion",
  Key="Companion ~ Improved Evasion",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Improved Evasion",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_CompanionImprovedEvasion")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Spell Resistance",
  Key="Companion ~ Spell Resistance (AC)",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Spell Resistance",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_SpellResistanceAC")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Mod Spell Resistance",
  Key="Companion ~ Spell Resistance (SM)",
  Category="Special Ability",
  Abilities={
    {
      Category="Companion Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Animal Companion ~ Spell Resistance",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "CF_SpellResistanceSM")
          end))
        end,
      },
    },
  },
})
DefineAbility({
  Name="Companion Skills",
  Category="Special Ability",
  ClassSkills={
    "Acrobatics",
    "Climb",
    "Escape Artist",
    "Fly",
    "Intimidate",
    "Perception",
    "Stealth",
    "Survival",
    "Swim",
  },
  Types={
    "Special",
  },
})
DefineAbility({
  Name="+2 to Dexterity and Constitution",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "DEX",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Archetype" and (ability.Type == "CF_CompanionAdvancement")
      end))
    end,
  },
  Types={
    "CompChoice",
  },
})
DefineAbility({
  Name="Companion Advancement",
  Key="Companion Advancement",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "CompanionAdvancement",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Archetype" and (ability.Type == "CF_CompanionAdvancement")
      end))
    end,
  },
  Types={
    "CompChoice",
  },
})
DefineAbility({
  Name="Companion Advancement (Ape)",
  Key="Companion Advancement ~ Ape",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Ape)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Badger (Wolverine))",
  Key="Companion Advancement ~ Wolverine",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Badger (Wolverine))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Bear)",
  Key="Companion Advancement ~ Bear",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Bear)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Bird)",
  Key="Companion Advancement ~ Bird",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Bird (Eagle))" and 1 or 0) + (character.Race.Name == "Companion (Bird (Hawk))" and 1 or 0) + (character.Race.Name == "Companion (Bird (Owl))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Boar)",
  Key="Companion Advancement ~ Boar",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Ferocity",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Boar)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Camel)",
  Key="Companion Advancement ~ Camel",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Camel)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Cat (Small (Cheetah)))",
  Key="Companion Advancement ~ Cheetah",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Cat ~ Sprint",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Cat (Small (Cheetah)))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Cat (Small (Leopard)))",
  Key="Companion Advancement ~ Leopard",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Cat ~ Sprint",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Cat (Small (Leopard)))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Crocodile (Alligator))",
  Key="Companion Advancement ~ Alligator",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Crocodile ~ Death Roll",
        "Crocodile ~ Sprint",
        "Crocodile ~ Tail Slap",
        "Grab",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Crocodile (Alligator))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Dog)",
  Key="Companion Advancement ~ Dog",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dog)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Horse)",
  Key="Companion Advancement ~ Horse",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Animal Trick",
      Nature="NORMAL",
      Names={
        "Animal Training ~ Combat Training",
      },
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Horse)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Pony)",
  Key="Companion Advancement ~ Pony",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Animal Trick",
      Nature="NORMAL",
      Names={
        "Animal Training ~ Combat Training",
      },
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Pony)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Shark)",
  Key="Companion Advancement ~ Shark",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Blindsense",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Shark)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Snake (Constrictor))",
  Key="Companion Advancement ~ Snake (Constrictor)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Constrict",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Snake (Constrictor))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Snake (Viper))",
  Key="Companion Advancement ~ Snake (Viper)",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Snake (Viper))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Dire Rat)",
  Key="Companion Advancement ~ Dire Rat",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Dire Rat ~ Disease",
      },
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "STR",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dire Rat)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Cat (Big (Lion)))",
  Key="Companion Advancement ~ Lion",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
        "Pounce",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Cat (Big (Lion)))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Cat (Big (Tiger)))",
  Key="Companion Advancement ~ Tiger",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab",
        "Pounce",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Cat (Big (Tiger)))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Dinosaur (Deinonychus))",
  Key="Companion Advancement ~ Dinosaur (Deinonychus)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Pounce",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dinosaur (Deinonychus))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Dinosaur (Velociraptor))",
  Key="Companion Advancement ~ Dinosaur (Velociraptor)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Pounce",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Claw",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dinosaur (Velociraptor))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Wolf)",
  Key="Companion Advancement ~ Wolf",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Wolf)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="+4 bonus on Will saves made to halve the damage from positive channeled energy",
  Key="Shadow Companion Saves",
  Category="Special Ability",
  Types={
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Cannot be turned or commanded",
  Key="Shadow Companion Resistance",
  Category="Special Ability",
  Types={
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Strength Damage",
  Category="Special Ability",
  Description={
    Format="A shadow's touch deals 1d6 points of Strength damage to a living creature. This is a negative energy effect. A creature dies if this Strength damage equals or exceeds its actual Strength score.",
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(1d6/touch)",
    },
  },
  Types={
    "SpecialAttack",
    "Supernatural",
  },
})
DefineAbility({
  Name="Attack",
  Key="Animal Trick ~ Attack",
  Category="Special Ability",
  Description={
    Format="Animal will attack all creatures",
    Conditions={
      function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "Special Ability" and (ability.Name == "Animal Trick ~ Attack II")
        end)
      end,
    },
  },
  SourcePage="p.97",
  Aspects={
    {
      Name="NAME",
      FormatString="Attack I",
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Animal Trick ~ Attack II")
          end))
        end,
      },
    },
    {
      Name="NAME",
      FormatString="Attack II",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Animal Trick ~ Attack II")
          end)
        end,
      },
    },
  },
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Attack II",
  Key="Animal Trick ~ Attack II",
  Category="Special Ability",
  Description={
    Format="Animal will attack all creatures (including such unnatural creatures as undead and aberrations).",
  },
  Visible=true,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Name == "Animal Trick ~ Attack")
      end)
    end,
  },
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Come",
  Key="Animal Trick ~ Come",
  Category="Special Ability",
  Description={
    Format="The animal comes to you, even if it normally would not do so.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Defend",
  Key="Animal Trick ~ Defend",
  Category="Special Ability",
  Description={
    Format="The animal defends you (or is ready to defend you if no threat is present), even without any command being given. Alternatively, you can command the animal to defend another specific character.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Down",
  Key="Animal Trick ~ Down",
  Category="Special Ability",
  Description={
    Format="The animal breaks off from combat or otherwise backs down. An animal that doesn't know this trick continues to fight until it must flee (due to injury, a fear effect, or the like) or its opponent is defeated.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Fetch",
  Key="Animal Trick ~ Fetch",
  Category="Special Ability",
  Description={
    Format="The animal goes and gets something. If you do not point out a specific item, the animal fetches a random object.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Guard",
  Key="Animal Trick ~ Guard",
  Category="Special Ability",
  Description={
    Format="The animal stays in place and prevents others from approaching.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Heel",
  Key="Animal Trick ~ Heel",
  Category="Special Ability",
  Description={
    Format="The animal follows you closely, even to places where it normally wouldn't go.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Perform",
  Key="Animal Trick ~ Perform",
  Category="Special Ability",
  Description={
    Format="The animal performs a variety of simple tricks, such as sitting up, rolling over, roaring or barking, and so on.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Seek",
  Key="Animal Trick ~ Seek",
  Category="Special Ability",
  Description={
    Format="The animal moves into an area and looks around for anything that is obviously alive or animate.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Stay",
  Key="Animal Trick ~ Stay",
  Category="Special Ability",
  Description={
    Format="The animal stays in place, waiting for you to return. It does not challenge other creatures that come by, though it still defends itself if it needs to.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Track",
  Key="Animal Trick ~ Track",
  Category="Special Ability",
  Description={
    Format="The animal tracks the scent presented to it. (This requires the animal to have the scent ability.)",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Work",
  Key="Animal Trick ~ Work",
  Category="Special Ability",
  Description={
    Format="The animal pulls or pushes a medium or heavy load.",
  },
  SourcePage="p.97",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Air Walk",
  Key="Animal Trick ~ Air Walk",
  Category="Special Ability",
  Description={
    Format="The animal is trained to move with the aid of the air walk spell.",
  },
  SourcePage="p.240",
  Types={
    "AnimalTrick",
  },
})
DefineAbility({
  Name="Animal Trained for Combat",
  Key="Animal Training ~ Combat Training",
  SortKey="1",
  Category="Special Ability",
  Cost=6,
  Description={
    Format="An animal trained to bear a rider into combat knows the tricks attack, come, defend, down, guard, and heel. Training an animal for combat riding takes 6 weeks. You may also \"upgrade\" an animal trained for riding to one trained for combat by spending 3 weeks and making a successful DC 20 Handle Animal check. The new general purpose and tricks completely replace the animal's previous purpose and any tricks it once knew. Many horses and riding dogs are trained in this way.",
  },
  DisplayName="Combat Training",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Attack",
        "Animal Trick ~ Come",
        "Animal Trick ~ Defend",
        "Animal Trick ~ Down",
        "Animal Trick ~ Guard",
        "Animal Trick ~ Heel",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
    function (character)
      return ((character.Stats["INT"] >= 2)) >= 1
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Animal Trained for Fighting",
  Key="Animal Training ~ Fighting",
  SortKey="1",
  Category="Special Ability",
  Cost=3,
  Description={
    Format="An animal trained to engage in combat knows the tricks attack, down, and stay. Training an animal for fighting takes 3 weeks.",
  },
  DisplayName="Fighting",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Attack",
        "Animal Trick ~ Down",
        "Animal Trick ~ Stay",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Animal Trained for Guarding",
  Key="Animal Training ~ Guarding",
  SortKey="1",
  Category="Special Ability",
  Cost=4,
  Description={
    Format="An animal trained to guard knows the tricks attack, defend, down, and guard. Training an animal for guarding takes 4 weeks.",
  },
  DisplayName="Guarding",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Attack",
        "Animal Trick ~ Defend",
        "Animal Trick ~ Down",
        "Animal Trick ~ Guard",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
    function (character)
      return ((character.Stats["INT"] >= 2)) >= 1
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Animal Trained for Heavy Labor",
  Key="Animal Training ~ Heavy Labor",
  SortKey="1",
  Category="Special Ability",
  Cost=2,
  Description={
    Format="An animal trained for heavy labor knows the tricks come and work. Training an animal for heavy labor takes 2 weeks.",
  },
  DisplayName="Heavy Labor",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Come",
        "Animal Trick ~ Work",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Animal Trained for Hunting",
  Key="Animal Training ~ Hunting",
  SortKey="1",
  Category="Special Ability",
  Cost=6,
  Description={
    Format="An animal trained for hunting knows the tricks attack, down, fetch, heel, seek, and track. Training an animal for hunting takes 6 weeks.",
  },
  DisplayName="Hunting",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Attack",
        "Animal Trick ~ Down",
        "Animal Trick ~ Fetch",
        "Animal Trick ~ Heel",
        "Animal Trick ~ Seek",
        "Animal Trick ~ Track",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
    function (character)
      return ((character.Stats["INT"] >= 2)) >= 1
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Animal Trained for Performance",
  Key="Animal Training ~ Performance",
  SortKey="1",
  Category="Special Ability",
  Cost=5,
  Description={
    Format="An animal trained for performance knows the tricks come, fetch, heel, perform, and stay. Training an animal for performance takes 5 weeks.",
  },
  DisplayName="Performance",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Come",
        "Animal Trick ~ Fetch",
        "Animal Trick ~ Heel",
        "Animal Trick ~ Perform",
        "Animal Trick ~ Stay",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
    function (character)
      return ((character.Stats["INT"] >= 2)) >= 1
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Animal Trained for Riding",
  Key="Animal Training ~ Riding",
  SortKey="1",
  Category="Special Ability",
  Cost=3,
  Description={
    Format="An animal trained to bear a rider knows the tricks come, heel, and stay. Training an animal for riding takes 3 weeks.",
  },
  DisplayName="Riding",
  SourcePage="p.98",
  Abilities={
    {
      Category="Animal Trick",
      Nature="AUTOMATIC",
      Names={
        "Animal Trick ~ Come",
        "Animal Trick ~ Heel",
        "Animal Trick ~ Stay",
      },
    },
  },
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "AnimalTraining")
      end))
    end,
  },
  Types={
    "AnimalTrick",
    "AnimalTraining",
    "General",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="CompStat 1 Strength",
  Key="Companion Stat ~ STR",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  DisplayName="Strength",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "STR",
      },
    },
  },
  Types={
    "CompStatChoice",
  },
})
DefineAbility({
  Name="CompStat 2 Dexterity",
  Key="Companion Stat ~ DEX",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  DisplayName="Dexterity",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "DEX",
      },
    },
  },
  Types={
    "CompStatChoice",
  },
})
DefineAbility({
  Name="CompStat 3 Constitution",
  Key="Companion Stat ~ CON",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  DisplayName="Constitution",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "CON",
      },
    },
  },
  Types={
    "CompStatChoice",
  },
})
DefineAbility({
  Name="CompStat 4 Intelligence",
  Key="Companion Stat ~ INT",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  DisplayName="Intelligence",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "INT",
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
  StatModifications={
    {
    },
  },
  Types={
    "CompStatChoice",
  },
})
DefineAbility({
  Name="CompStat 5 Wisdom",
  Key="Companion Stat ~ WIS",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  DisplayName="Wisdom",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "WIS",
      },
    },
  },
  Types={
    "CompStatChoice",
  },
})
DefineAbility({
  Name="CompStat 6 Charisma",
  Key="Companion Stat ~ CHA",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  DisplayName="Charisma",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "CHA",
      },
    },
  },
  Types={
    "CompStatChoice",
  },
})
DefineAbility({
  Name="Companion Skill",
  Key="Companion Skill",
  Category="Internal",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return (((stringMatch(skill.Name, "Acrobatics") or stringMatch(skill.Key, "Acrobatics")))) or (((stringMatch(skill.Name, "Climb") or stringMatch(skill.Key, "Climb")))) or (((stringMatch(skill.Name, "Escape Artist") or stringMatch(skill.Key, "Escape Artist")))) or (((stringMatch(skill.Name, "Fly") or stringMatch(skill.Key, "Fly")))) or (((stringMatch(skill.Name, "Intimidate") or stringMatch(skill.Key, "Intimidate")))) or (((stringMatch(skill.Name, "Perception") or stringMatch(skill.Key, "Perception")))) or (((stringMatch(skill.Name, "Stealth") or stringMatch(skill.Key, "Stealth")))) or (((stringMatch(skill.Name, "Survival") or stringMatch(skill.Key, "Survival")))) or (((stringMatch(skill.Name, "Swim") or stringMatch(skill.Key, "Swim"))))
    end),
  },
  Stackable=true,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("1"),
      Variables={
        "%LIST",
      },
    },
  },
  Types={
    "AnimalCompanionSkill",
  },
})
DefineAbility({
  Name="Companion Skill (Int > 3)",
  Key="Companion Skill ~ INT Higher",
  Category="Internal",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Stackable=true,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("1"),
      Variables={
        "%LIST",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Stats["INT"] >= 3)) >= 1
    end,
  },
  Types={
    "AnimalCompanionSkill",
  },
})
DefineAbility({
  Name="Poison",
  Category="Special Ability",
  Types={
    "SpecialAttack",
  },
})
DefineAbility({
  Name="Spit",
  Key="Camel ~ Spit",
  Category="Special Ability",
  Types={
    "SpecialAttack",
  },
})
DefineAbility({
  Name="Disease",
  Key="Dire Rat ~ Disease",
  Category="Special Ability",
  Description={
    Format="Filth Fever: Bite injury; Save Fort DC %1; Onset 1d3 days; Frequency 1/day; Effect 1d3 Dex damage and 1d3 Con damage; Cure 2 consecutive saves.",
    Arguments={
      Formula("DiseaseDC"),
    },
  },
  SourcePage="p.232",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10+(HD/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "DiseaseDC",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Death Roll",
  Key="Crocodile ~ Death Roll",
  Category="Special Ability",
  Description={
    Format="When grappling a foe of its size or smaller, a crocodile can perform a death roll upon making a successful grapple check. As it clings to its foe, it tucks in its legs and rolls rapidly, twisting and wrenching its victim. The crocodile inflicts its bite damage and knocks the creature prone. If successful, the crocodile maintains its grapple.",
  },
  SourcePage="p.51",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1d%2+%3 plus trip)",
      Arguments={
        "DeathRollDice",
        "DeathRollDie",
        "DeathRollDamage",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "DeathRollDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "DeathRollDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("max(STR,0)*1.5"),
      Variables={
        "DeathRollDamage",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Hold Breath",
  Key="Crocodile ~ Hold Breath",
  Category="Special Ability",
  Description={
    Format="A crocodile can hold its breath for %1 rounds before it risks drowning.",
    Arguments={
      Formula("HoldBreathRounds"),
    },
  },
  SourcePage="p.51",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("CONSCORE*4"),
      Variables={
        "HoldBreathRounds",
      },
    },
  },
  Types={
    "SpecialQuality",
    "Special Quality",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Sprint",
  Key="Crocodile ~ Sprint",
  Category="Special Ability",
  Description={
    Format="Once per minute a crocodile may sprint, increasing its land speed to 40 feet for 1 round.",
  },
  SourcePage="p.51",
  Types={
    "SpecialQuality",
    "Special Ability",
    "Extraordinary",
    "ModifyMovement",
  },
})
DefineAbility({
  Name="Tail Slap",
  Key="Crocodile ~ Tail Slap",
  Category="Special Ability",
  SourcePage="p.301",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "TailSlapAttacks",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NaturalAttacks",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("-5"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return 1 <= #filter(character.Abilities, function (ability)
              return ability.Category == "Internal" and (ability.Type == "NaturalAttackPrimary")
            end)
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return 2 <= #filter(character.Abilities, function (ability)
              return ability.Category == "Internal" and (ability.Type == "NaturalAttackSecondary")
            end)
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return (character.Variables["UseWeaponsWithNaturalAttacks"] == 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 1
        end,
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("floor(STR/2)-STR"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return 1 <= #filter(character.Abilities, function (ability)
              return ability.Category == "Internal" and (ability.Type == "NaturalAttackPrimary")
            end)
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return 2 <= #filter(character.Abilities, function (ability)
              return ability.Category == "Internal" and (ability.Type == "NaturalAttackSecondary")
            end)
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return (character.Variables["UseWeaponsWithNaturalAttacks"] == 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 1
        end,
      },
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("max(floor(STR/2),0)"),
      Conditions={
        function (character)
          return (character.Variables["NaturalAttacks"] == 1)
        end,
        function (character)
          return not ((character.Variables["UseWeaponsWithNaturalAttacks"] == 1))
        end,
      },
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("SizeIncrease"),
      Variables={
        "WIELDCATEGORY",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
  Types={
    "NaturalAttack",
    "NaturalAttackSecondary",
    "Secondary",
  },
})
DefineAbility({
  Name="Sprint",
  Key="Cat ~ Sprint",
  Category="Special Ability",
  Description={
    Format="Once per hour, a Small Cat companion can move at 10 times its normal speed (500 feet) when it makes a charge.",
  },
  SourcePage="p.40",
  SourceShort="B1",
  Types={
    "SpecialQuality",
    "Extraordinary",
    "ModifyMovement",
  },
})
SetSource({
  SourceLong="Bestiary 2",
  SourceShort="B2",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/pathfinderRPG/v5748btpy8hif",
  SourceDate="2010-12",
})
DefineAbility({
  Name="Companion Advancement (Dinosaur (Allosaurus))",
  Key="Companion Advancement ~ Dinosaur (Allosaurus)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab ~ Bite",
        "Pounce",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dinosaur (Allosaurus))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Dinosaur (Parasaurolophus))",
  Key="Companion Advancement ~ Dinosaur (Parasaurolophus)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Trample",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "TrampleDamageDieSize",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dinosaur (Parasaurolophus))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Dinosaur (Tylosaurus))",
  Key="Companion Advancement ~ Dinosaur (Tylosaurus)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab ~ Bite",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Dinosaur (Tylosaurus))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Gar)",
  Key="Companion Advancement ~ Gar",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Gar)" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Herd Animal (Ram))",
  Key="Companion Advancement ~ Herd Animal (Ram)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Improved Bull Rush",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Powerful Charge",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "PowerfulChargeDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "PowerfulChargeDamageDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1.5*STR"),
      Variables={
        "PowerfulChargeBonusDamage",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Herd Animal (Ram))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Hippopotamus)",
  Key="Companion Advancement ~ Hippopotamus",
  Category="Special Ability",
  Visible=true,
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Hippopotamus)" and 1 or 0)) >= 1
    end,
  },
  Templates={
    "Hippopotamus Companion Advancement",
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Megafauna (Arsinoitherium))",
  Key="Companion Advancement ~ Megafauna (Arsinoitherium)",
  Category="Special Ability",
  Visible=true,
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Megafauna (Arsinoitherium))" and 1 or 0)) >= 1
    end,
  },
  Templates={
    "Arsinoitherium Companion Advancement",
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Megafauna (Gylptodon))",
  Key="Companion Advancement ~ Megafauna (Gylptodon)",
  Category="Special Ability",
  Visible=true,
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Megafauna (Gylptodon))" and 1 or 0)) >= 1
    end,
  },
  Templates={
    "Gylptodon Companion Advancement",
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Megafauna (Megaloceros))",
  Key="Companion Advancement ~ Megafauna (Megaloceros)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Powerful Charge",
      },
    },
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
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "PowerfulChargeDamageDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "PowerfulChargeDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1.5*STR"),
      Variables={
        "PowerfulChargeBonusDamage",
      },
    },
    {
      Category="WEAPONPROF=Hoof",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("-max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Megafauna (Megaloceros))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Megafauna (Megatherium))",
  Key="Companion Advancement ~ Megafauna (Megatherium)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Rend",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "RendDamageDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1.5*STR"),
      Variables={
        "RendBonusDamage",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Megafauna (Megatherium))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Primate (Baboon))",
  Key="Companion Advancement ~ Primate (Baboon)",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
        "CON",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Primate (Baboon))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Companion Advancement (Ray (Manta))",
  Key="Companion Advancement ~ Ray (Manta)",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Ray (Manta))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
  Visions={
    {
      Kind={
        "Blindsense (30')",
      },
    },
  },
})
DefineAbility({
  Name="Companion Advancement (Ray (Stingray))",
  Key="Companion Advancement ~ Ray (Stingray)",
  Category="Special Ability",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Ray (Stingray))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
  Visions={
    {
      Kind={
        "Blindsense (30')",
      },
    },
  },
})
DefineAbility({
  Name="Companion Advancement (Turtle (Giant Snapping))",
  Key="Companion Advancement ~ Turtle (Giant Snapping)",
  Category="Special Ability",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Grab ~ Bite",
      },
    },
  },
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Race.Name == "Companion (Turtle (Giant Snapping))" and 1 or 0)) >= 1
    end,
  },
  Types={
    "CompanionAdvancement",
  },
})
DefineAbility({
  Name="Dog Bite Attackx1",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
})
DefineAbility({
  Name="Dog Bite Attackx2",
  Category="Internal",
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
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BiteAttacks",
      },
    },
  },
})
DefineAbility({
  Name="Acrobatic",
  Key="Animal Companion Feat ~ Acrobatic",
  Category="Special Ability",
  Description={
    Format="You get a +2 bonus on all Acrobatics and Fly skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
  },
  SourcePage="p.113",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Acrobatic",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Agile Maneuvers",
  Key="Animal Companion Feat ~ Agile Maneuvers",
  Category="Special Ability",
  Description={
    Format="You add your Dexterity bonus to your base attack bonus and size bonus when determining your Combat Maneuver Bonus (see Chapter 8) instead of your Strength bonus.",
  },
  SourcePage="p.117",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Agile Maneuvers",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Armor Proficiency (Light)",
  Key="Animal Companion Feat ~ Armor Proficiency (Light)",
  Category="Special Ability",
  Description={
    Format="When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
  },
  SourcePage="p.118",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Armor Proficiency (Light)",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Armor Proficiency (Medium)",
  Key="Animal Companion Feat ~ Armor Proficiency (Medium)",
  Category="Special Ability",
  Description={
    Format="When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
  },
  SourcePage="p.118",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Armor Proficiency (Medium)",
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithArmorType("Light"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Armor Proficiency (Light)")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Armor Proficiency (Heavy)",
  Key="Animal Companion Feat ~ Armor Proficiency (Heavy)",
  Category="Special Ability",
  Description={
    Format="When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
  },
  SourcePage="p.118",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Armor Proficiency (Heavy)",
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithArmorType("Medium"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Armor Proficiency (Medium)")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Athletic",
  Key="Animal Companion Feat ~ Athletic",
  Category="Special Ability",
  Description={
    Format="You get a +2 bonus on Climb and Swim skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
  },
  SourcePage="p.118",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Athletic",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Blind-Fight",
  Key="Animal Companion Feat ~ Blind-Fight",
  Category="Special Ability",
  Description={
    Format="In melee, every time you miss because of concealment (see Chapter 8), you can reroll your miss chance percentile roll one time to see if you actually hit. An invisible attacker gets no advantages related to hitting you in melee. That is, you don't lose your Dexterity bonus to Armor Class, and the attacker doesn't get the usual +2 bonus for being invisible. The invisible attacker's bonuses do still apply for ranged attacks, however. You do not need to make Acrobatics skill checks to move at full speed while blinded.",
  },
  SourcePage="p.118",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Blind-Fight",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Combat Reflexes",
  Key="Animal Companion Feat ~ Combat Reflexes",
  Category="Special Ability",
  Description={
    Format="You may make %1 additional attacks of opportunity per round. With this feat, you may also make attacks of opportunity while flat-footed.",
    Arguments={
      Formula("DEX"),
    },
  },
  SourcePage="p.119",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Combat Reflexes",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Diehard",
  Key="Animal Companion Feat ~ Diehard",
  Category="Special Ability",
  Description={
    Format="When your hit point total is below 0, but you are not dead, you automatically stabilize. You do not need to make a Constitution check each round to avoid losing additional hit points. You may choose to act as if you were disabled, rather than dying. You must make this decision as soon as you are reduced to negative hit points (even if it isn't your turn). If you do not choose to act as if you were disabled, you immediately fall unconscious. When using this feat, you are staggered. You can take a move action without further injuring yourself, but if you perform any standard action (or any other action deemed as strenuous, including some free actions, such as casting a quickened spell) you take 1 point of damage after completing the act. If your negative hit points are equal to or greater than your Constitution score, you immediately die.",
  },
  SourcePage="p.121",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Diehard",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Dodge",
  Key="Animal Companion Feat ~ Dodge",
  Category="Special Ability",
  Description={
    Format="You gain a +1 dodge bonus to your AC. A condition that makes you lose your Dex bonus to AC also makes you lose the benefits of this feat.",
  },
  SourcePage="p.122",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Dodge",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["PreStatScore_DEX"] >= 13)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Endurance",
  Key="Animal Companion Feat ~ Endurance",
  Category="Special Ability",
  Description={
    Format="You gain a +4 bonus on the following checks and saves: Swim checks made to resist nonlethal damage from exhaustion; Constitution checks made to continue running; Constitution checks made to avoid nonlethal damage from a forced march; Constitution checks made to hold your breath; Constitution checks made to avoid nonlethal damage from starvation or thirst; Fortitude saves made to avoid nonlethal damage from hot or cold environments; and Fortitude saves made to resist damage from suffocation. You may sleep in light or medium armor without becoming fatigued.",
  },
  SourcePage="p.112",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Endurance",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Great Fortitude",
  Key="Animal Companion Feat ~ Great Fortitude",
  Category="Special Ability",
  Description={
    Format="You get a +2 bonus on all Fortitude saving throws.",
  },
  SourcePage="p.124",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Great Fortitude",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Improved Bull Rush",
  Key="Animal Companion Feat ~ Improved Bull Rush",
  Category="Special Ability",
  Description={
    Format="You do not provoke an attack of opportunity when performing a bull rush combat maneuver. In addition, you receive a +2 bonus on checks made to bull rush a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to bull rush you.",
  },
  SourcePage="p.126",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Improved Bull Rush",
      },
    },
  },
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return ((character.Stats["STR"] >= 13)) >= 1
    end,
    function (character)
      return (character.Variables["(CL=Companion)"] >= 3)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Improved Initiative",
  Key="Animal Companion Feat ~ Improved Initiative",
  Category="Special Ability",
  Description={
    Format="You get a +4 bonus on initiative checks.",
  },
  SourcePage="p.127",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Improved Initiative",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Improved Natural Armor",
  Key="Animal Companion Feat ~ Improved Natural Armor",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="The creature's natural armor bonus increases by +1. Special: A creature can gain this feat multiple times. Each time the creature takes the feat, its natural armor bonus increases by another point.",
  },
  SourceLong="Bestiary",
  SourcePage="p.315",
  SourceShort="B1",
  Stackable=true,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Improved Natural Armor",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Stats["CON"] >= 13)) >= 1
    end,
    function (character)
      return (character.Variables["BONUS.COMBAT.AC.NaturalArmor"] >= 1)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Improved Natural Attack",
  Key="Animal Companion Feat ~ Improved Natural Attack",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((character.IsProficientWith(weapon)) and (weapon.IsType("Natural")))
    end),
  },
  Description={
    Format="Choose one of the creature's natural attack forms. The damage for this natural attack increases by one step on the following list, as if the creature's size had increased by one category. Damage dice increase as follows: 1d2, 1d3, 1d4, 1d6, 1d8, 2d6, 3d6, 4d6, 6d6, 8d6, 12d6. A weapon or attack that deals 1d10 points of damage increases as follows: 1d10, 2d8, 3d8, 4d8, 6d8, 8d8, 12d8.",
  },
  SourceLong="Bestiary",
  SourcePage="p.315",
  SourceShort="B1",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Improved Natural Attack (%LIST)",
      },
    },
  },
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 4
    end,
    function (character)
      return ((character.IsProficientWithWeaponType("Natural"))) >= 1
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Improved Overrun",
  Key="Animal Companion Feat ~ Improved Overrun",
  Category="Special Ability",
  Description={
    Format="You do not provoke an attack of opportunity when performing an overrun combat maneuver. In addition, you receive a +2 bonus on checks made to overrrun a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to overrun you. Targets of your overrun attempt may not chose to avoid you.",
  },
  SourcePage="p.127",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Improved Overrun",
      },
    },
  },
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return ((character.Stats["STR"] >= 13)) >= 1
    end,
    function (character)
      return (character.Variables["(CL=Companion)"] >= 3)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Intimidating Prowess",
  Key="Animal Companion Feat ~ Intimidating Prowess",
  Category="Special Ability",
  Description={
    Format="Add your Strength modifier to Intimidate skill checks in addition to your Charisma modifier.",
  },
  SourcePage="p.128",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Intimidating Prowess",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Iron Will",
  Key="Animal Companion Feat ~ Iron Will",
  Category="Special Ability",
  Description={
    Format="You get a +2 bonus on all Will saving throws.",
  },
  SourcePage="p.129",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Iron Will",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Lightning Reflexes",
  Key="Animal Companion Feat ~ Lightning Reflexes",
  Category="Special Ability",
  Description={
    Format="You get a +2 bonus on all Reflex saving throws.",
  },
  SourcePage="p.130",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Lightning Reflexes",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Mobility",
  Key="Animal Companion Feat ~ Mobility",
  Category="Special Ability",
  Description={
    Format="You get a +4 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a threatened area. A condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses. Dodge bonuses stack with each other, unlike most types of bonuses.",
  },
  SourcePage="p.130",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Mobility",
      },
    },
  },
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Power Attack",
  Key="Animal Companion Feat ~ Power Attack",
  Category="Special Ability",
  Description={
    Format="You can choose to take a -%1 penalty on all melee attack rolls and combat maneuver checks to gain a +%2 bonus on all melee damage rolls. This bonus to damage is increased by half (+50%%) if you are making an attack with a two-handed weapon, a one handed weapon using two hands, or a primary natural weapon that adds 1-1/2 times your Strength modifier on damage rolls. This bonus to damage is halved (-50%%) if you are making an attack with an off-hand weapon or secondary natural weapon. You must choose to use this feat before making an attack roll, and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
    Arguments={
      Formula("1+BAB/4"),
      Formula("2*floor(1+BAB/4)"),
    },
  },
  SourcePage="p.131",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Power Attack",
      },
    },
  },
  Conditions={
    function (character)
      return ((character.Stats["STR"] >= 13)) >= 1
    end,
    function (character)
      return (character.Variables["(CL=Companion)"] >= 3)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Run",
  Key="Animal Companion Feat ~ Run",
  Category="Special Ability",
  Description={
    Format="When running, you move five times your normal speed (if wearing medium, light, or no armor and carrying no more than a medium load) or four times your speed (if wearing heavy armor or carrying a heavy load). If you make a jump after a running start (see the Acrobatics skill description), you gain a +4 bonus on your Acrobatics check. While running, you retain your Dexterity bonus to your Armor Class.",
  },
  SourcePage="p.132",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Run",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Skill Focus",
  Key="Animal Companion Feat ~ Skill Focus",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Charisma"))) or ((skill.IsType("Dexterity"))) or ((skill.IsType("Intelligence"))) or ((skill.IsType("Strength"))) or ((skill.IsType("Wisdom")))
    end),
  },
  Description={
    Format="You get a +3 bonus on all checks involving the chosen skill. If you have 10 or more ranks in that skill, this bonus increases to +6.",
  },
  SourcePage="p.134",
  Stackable=false,
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Skill Focus (%LIST)",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Spring Attack",
  Key="Animal Companion Feat ~ Spring Attack",
  Category="Special Ability",
  Description={
    Format="As a full round action, you can move up to your speed and make a single melee attack without provoking any attacks of opportunity from the target of your attack. You can move both before and after the attack, but you must move at least 10 feet before the attack and the total distance that you move cannot be greater than your speed. You cannot use this ability to attack a foe that is adjacent to you at the start of your turn.",
  },
  SourcePage="p.134",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Spring Attack",
      },
    },
  },
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge" or ability.Name == "Mobility")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 4
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Stealthy",
  Key="Animal Companion Feat ~ Stealthy",
  Category="Special Ability",
  Description={
    Format="You get a +2 bonus on all Escape Artist and Stealth skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
  },
  SourcePage="p.135",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Stealthy",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Toughness",
  Key="Animal Companion Feat ~ Toughness",
  Category="Special Ability",
  Description={
    Format="You gain +1 hit points whenever you gain a Hit Die (such as when you gain a level).",
    Conditions={
      function (character)
        return character.HitDie >= 3
      end,
    },
  },
  SourcePage="p.135",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Toughness",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Weapon Finesse",
  Key="Animal Companion Feat ~ Weapon Finesse",
  Category="Special Ability",
  Description={
    Format="With a light weapon, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls. If you carry a shield, its armor check penalty applies to your attack rolls.",
  },
  SourcePage="p.136",
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Weapon Finesse",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Weapon Focus",
  Key="Animal Companion Feat ~ Weapon Focus",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((character.IsProficientWith(weapon)))
    end),
  },
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Weapon Focus (%LIST)",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["(CL=Companion)"] >= 3)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="Add Normal Feat",
  Key="Animal Companion Feat ~ Feat",
  SortKey="1",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="For Companions with Intelligence of 3+, you may select any regular feat (Will open the Normal Feats).",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "FEAT",
      },
    },
  },
  Conditions={
    function (character)
      return (character.Variables["INTSCORE"] >= 3)
    end,
  },
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbility({
  Name="GM Granted Animal Companion Feat",
  Key="Animal Companion Feat ~ GM Feat",
  SortKey="1",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="GM Granted Feats, that are not included in the official list.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "FEAT",
      },
    },
  },
  Types={
    "AnimalCompanionFeat",
  },
})
