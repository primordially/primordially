-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_abilities.lst
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
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Temp Bonus ~ Enlarge Person",
      },
      Conditions={
        function (character)
          return (character.Variables["ActivateEnlargePerson"] == 1)
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Temp Bonus ~ Reduce Person",
      },
      Conditions={
        function (character)
          return (character.Variables["ActivateReducePerson"] == 1)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "BastardSwordExoticUse",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Exotic Weapon Proficiency (Sword (Bastard))")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DwarvenWaraxeExoticUse",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Exotic Weapon Proficiency (Waraxe (Dwarven))")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "SPELLFAILURE_Total",
      },
      Formula=Formula("SPELLFAILURE"),
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Aspect Combat Bonus ~ Encumbrance",
      },
      Conditions={
        function (character)
          return (character.Variables["Encumbrance"] >= 1)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "WeaponFocusToHit",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "GreaterWeaponFocusToHit",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Negate Aging Penalties",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "STR",
        "CON",
        "DEX",
      },
      Formula=Formula("NegatedAgePenalty"),
    },
    {
      Category="VAR",
      Variables={
        "NegatedAgePenalty",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.AgeSet >= "Middle-Aged")) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "NegatedAgePenalty",
      },
      Formula=Formula("3"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.AgeSet >= "Old")) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "NegatedAgePenalty",
      },
      Formula=Formula("6"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return ((character.AgeSet >= "Venerable")) >= 1
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Linguisitcs_NumLanguages",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "FightingDefensivelyAttackPenalty",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Aspect Combat Bonus ~ Mobility",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+%1 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a threatened area. A condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses. Dodge bonuses stack with each other, unlike most types of bonuses.",
      Arguments={
        "Feat_Mobility_DodgeBonus",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Feat_Mobility_DodgeBonus",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

DefineAbility({
  Name="Aspect Combat Bonus ~ Encumbrance",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Encumbrance rule effect, reduced speed and penalties applied, see - http://paizo.com/pathfinderRPG/prd/coreRulebook/additionalRules.html#carrying-capacity",
    },
  },
})

DefineAbility({
  Name="Aspect Combat Bonus ~ Buckler",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Buckler: -1 attack penalty to off-hand and 2H attacks",
    },
  },
})

DefineAbility({
  Name="Baleful Polymorph Spell",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.556",
  Description={
    Format="Curse, spell; Fort DC 17 negates, Will DC 17 partial;Effect transforms target into a lizard",
  },
  Types={
    "Curse",
    "Affliction",
  },
})

DefineAbility({
  Name="Bestow Curse Trap",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.556",
  Description={
    Format="Curse, trap; Will DC 14;Effect -6 penalty to Strength",
  },
  Types={
    "Curse",
    "Affliction",
  },
})

DefineAbility({
  Name="Curse of the Ages",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Curse; Will DC 17; Frequency 1/day; Effect age 1 year",
  },
  Types={
    "Curse",
    "Affliction",
  },
})

DefineAbility({
  Name="Mummy Rot",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Curse, disease, injury; Fort DC 16; Onset 1 minute; Frequency 1/day; Effect 1d6 Con damage and 1d6 Cha damage; Cure mummy rot can only be cured by successfully casting both remove curse and remove disease within 1 minute of each other.",
  },
  Types={
    "Curse",
    "Affliction",
  },
})

DefineAbility({
  Name="Unluck",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Curse; Save Will DC 20 negates, no save to avoid effects; Frequency 1/hour; Effect target must reroll any roll decided by the GM and take the worse result",
  },
  Types={
    "Curse",
    "Affliction",
  },
})

DefineAbility({
  Name="Werewolf Lycanthropy",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Curse, injury; Fort DC 15 negates, Will DC 15 to avoid effects; Onset the next full moon; Frequency on the night of every full moon or whenever the target is injured; Effect target transforms into a wolf under the GM's control until the next morning",
  },
  Types={
    "Curse",
    "Affliction",
  },
})

DefineAbility({
  Name="Blinding Sickness",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, Ingested; Fort DC 16; Onset 1d3 days; Frequency 1/day; Effect 1d4 Str damage, if more than 2 Str damage, target must make an additional Fort save or be permanently blinded; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Bubonic Plague",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, injury or inhaled; Fort DC 17; Onset 1 day; Frequency 1/day; Effect 1d4 Con damage and 1 Cha damage and target is fatigued; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Cackle Fever",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, inhaled; Fort DC 16; Onset 1 day; Frequency 1/day; Effect 1d6 Wis damage; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Demon Fever",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, injury; Fort DC 18; Onset 1 day; Frequency 1/day; Effect 1d6 Con damage, target must make a second Fort save or 1 point of the damage is drain instead; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Devil Chills",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, injury; Fort DC 14; Onset 1d4 days; Frequency 1/day; Effect 1d4 Str damage; Cure 3 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Filth Fever",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, injury; Save Fortitude DC 12; Onset 1d3 days; Frequency 1/day; Effect 1d3 Dex damage and 1d3 Con damage; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Leprosy",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, contact, inhaled, or injury; Fort DC 12 negates, Fortitude DC 20 to avoid effects; Onset 2d4 weeks; Frequency 1/week; Effect 1d2 Cha damage; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Mindfire",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, inhaled; Fort DC 12; Onset 1 day; Frequency 1/day; Effect 1d4 Int damage; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Red Ache",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, injury; Fort DC 15; Onset 1d3 days; Frequency 1/day; Effect 1d6 Str damage; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Shakes",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, contact; Fort DC 13; Onset 1 day; Frequency 1/day; Effect 1d8 Dex damage; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Slimy Doom",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.557",
  Description={
    Format="Disease, contact; Fortitude DC 14; Onset 1 day; Frequency 1/day; Effect 1d4 Con damage, target must make a second Fort save or 1 point of the damage is drain instead; Cure 2 consecutive saves",
  },
  Types={
    "Disease",
    "Affliction",
  },
})

DefineAbility({
  Name="Arsenic",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Ingested; Fort DC 13; Freq. 1 round (5); Effect 1 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Black Adder Venom",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Injury; Fort DC 11; Freq. 1 round (6); Effect 1 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Black Lotus Extract",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Contact; Fort DC 20; Freq. 1 round (7); Effect 3 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Bloodroot",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Injury; Fort DC 12; Freq. 1 round (3); Effect 1 Con damage and 1 Wis damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Blue Whinnis",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Injury; Fort DC 14; Freq. 1 round (2); Effect 1 Con damage/unconsciousness for 1d3 hours; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Burnt Othur Fumes",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Inhaled; Fort DC 18; Freq. 1 round (4); Effect 1 Con drain/3 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Dark Reaver Powder",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Ingested; Fort DC 18; Freq. 1 round (5); Effect 2 Con damage/1 Con damage and 1 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Deathblade",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Injury; Fort DC 20; Freq. 1 round (5); Effect 2 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Dragon Bile",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.558",
  Description={
    Format="Poison, Contact; Fort DC 26; Freq. 1 round (3); Effect 3 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Drow Poison",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.559",
  Description={
    Format="Poison, Injury; Fort DC 13; Freq. 1 minute (1); Effect unconsciousness for 1 minute/unconsciousness for 2d4 hours; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Giant Wasp Poison",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.559",
  Description={
    Format="Poison, Injury; Fort DC 18; Freq. 1 round (4); Effect 1 Dex damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Greenblood Oil",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.559",
  Description={
    Format="Poison, Injury; Fort DC 13; Freq. 1 round (2); Effect 1 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Id Moss",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.559",
  Description={
    Format="Poison, Ingested; Fort DC 14; Freq. 1 round (5); Effect 2 Int damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Insanity Mist",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Inhaled; Fort DC 15; Freq. 1 round (5); Effect 2 Wis damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="King's Sleep",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Ingested; Fort DC 19; Freq. 1 day; Effect 1 Con drain; Cure 2 consecutive saves",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Large Scorpion Venom",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Injury; Fort DC 18; Freq. 1 round (4); Effect 1 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Lich Dust",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Ingested; Fort DC 17; Freq. 1 round (5); Effect 2 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Malyass Root Paste",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Contact; Fort DC 16; Freq. 1 round (6); Effect 1 Dex damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Medium Spider Venom",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Injury; Fort DC 14; Freq. 1 round (3); Effect 1 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Nightmare Vapor",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Inhaled; Fort DC 20; Freq. 1 round (5); Effect 1 Wis damage and 1 Wis drain; Cure 2 consecutive saves",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Nitharit",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Contact; Fort DC 13; Freq. 1 round (6); Effect 0/2 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Oil of Taggit",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Ingested; Fort DC 15; Freq. 1 minute (1); Effect 0/unconsciousness for 1d3 hours; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Purple Worm Poison",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Injury; Fort DC 24; Freq. 1 round (5); Effect 2 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Sassone Leaf Residue",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Contact; Fort DC 16; Freq. 1 round (4); Effect 1d6 hit points; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Shadow Essence",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Inhaled; Fort DC 17; Freq. 1 round (7); Effect 1 Str drain/1 Str damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Small Centipede Poison",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Injury; Fort DC 11; Freq. 1 round (2); Effect 1 Dex damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Striped Toadstool",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Ingested; Fort DC 11; Freq. 1 round (5); Effect 1 Wis damage/2 Wis damage plus 1 Int damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Tears of Death",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Contact; Fort DC 22; Freq. 1 minute (5); Effect 1d6 Con damage; Cure none",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Terinav Root",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Contact; Fort DC 16; Freq. 1 round (5); Effect 2 Dex damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Ungol Dust",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Inhaled; Fort DC 15; Freq. 1 round (3); Effect 1 Cha damage/1 Con damage and 1 Cha drain; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Wyvern Poison",
  Category="Afflictions",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  SourcePage="p.560",
  Description={
    Format="Poison, Injury; Fort DC 17; Freq. 1 round (7); Effect 2 Con damage; Cure 1 save",
  },
  Types={
    "Poison",
    "Affliction",
  },
})

DefineAbility({
  Name="Inspire Courage",
  Key="Temp Bonus ~ Inspire Courage",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Inspire courage&colon; +%1 morale bonus on saving throws against charm and fear effects and a +%1 competence bonus on attack and weapon damage rolls, goes up at 5th and every six levels after that.",
      Arguments={
        Formula("InspireCourageBonus"),
      },
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "TOHIT",
          },
          Formula=Formula("%CHOICE"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "DAMAGE.Simple",
          },
          Formula=Formula("InspireCourageBonus"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "DAMAGE.Martial",
          },
          Formula=Formula("InspireCourageBonus"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "DAMAGE.Exotic",
          },
          Formula=Formula("InspireCourageBonus"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "DAMAGE.Natural",
          },
          Formula=Formula("InspireCourageBonus"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="VAR",
          Variables={
            "ActivateTempBonus",
          },
          Formula=Formula("1"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="VAR",
          Variables={
            "InspireCourageBonus",
          },
          Formula=Formula("%CHOICE"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Inspire Greatness",
  Key="Temp Bonus ~ Inspire Greatness",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Inspire Greatness&colon; A creature inspired with greatness gains 2 bonus Hit Dice (d10s), the commensurate number of temporary hit points (apply the target's Constitution modifier, if any, to these bonus Hit Dice), a +2 competence bonus on attack rolls, and a +1 competence bonus on Fortitude saves. The bonus Hit Dice count as regular Hit Dice for determining the effect of spells that are Hit Dice dependent. Inspire greatness is a mind-affecting ability and it relies on audible and visual components.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="SAVE",
          Variables={
            "Fortitude",
          },
          Formula=Formula("1"),
          Type={
            Name="Competence",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "TOHIT",
          },
          Formula=Formula("2"),
          Type={
            Name="Competence",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="HP",
          Variables={
            "CURRENTMAX",
          },
          Formula=Formula("%CHOICE+(CON*2)"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Inspire Heroics",
  Key="Temp Bonus ~ Inspire Heroics",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Inspire Heroics&colon; Inspired creatures gain a +4 morale bonus on saving throws and a +4 dodge bonus to AC.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="SAVE",
          Variables={
            "ALL",
          },
          Formula=Formula("4"),
          Type={
            Name="Morale",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "AC",
          },
          Formula=Formula("4"),
          Type={
            Name="Morale",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Aura of Courage",
  Key="Temp Bonus ~ Aura of Courage",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Aura of courage&colon; Each ally within 10 feet of her gains a +4 morale bonus on saving throws against fear effects.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="VAR",
          Variables={
            "ActivateTempBonus",
            "AuraOfCourageActivate",
          },
          Formula=Formula("1"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Aura of Resolve",
  Key="Temp Bonus ~ Aura of Resolve",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Aura of Resolve&colon; Each ally within 10 feet of her gains a +4 morale bonus on saving throws against charm effects.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="VAR",
          Variables={
            "ActivateTempBonus",
            "AuraOfResolveActivate",
          },
          Formula=Formula("1"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Aura of Justice",
  Key="Temp Bonus ~ Aura of Justice",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Aura of Justice is probably not possible (depends on the Paladin level)&colon; At 11th level, a paladin can expend two uses of her smite evil ability to grant the ability to smite evil to all allies within 10 feet, using her bonuses. Allies must use this smite evil ability by the start of the paladin's next turn and the bonuses last for 1 minute. Using this ability is a free action. Evil creatures gain no benefit from this ability.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="VAR",
          Variables={
            "ActivateTempBonus",
            "AuraOfJusticeActivate",
          },
          Formula=Formula("1"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Aura of Righteousness",
  Key="Temp Bonus ~ Aura of Righteousness",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Aura of Righteousness&colon; Each ally within 10 feet of her gains a +4 morale bonus on saving throws against compulsion effects.",
    },
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="VAR",
          Variables={
            "ActivateTempBonus",
            "AuraOfRighteousnessActivate",
          },
          Formula=Formula("1"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Inspire Courage Selectable",
  Key="Temp Bonus ~ Inspire Courage NPC",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "TOHIT",
          },
          Formula=Formula("min(floor((%CHOICE+7)/6),4)"),
        },
      },
      {
        Target="ANYPC",
        Bonus={
          Category="COMBAT",
          Variables={
            "DAMAGE.Melee",
            "DAMAGE.Ranged",
          },
          Formula=Formula("min(floor((%CHOICE+7)/6),4)"),
        },
      },
    },
  },
})

DefineAbility({
  Name="Temp Bonus ~ Strength Surge",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="ANYPC",
        Bonus={
          Category="STAT",
          Variables={
            "STR",
          },
          Formula=Formula("%CHOICE"),
        },
      },
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Temp_Bonus_Aspect_Tracker",
      },
      Conditions={
        function (character)
          return (character.Variables["ActivateTempBonus"] >= 1)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Temp Bonus ~ Stoneskin",
      },
      Conditions={
        function (character)
          return (character.Variables["StoneskinActivate"] >= 1)
        end,
      },
    },
  },
})

DefineAbility({
  Name="Temp_Bonus_Aspect_Tracker",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="Inspire courage&colon; +1 morale bonus on saving throws against charm and fear effects",
      Arguments={
        "InspireCourageBonus",
      },
      Conditions={
        function (character)
          return (character.Variables["InspireCourageBonus"] >= 1)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="Aura of courage&colon; +4 morale bonus on saving throws against fear effects.",
      Conditions={
        function (character)
          return (character.Variables["AuraOfCourageActivate"] == 1)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="Aura of Resolve&colon; +4 morale bonus on saving throws against charm effects.",
      Conditions={
        function (character)
          return (character.Variables["AuraOfResolveActivate"] == 1)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="Aura of Righteousness&colon; +4 morale bonus on saving throws against compulsion effects.",
      Conditions={
        function (character)
          return (character.Variables["AuraOfRighteousnessActivate"] == 1)
        end,
      },
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="VIRTUAL",
      Names={
        "Paladin ~ Smite Evil",
      },
      Conditions={
        function (character)
          return (character.Variables["AuraOfJusticeActivate"] == 1)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Temp Bonus ~ Bless Weapon",
      },
      Conditions={
        function (character)
          return (character.Variables["TempBonus_BlessWeapon"] == 1)
        end,
      },
    },
  },
})

DefineAbility({
  Name="Temp Bonus ~ Bless Weapon",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="The weapon is treated as having a +1 enhancement bonus for the purpose of bypassing the DR of evil creatures or striking evil incorporeal creatures [though the spell doesn't grant an actual enhancement bonus]. The weapon also becomes good-aligned, which means it can bypass the DR of certain creatures. [This effect overrides and suppresses any other alignment the weapon might have.]",
    },
  },
})

DefineAbility({
  Name="Temp Bonus ~ Stoneskin",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  DamageReduction={
    Value="10/adamantine",
  },
})

DefineAbility({
  Name="Unarmed Anarchic",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are chaotically aligned, +2d6 damage against lawful targets, 1 negative level bestowed on lawful wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
        end,
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Axiomatic",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are lawfully aligned, +2d6 damage against chaotic targets, 1 negative level bestowed to chaotic wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Bane",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks gain a +2 enhancement bonus and do +2d6 bonus damage against Selected Creature",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Brilliant Energy",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks ignore armor and shield bonuses including enhancement, cannot harm undead, constructs, and objects",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Defending",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="can transfer some or all of its enhancement bonus to AC",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Disruption",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="undead hit by unarmed and natural attacks must make Will save (DC 14) or be destroyed",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Flaming",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 fire damage",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Flaming Burst",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 fire damage, on a critical hit deals +%1d10 additional fire damage",
      Arguments={
        "CRITMULT-1",
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Frost",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 cold damage",
    },
  },
  Description={
    Format="unarmed and natural attacks do +1d6 cold damage",
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Ghost Touch",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks deal damage normally against incorporeal creatures regardless of bonus",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Holy",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are good aligned, +2d6 damage against evil targets, 1 negative level bestowed to evil wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Icy Burst",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 cold damage, on a critical hit deals +%1d10 additional cold damage",
      Arguments={
        "CRITMULT-1",
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Ki Focus",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="can use ki attacks through unarmed and natural attacks",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Merciful",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 damage, deals non-lethal damage only",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Mighty Cleaving",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="allows an additional Cleave attack per round on unarmed and natural attacks (with Cleave feat)",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Shock",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 electricity damage",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Shocking Burst",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 electricity damage, on a critical hit deals +%1d10 additional electricity damage",
      Arguments={
        "CRITMULT-1",
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Speed",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="grants one extra attack with unarmed or natural attack at full base attack bonus when making a full-attack action",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Spell Storing",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="can store a single targeted spell of up to 3rd level with a casting time of 1 standard action",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Thundering",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +%1d8 sonic damage on a critical hit and permanently deafened unless save vs Fort (DC 14)",
      Arguments={
        "CRITMULT-1",
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Unholy",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are evil aligned, +2d6 damage against good targets, 1 negative level bestowed to good wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG"
        end,
      },
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Vicious",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +2d6 damage to target, plus 1d6 damage to user",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Unarmed Wounding",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks deal 1 point of bleed damage per hit",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})

DefineAbility({
  Name="Headband of Intellect Skill Selection",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Bonuses={
    {
      Category="SKILLRANK",
      Variables={
        "%LIST",
      },
      Formula=Formula("TL"),
    },
  },
  Types={
    "HeadbandSkill",
  },
})

DefineAbility({
  Name="Spell Resistance ~ 18",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  SpellResistance="18",
})

DefineAbility({
  Name="Base Intelligent Item",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return (character.Variables["NegLevels"] >= 1)
        end,
      },
    },
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Empathy",
        "Intelligent Item ~ Lang(Common)",
        "Intelligent Item ~ Senses",
        "Intelligent Item ~ Stat",
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Languages",
      },
      Formula=Formula("SpeechBonusLang"),
    },
  },
})

DefineAbility({
  Name="Abilities",
  Key="Intelligent Item ~ Stat",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format=" &nl;200,001 gp and higher (+12)",
  },
  Types={
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="INT 10",
  Key="Intelligent Item Stat INT ~ 10",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 11",
  Key="Intelligent Item Stat INT ~ 11",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 12",
  Key="Intelligent Item Stat INT ~ 12",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 13",
  Key="Intelligent Item Stat INT ~ 13",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 14",
  Key="Intelligent Item Stat INT ~ 14",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 15",
  Key="Intelligent Item Stat INT ~ 15",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 16",
  Key="Intelligent Item Stat INT ~ 16",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 17",
  Key="Intelligent Item Stat INT ~ 17",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 18",
  Key="Intelligent Item Stat INT ~ 18",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 19",
  Key="Intelligent Item Stat INT ~ 19",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="INT 20",
  Key="Intelligent Item Stat INT ~ 20",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 10",
  Key="Intelligent Item Stat WIS ~ 10",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 11",
  Key="Intelligent Item Stat WIS ~ 11",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 12",
  Key="Intelligent Item Stat WIS ~ 12",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 13",
  Key="Intelligent Item Stat WIS ~ 13",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 14",
  Key="Intelligent Item Stat WIS ~ 14",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 15",
  Key="Intelligent Item Stat WIS ~ 15",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 16",
  Key="Intelligent Item Stat WIS ~ 16",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 17",
  Key="Intelligent Item Stat WIS ~ 17",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 18",
  Key="Intelligent Item Stat WIS ~ 18",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 19",
  Key="Intelligent Item Stat WIS ~ 19",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="WIS 20",
  Key="Intelligent Item Stat WIS ~ 20",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 10",
  Key="Intelligent Item Stat CHA ~ 10",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 11",
  Key="Intelligent Item Stat CHA ~ 11",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 12",
  Key="Intelligent Item Stat CHA ~ 12",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 13",
  Key="Intelligent Item Stat CHA ~ 13",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 14",
  Key="Intelligent Item Stat CHA ~ 14",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 15",
  Key="Intelligent Item Stat CHA ~ 15",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 16",
  Key="Intelligent Item Stat CHA ~ 16",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 17",
  Key="Intelligent Item Stat CHA ~ 17",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 18",
  Key="Intelligent Item Stat CHA ~ 18",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 19",
  Key="Intelligent Item Stat CHA ~ 19",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="CHA 20",
  Key="Intelligent Item Stat CHA ~ 20",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemStat",
  },
})

DefineAbility({
  Name="Alignment / Chaotic Good",
  Key="Intelligent Item ~ Align (CG)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Chaotic Neutral",
  Key="Intelligent Item ~ Align (CN)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Chaotic Evil",
  Key="Intelligent Item ~ Align (CE)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Neutral Evil",
  Key="Intelligent Item ~ Align (NE)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Lawful Evil",
  Key="Intelligent Item ~ Align (LE)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Lawful Good",
  Key="Intelligent Item ~ Align (LG)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Lawful Neutral",
  Key="Intelligent Item ~ Align (LN)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Neutral Good",
  Key="Intelligent Item ~ Align (NG)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Alignment / Neutral",
  Key="Intelligent Item ~ Align (TN)",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentAlignment")
      end))
    end,
  },
  Types={
    "IntelligentAlignment",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Communication / Empathy",
  Key="Intelligent Item ~ Empathy",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format="Empathy allows the item to encourage or discourage certain actions by communicating emotions and urges. It does not allow for verbal communication.",
  },
  Types={
    "IntelligentItemOutput",
    "Supernatural",
  },
})

DefineAbility({
  Name="Communication / Speech",
  Key="Intelligent Item ~ Speech",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format="An intelligent item with the capability for speech can talk using any of the languages it knows. It automatically knows Common.",
  },
  Types={
    "IntelligentItemAbility",
    "IntelligentItemOutput",
    "Supernatural",
  },
})

DefineAbility({
  Name="Communication / Telepathy",
  Key="Intelligent Item ~ Telepathy",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format="Telepathy allows an intelligent item to communicate with its wielder telepathically, regardless of its known languages. The wielder must be touching the item to communicate in this way.",
  },
  Types={
    "IntelligentItemAbility",
    "IntelligentItemOutput",
    "Supernatural",
  },
})

DefineAbility({
  Name="Communication / Read Languages",
  Key="Intelligent Item ~ ReadLang",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemAbility",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Communication / Read Magic",
  Key="Intelligent Item ~ ReadMagic",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemAbility",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Language Known By Item",
  Key="Intelligent Item ~ Lang",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseUserInput(1, "Write in Languages Known by the Item"),
  },
  Selections=Formula("1"),
  Types={
    "IntItemLang",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Senses",
  Key="Intelligent Item ~ Senses",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format="%1 ft.",
    Arguments={
      Formula("IntItemSenseRange"),
    },
  },
  Types={
    "IntelligentItemOutput",
    "Supernatural",
  },
})

DefineAbility({
  Name="Senses / Darkvision",
  Key="Intelligent Item ~ Darkvision",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format="%1 ft.",
    Arguments={
      Formula("IntItemSenseRange"),
    },
  },
  Types={
    "IntelligentItemOutput",
    "Supernatural",
  },
})

DefineAbility({
  Name="Senses / Blindsense",
  Key="Intelligent Item ~ Blindsense",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Description={
    Format="%1 ft.",
    Arguments={
      Formula("IntItemSenseRange"),
    },
  },
  Types={
    "IntelligentItemOutput",
    "Supernatural",
  },
})

DefineAbility({
  Name="Item can cast a 0-level spell at will",
  Key="Item Power ~ Cast 0 Atwill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 0) and (spell.Level >= 0)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastZeroAtWill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 1st-level spell 3/day",
  Key="Item Power ~ Cast 1 3",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 1) and (spell.Level >= 1)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastOneThree")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can use magic aura on itself at will",
  Key="Item Power ~ Magic Aura",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_MagicAura")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 2nd-level spell 1/day",
  Key="Item Power ~ Cast 2 1",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 2) and (spell.Level >= 2)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastTwoOne")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item has 5 ranks in one skill*",
  Key="Item Power ~ 5 Skill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((true))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_FiveSkill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can sprout limbs and move with a speed of 10 feet",
  Key="Item Power ~ Move",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_Move")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 3rd-level spell 1/day",
  Key="Item Power ~ Cast 3 1",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 3) and (spell.Level >= 3)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastThreeOne")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 2nd-level spell 3/day",
  Key="Item Power ~ Cast 2 3",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 2) and (spell.Level >= 2)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastTwoThree")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item has 10 ranks in one skill*",
  Key="Item Power ~ 10 Skill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((true))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_TenSkill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can change shape into one other form of the same size",
  Key="Item Power ~ Change Shape",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_ChangeShape")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can fly (as per the spell) at a speed of 30 feet",
  Key="Item Power ~ Fly",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_Fly")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 4th-level spell 1/day",
  Key="Item Power ~ Cast 4 1",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 4) and (spell.Level >= 4)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastFourOne")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can teleport itself 1/day",
  Key="Item Power ~ Teleport",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_Teleport")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 3rd-level spell 3/day",
  Key="Item Power ~ Cast 3 3",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 3) and (spell.Level >= 3)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastThreeThree")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can cast a 4th-level spell 3/day",
  Key="Item Power ~ Cast 4 3",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 4) and (spell.Level >= 4)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ ItemPower_CastFourThree")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemStandardPower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay diametrically opposed alignment",
  Key="Purpose ~ Slay Align",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay arcane spellcasters (including spellcasting monsters and those that use spell-like abilities)",
  Key="Purpose ~ Slay Arcane",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay divine spellcasters (including divine entities and servitors)",
  Key="Purpose ~ Slay Divine",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay non-spellcasters",
  Key="Purpose ~ Slay NonCasters",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay a particular creature type (see the bane special ability for choices)",
  Key="Purpose ~ Slay Creature Type",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay a particular race or kind of creature",
  Key="Purpose ~ Slay Race or Kind",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defend a particular race or kind of creature",
  Key="Purpose ~ Defend Race or Kind",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay the servants of a specific deity",
  Key="Purpose ~ Slay Deity Servant",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defend the servants and interests of a specific deity",
  Key="Purpose ~ Defend Deity Servant",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Defeat/slay all (other than the item and the wielder)",
  Key="Purpose ~ Slay All",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Type == "IntelligentPurpose")
      end))
    end,
  },
  Types={
    "IntelligentPurpose",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can detect any special purpose foes within 60 feet",
  Key="Dedicated Power ~ DetectFoe",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemx",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Wielder gets +2 luck bonus on attacks saves and checks",
  Key="Dedicated Power ~ Luck Bonus",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemx",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can use true resurrection on wielder once per month",
  Key="Dedicated Power ~ True Resurrection",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "IntelligentItemx",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can use a 4th-level spell at will",
  Key="Dedicated Power ~ Cast 4 AtWill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Cost=1,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ PurposePower_CastFourAtWill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemPurposePower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can use a 5th-level spell at will",
  Key="Dedicated Power ~ Cast 5 AtWill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Cost=1,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ PurposePower_CastFiveAtWill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemPurposePower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can use a 6th-level spell at will",
  Key="Dedicated Power ~ Cast 6 AtWill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Cost=1,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ PurposePower_CastSixAtWill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemPurposePower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Item can use a 7th-level spell at will",
  Key="Dedicated Power ~ Cast 7 AtWill",
  Category="Intelligent Item",
  AllowMultiple=true,
  Stackable=false,
  Cost=1,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Intelligent Item" and (ability.Name == "EQMOD ~ PurposePower_CastSevenAtWill")
      end)
    end,
  },
  Types={
    "IntelligentItemx",
    "ItemPurposePower",
    "IntelligentItemOutput",
  },
})

DefineAbility({
  Name="Intelligent Item ~ Has Special Purpose",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastZeroAtWill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastOneThree",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastTwoOne",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_FiveSkill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastThreeOne",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastTwoThree",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_TenSkill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastFourOne",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastThreeThree",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ ItemPower_CastFourThree",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ PurposePower_CastFourAtWill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Purpose Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ PurposePower_CastFiveAtWill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Purpose Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ PurposePower_CastSixAtWill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Purpose Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="EQMOD ~ PurposePower_CastSevenAtWill",
  Category="Intelligent Item",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Intelligent Item Purpose Power",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Pearl of the Sirines ~ Swim Speed",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Movement={
    Swim=60,
  },
})

DefineAbility({
  Name="Belt of Dwarvenkind ~ Languages",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "Dwarven")
      end,
    },
  },
})

DefineAbility({
  Name="Belt of Dwarvenkind ~ Skill Bonus ~ Dwarves",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SkillBonus",
      FormatString="+4 competence bonus on Charisma checks and Charisma-based skill checks as they relate to dealing with dwarves.",
    },
  },
})

DefineAbility({
  Name="Belt of Dwarvenkind ~ Skill Bonus ~ Gnomes/Halflings",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SkillBonus",
      FormatString="+2 competence bonus on Charisma checks and Charisma-based skill checks when dealing with gnomes and halflings.",
    },
  },
})

DefineAbility({
  Name="Belt of Dwarvenkind ~ Skill Penalty ~ Everyone Else",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SkillBonus",
      FormatString="-2 competence penalty on Charisma checks and Charisma-based skill checks when dealing with anyone else.",
    },
  },
})

DefineAbility({
  Name="Boots of the Winterlands ~ Snow Travel",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Travel across snow at your normal speed, leaving no tracks.",
    },
  },
})

DefineAbility({
  Name="Boots of the Winterlands ~ Slippery Ice",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Travel at normal speed across the most slippery ice without falling or slipping.",
    },
  },
})

DefineAbility({
  Name="Boots of the Winterlands ~ Save Bonus",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="Boots of the winterlands warm the wearer, as if affected by an endure elements spell.",
    },
  },
})

DefineAbility({
  Name="Cloak of Arachnida ~ Spider Climb",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="You can climb as if a spider climb spell had been placed upon you.",
    },
  },
})

DefineAbility({
  Name="Cloak of Arachnida ~ Web Immunity",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Immunity to entrapment by web spells or webs of any sort.",
    },
  },
})

DefineAbility({
  Name="Cloak of Arachnida ~ Web Move Speed",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="You can move in webs at half your normal speed.",
    },
  },
})

DefineAbility({
  Name="Cloak of Arachnida ~ Save Bonus",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="+2 luck bonus on all Fortitude saves against poison from spiders.",
    },
  },
})

DefineAbility({
  Name="Cloak of Displacement (Minor) ~ Miss Chance",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Attacks against you have a 20%% chance to miss.",
    },
  },
})

DefineAbility({
  Name="Horseshoes of a Zephyr ~ Movement",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="You travel without actually touching the ground. You run above (always around 4 inches above) a roughly horizontal surface. This means that non-solid or unstable surfaces can be crossed, and that movement is possible without leaving tracks on any sort of ground.",
    },
  },
})

DefineAbility({
  Name="Periapt of Health ~ Immunities",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="Immune to disease, including supernatural diseases.",
    },
  },
})

DefineAbility({
  Name="Periapt of Proof Against Poison ~ Immunities",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SaveBonus",
      FormatString="Immune to poison.",
    },
  },
})

DefineAbility({
  Name="Periapt of Wound Closure ~ Wound Stability",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="You automatically become stable if your hit points drop below 0 (but not if the damage is enough to kill you).",
    },
  },
})

DefineAbility({
  Name="Periapt of Wound Closure ~ Healing Rate",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Your normal rate of healing is doubled and you heal wounds that would not do so normally.",
    },
  },
})

DefineAbility({
  Name="Periapt of Wound Closure ~ Bleed Immunity",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="Hit point damage caused by bleeding is negated for you, but you are still susceptible to damage from bleeding that causes ability damage or drain.",
    },
  },
})

DefineAbility({
  Name="Stone of Good Luck ~ Ability Bonus",
  Category="Equipment",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="+1 luck bonus on ability checks.",
    },
  },
})

DefineAbility({
  Name="25% chance to negate critical hits and sneak attacks",
  Key="Eqmod ~ Fortification (Light)",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "Defensive",
  },
})

DefineAbility({
  Name="50% chance to negate critical hits and sneak attacks",
  Key="Eqmod ~ Fortification (Medium)",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "Defensive",
  },
})

DefineAbility({
  Name="75% chance to negate critical hits and sneak attacks",
  Key="Eqmod ~ Fortification (Heavy)",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Types={
    "Defensive",
  },
})

SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

DefineAbility({
  Name="Tongues",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  Types={
    "SpecialQuality",
    "Supernatural",
    "Communicate",
  },
})

DefineAbility({
  Name="Negative Levels",
  Category="Special Ability",
  AllowMultiple=false,
  Stackable=false,
  SourcePage="p.562",
  Description={
    Format="%1 negative levels (-%1 effective levels and loses access to %1 spells from the highest spell level castable)",
    Arguments={
      Formula("NegLevels"),
      Formula("PREVARGT:NegLevels,1"),
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT",
      },
      Formula=Formula("-1*(NegLevels)"),
    },
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("-5*(NegLevels)"),
    },
    {
      Category="SAVE",
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
      Formula=Formula("-1*(NegLevels)"),
    },
    {
      Category="SKILL",
      Variables={
        "TYPE=Strength",
        "TYPE=Dexterity",
        "TYPE=Intelligence",
        "TYPE=Wisdom",
        "TYPE=Charisma",
      },
      Formula=Formula("-1*(NegLevels)"),
    },
  },
  Types={
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Natural Attack ~ Shield Bash",
  Category="Natural Attack",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash Stats",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NaturalShieldReach",
      },
      Formula=Formula("REACH.VAL"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashAttackTotal",
      },
      Formula=Formula("BAB+STR+ShieldBashAttackBonus"),
    },
    {
      Category="VAR",
      Variables={
        "InterativeAttack",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldCritMult",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldThreatRange",
      },
      Formula=Formula("20"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashAttackBonus",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Weapon Focus (Shieldbash)")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashAttackBonus",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Greater Weapon Focus (Shieldbash)")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashDamageBonus",
      },
      Formula=Formula("2"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Weapon Specialization (Shieldbash)")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashDamageBonus",
      },
      Formula=Formula("2"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Greater Weapon Specialization (Shieldbash)")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "InterativeAttack",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.TotalAttackBonus >= 6
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "InterativeAttack",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.TotalAttackBonus >= 11
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "InterativeAttack",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.TotalAttackBonus >= 16
        end,
      },
    },
  },
  Types={
    "NaturalAttack",
  },
})

ModifyAbility({
  Name="Natural Attack ~ Shield Bash",
  Category="Natural Attack",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="NaturalAttackName",
      FormatString="Shield Bash (Light)",
      Conditions={
        function (character)
          return ((character.HasEquipped(function (item) return item.IsType("Shield") end)) + (character.HasEquipped(function (item) return item.IsType("Light") end))) >= 1
        end,
      },
    },
    {
      Name="NaturalAttackName",
      FormatString="Shield Bash (Heavy)",
      Conditions={
        function (character)
          return ((character.HasEquipped(function (item) return item.IsType("Shield") end)) + (character.HasEquipped(function (item) return item.IsType("Heavy") end))) >= 1
        end,
      },
    },
    {
      Name="NaturalAttackToHit",
      FormatString="+%1",
      Arguments={
        "ShieldBashAttackTotal",
      },
      Conditions={
        function (character)
          return (character.Variables["InterativeAttack"] == 1)
        end,
      },
    },
    {
      Name="NaturalAttackToHit",
      FormatString="+%1/+%2",
      Arguments={
        "ShieldBashAttackTotal",
        "ShieldBashAttackTotal-5",
      },
      Conditions={
        function (character)
          return (character.Variables["InterativeAttack"] == 2)
        end,
      },
    },
    {
      Name="NaturalAttackToHit",
      FormatString="+%1/+%2/+%3",
      Arguments={
        "ShieldBashAttackTotal",
        "ShieldBashAttackTotal-5",
        "ShieldBashAttackTotal-10",
      },
      Conditions={
        function (character)
          return (character.Variables["InterativeAttack"] == 3)
        end,
      },
    },
    {
      Name="NaturalAttackToHit",
      FormatString="+%1/+%2/+%3/+%4",
      Arguments={
        "ShieldBashAttackTotal",
        "ShieldBashAttackTotal-5",
        "ShieldBashAttackTotal-10",
        "ShieldBashAttackTotal-15",
      },
      Conditions={
        function (character)
          return (character.Variables["InterativeAttack"] == 4)
        end,
      },
    },
    {
      Name="NaturalAttackDamage",
      FormatString="%1d%2",
      Arguments={
        "ShieldDamageDice",
        "ShieldDamageSize",
      },
    },
    {
      Name="NaturalAttackDamageBonus",
      FormatString="%1",
      Arguments={
        "STR+ShieldBashDamageBonus",
      },
    },
    {
      Name="NaturalAttackReach",
      FormatString="%1 ft.",
      Arguments={
        "NaturalShieldReach",
      },
    },
    {
      Name="NaturalAttackType",
      FormatString="Lethal",
    },
    {
      Name="NaturalAttackThreatRange",
      FormatString="%1/x%2",
      Arguments={
        "ShieldThreatRange",
        "ShieldCritMult",
      },
    },
  },
})

DefineAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashAttackBonus",
      },
      Formula=Formula("-4"),
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Shield Mastery" or ability.Name == "Shield Master")
          end))
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldBashingDieSizeStep",
      },
      Formula=Formula("3"),
      Type={
        Name="ShieldSize",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return character.Size == "M"
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Shield") end)) + (character.HasEquipped(function (item) return item.IsType("Light") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashingDieSizeStep",
      },
      Formula=Formula("4"),
      Type={
        Name="ShieldSize",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return character.Size == "M"
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Shield") end)) + (character.HasEquipped(function (item) return item.IsType("Heavy") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldBashingDieSizeStep",
      },
      Formula=Formula("2"),
      Type={
        Name="ShieldSize",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return character.Size == "S"
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Shield") end)) + (character.HasEquipped(function (item) return item.IsType("Light") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashingDieSizeStep",
      },
      Formula=Formula("3"),
      Type={
        Name="ShieldSize",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return character.Size == "S"
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Shield") end)) + (character.HasEquipped(function (item) return item.IsType("Heavy") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d1",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 1)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d2",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 2)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d3",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 3)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d4",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 4)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 5)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d8",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 6)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 2d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 7)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 3d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 8)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 4d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 9)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 6d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 10)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 8d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 11)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 12d6",
      },
      Conditions={
        function (character)
          return (character.Variables["ShieldBashingDieSizeStep"] == 12)
        end,
      },
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d1",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d2",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("2"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d3",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("3"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d4",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("4"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d8",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("8"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d10",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("10"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 1d12",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("12"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 2d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("1"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 3d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("2"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 4d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("3"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 6d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("5"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 8d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("7"),
    },
  },
})

DefineAbility({
  Name="Shield Bash 12d6",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ShieldDamageSize",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "ShieldDamageDice",
      },
      Formula=Formula("11"),
    },
  },
})

DefineAbility({
  Name="Temp Bonus ~ Enlarge Person",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Enlarge/Reduce Weapon List",
      },
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.GRAPPLE",
      },
      Formula=Formula("EnlargePerson_GrappleBonusValue"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SIZEMOD",
      Variables={
        "NUMBER",
      },
      Formula=Formula("1"),
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("EnlargePerson_StrBonusValue"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("-EnlargePerson_DexBonusValue"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "SizeIncrease",
      },
      Formula=Formula("-1"),
    },
    {
      Category="VAR",
      Variables={
        "DamageSizeAdjustment",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("EnlargePerson_ACBonusValue"),
    },
  },
})

DefineAbility({
  Name="Temp Bonus ~ Reduce Person",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Enlarge/Reduce Weapon List",
      },
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.GRAPPLE",
      },
      Formula=Formula("-5"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SIZEMOD",
      Variables={
        "NUMBER",
      },
      Formula=Formula("-1"),
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
      Type={
        Name="Size",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "SizeDecrease",
      },
      Formula=Formula("-1"),
    },
    {
      Category="VAR",
      Variables={
        "DamageSizeAdjustment",
      },
      Formula=Formula("-1"),
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "EnlargePerson_GrappleBonusValue",
      },
      Formula=Formula("5"),
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "EnlargePerson_StrBonusValue",
      },
      Formula=Formula("2"),
    },
  },
})

ModifyAbility({
  Name="Default",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "EnlargePerson_DexBonusValue",
      },
      Formula=Formula("2"),
    },
  },
})

DefineAbility({
  Name="Enlarge/Reduce Weapon List",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="WEAPONPROF=Aklys (Gladiator)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Aklys",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Amentum (Javelin)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Amentum",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Atlatl",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Axe (Orc Double)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Axe (Throwing)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Ballista (Gate Breaker)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Ballista (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Ballista (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Battle Aspergillum",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Battleaxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Blowgun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Blunderbuss",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Bo Staff",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Boar Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Bolas",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Bombard (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Bombard (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Bombard (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Brass Knuckles",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Broadsword (Nine Ring)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Buckler Gun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Butterfly Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Cannon (Fiend's Mouth)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Cannon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Catapult (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Catapult (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Catapult (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Chain (Spiked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Chain Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Club",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Crossbow (Hand)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Crossbow (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Crossbow (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Hand)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Culverin",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Curve Blade (Elven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Dagger (Punching)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Dagger",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Dan Bong",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Dogslicer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Double Chicken Saber",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Double Hackbut",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Earth Breaker",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Emei Piercer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Falchion",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Fighting Fan",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Fire Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Firearms",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Firedrake",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Firewyrm",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Flail (Dire)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Flail (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Flail",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Flying Blade",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Gauntlet (Spiked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Gauntlet",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Gladius",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Glaive",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Great Terbutje",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Greataxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Greatclub",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Greatsword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Guisarme",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Halberd",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Hammer (Gnome Hooked)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Hammer (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Handaxe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Harpoon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Hooked Axe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Hooked Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Horsechopper",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Hunga Munga",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Iron Brush",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Javelin",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Jutte",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kama (Double-Chained)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kama",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Katana (Double Walking Stick)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Katana",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kerambit",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kestros",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Klar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Knuckle Axe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kukri",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kusarigama (Sickle and Chain)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kyoketsu Shoge",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Lance",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Longbow",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Longspear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Longsword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Lucerne Hammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Lungchuan Tamo",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Mace (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Mace (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Madu",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Mattock",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Mere Club",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Meteor Hammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Monk's Spade",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Morningstar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Musket (Axe)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Musket (Double-Barreled)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Musket (Warhammer)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Musket",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Naginata",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Net",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Nine-Section Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Nodachi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Nunchaku",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Ogre Hook",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pata",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pepperbox",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pick (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pick (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pistol (Coat)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pistol (Dagger)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pistol (Double-Barreled)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pistol (Dragon)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pistol (Sword Cane)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Pistol",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Poisoned Sand Tube",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Quadrens",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Quarterstaff",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Ranseur",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Rapier",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Revolver",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Rhoka Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Rhomphaia",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Rifle",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Rope Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sai",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sansetsukon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sap",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sawtooth Sabre",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Scimitar",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Scizore",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Scorpion Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Scythe",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shang Gou",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shieldbash",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shortbow",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shortspear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shotel",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shotgun",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Shuriken",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Siangham",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sibat",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sica",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sickle",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sling Staff (Halfling)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sling",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Snag Net",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Spear",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Spiked Armor",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Splash Weapon",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Springal (Arrow)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Springal (Rocket)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Starknife",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sword (Bastard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sword (Seven-Branched)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sword (Short)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sword (Tri-Point Double-Edged)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sword (Two-Bladed)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Swordbreaker (Dagger)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Taiaha",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Taiaha",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tekko-Kagi (Iron Claw)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Temple Sword",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tepoztopilli",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Terbutje (Great)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Terbutje",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tetsubo",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Throwing Shield",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tiger Fork",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tonfa",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Trebuchet (Standard)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Trident",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tube Arrow Shooter",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Heavy)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Light)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Urgrosh (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Urumi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Wahaika",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Wakizashi",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Warhammer",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Whip",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Wushu Dart",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven Double)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Helmet (Dwarven Boulder)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Longaxe (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Longhammer (Dwarven)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Kobold Tail Attachment",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Tailblade (Ratfolk)",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Terror Kite",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WEAPONPROF=Sea-Knife",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
    {
      Category="WIELDCATEGORY",
      Variables={
        "ALL",
      },
      Formula=Formula("DamageSizeAdjustment"),
    },
  },
})

DefineAbility({
  Name="+1 Bonus Feat",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 feat.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "FEAT",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Skill Rank",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((not (character.Ranks(skill) >= character.MaxSkillRank) and (((skill.IsType("Base"))))))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 skill rank (won't exceed max ranks).",
  },
  Bonuses={
    {
      Category="SKILLRANK",
      Variables={
        "%LIST",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Skill Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 skill bonus.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "%LIST",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Skill Point",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 skill point.",
  },
  Bonuses={
    {
      Category="SKILLPOINTS",
      Variables={
        "NUMBER",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Hit Point",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 hit point.",
  },
  Bonuses={
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Spell per Day",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 spell per day.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "GM Bonus Spell Cast",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="+1 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 spell known.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "GM Bonus Spell Known",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="+1 Arcane Caster Level",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 arcane caster level.",
  },
  Bonuses={
    {
      Category="PCLEVEL",
      Variables={
        "TYPE.Arcane",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="+1 Divine Caster Level",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 divine caster level.",
  },
  Bonuses={
    {
      Category="PCLEVEL",
      Variables={
        "TYPE.Divine",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="Add Language",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseLanguage(function (character, lang)
      return ((lang.IsType("Spoken")))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with bonus Language.",
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "%LIST")
      end,
    },
  },
})

DefineAbility({
  Name="+Total Level Ranks to Skill",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=false,
  Cost=0,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 skill rank per level or use with custom INT bonus items.",
  },
  Bonuses={
    {
      Category="SKILLRANK",
      Variables={
        "%LIST",
      },
      Formula=Formula("TL"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Add a Feat Ignoring Restrictions",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseAbilitySelection(function (character, ability)
      if ability.Category ~= "FEAT" then
        return false
      end
      return ((true))
    end),
  },
  SortKey="Z_Award",
  Abilities={
    {
      Category="FEAT",
      Nature="NORMAL",
      Names={
        "%LIST",
      },
    },
  },
  Description={
    Format="GM awarded PC with 1 feat that ignores restrictions.",
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Level 1 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 1 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 2 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 2 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 3 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 3 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 4 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 4 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 5 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 5 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 6 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 6 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 7 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 7 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 8 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 8 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 9 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 9 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})

DefineAbility({
  Name="+1 Level 1 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 1 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 2 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 2 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 3 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 3 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 4 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 4 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 5 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 5 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 6 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 6 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 7 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 7 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 8 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 8 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 Level 9 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 level 9 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})

DefineAbility({
  Name="+1 STR Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 STR bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 DEX Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 DEX bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 CON Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 CON bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 INT Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 INT bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 WIS Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 WIS bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 CHA Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with +1 CHA bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 Bonus Feat",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 feat.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "FEAT",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 Skill Rank",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 skill rank (won't exceed max ranks).",
  },
  Bonuses={
    {
      Category="SKILLRANK",
      Variables={
        "%LIST",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 Skill Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 skill bonus.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "%LIST",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 Hit Point",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 hit point.",
  },
  Bonuses={
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 Spell per Day",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 spell per day.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "GM Penalized Spell Cast",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="-1 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 spell known.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "GM Penalized Spell Known",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="-1 Arcane Caster Level",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with -1 arcane caster level.",
  },
  Bonuses={
    {
      Category="PCLEVEL",
      Variables={
        "TYPE.Arcane",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="-1 Divine Caster Level",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM awarded PC with -1 divine caster level.",
  },
  Bonuses={
    {
      Category="PCLEVEL",
      Variables={
        "TYPE.Divine",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
  },
})

DefineAbility({
  Name="-1 Level 1 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 1 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 2 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 2 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 3 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 3 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 4 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 4 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 5 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 5 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 6 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 6 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 7 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 7 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 8 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 8 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 9 Spell Known",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 9 spell known.",
  },
  Bonuses={
    {
      Category="SPELLKNOWN",
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})

DefineAbility({
  Name="-1 Level 1 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 1 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 2 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 2 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 3 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 3 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 4 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 4 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 5 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 5 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 6 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 6 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 7 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 7 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 8 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 8 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 Level 9 Spell Cast",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 level 9 spell per day.",
  },
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})

DefineAbility({
  Name="-1 STR Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 STR bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 DEX Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 DEX bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 CON Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 CON bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 INT Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 INT bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 WIS Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 WIS bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-1 CHA Score Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalized PC with -1 CHA bonus.",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-1"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Deflection Bonus",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Award of Natural Armor",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Deflection",
        Replace=false,
        Stack=true,
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+1 Natural Armor",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Award of Deflection Bonus",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="NaturalArmorEnhancement",
        Replace=false,
        Stack=true,
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="+5 ft walk speed",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Award of 5ft of movement speed",
  },
  Bonuses={
    {
      Category="MOVEADD",
      Variables={
        "TYPE.Walk",
      },
      Formula=Formula("5"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="-5 ft walk speed",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Cost=0,
  Choice={
    Choose=ChooseNothing(),
  },
  SortKey="Z_Award",
  Description={
    Format="GM Penalty of 5ft of movement speed",
  },
  Bonuses={
    {
      Category="MOVEADD",
      Variables={
        "TYPE.Walk",
      },
      Formula=Formula("-5"),
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})

DefineAbility({
  Name="Rule - Bypass the Trait Restrictions",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  Description={
    Format="This allows the PC to bypass the restrictions on taking only 1 trait from any given category.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "BypassTraitRestriction",
      },
      Formula=Formula("1"),
      Type={
        Name="Rule",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "OptionalRules",
  },
})

DefineAbility({
  Name="Rule - Bypass the Drawback Restrictions",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  Description={
    Format="This allows the PC to bypass the restrictions on taking only 1 drawback.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "BypassDrawbackRestriction",
      },
      Formula=Formula("1"),
      Type={
        Name="Rule",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "OptionalRules",
  },
})

DefineAbility({
  Name="Rule - Using Weapons with Natural Attacks",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Cost=0,
  Description={
    Format="This changes the Natural Primary attacks to Secondary while using weapons.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "UseWeaponsWithNaturalAttacks",
      },
      Formula=Formula("1"),
      Type={
        Name="Rule",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "OptionalRules",
  },
})

DefineAbility({
  Name="Clear Spindle",
  Key="Ioun Stone / Clear Spindle",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="Sustains creature without food or water",
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Clear Spindle",
    "Ioun",
  },
})

DefineAbility({
  Name="Dark blue Rhomboid",
  Key="Ioun Stone / Dark blue Rhomboid",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
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
  SourcePage="p.520",
  Types={
    "Ioun Stone",
    "Equipment",
    "Dark blue Rhomboid",
    "Ioun",
  },
})

DefineAbility({
  Name="Deep red Sphere",
  Key="Ioun Stone / Deep red Sphere",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Deep red Sphere",
    "Ioun",
  },
})

DefineAbility({
  Name="Dusty rose Prism",
  Key="Ioun Stone / Dusty rose Prism",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Insight",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Dusty rose Prism",
    "Ioun",
  },
})

DefineAbility({
  Name="Incandescent blue Sphere",
  Key="Ioun Stone / Incandescent blue Sphere",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Incandescent blue Sphere",
    "Ioun",
  },
})

DefineAbility({
  Name="Iridescent Spindle",
  Key="Ioun Stone / Iridescent Spindle",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="Sustains creature without air",
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Iridescent Spindle",
    "Ioun",
  },
})

DefineAbility({
  Name="Lavender and green Ellipsoid",
  Key="Ioun Stone / Lavender and green Ellipsoid",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="Absorbs spells of 8th level or lower",
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Lavender and green Ellipsoid",
    "Ioun",
  },
})

DefineAbility({
  Name="Orange Prism",
  Key="Ioun Stone / Orange Prism",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Caster_Level_Bonus",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Orange Prism",
    "Ioun",
  },
})

DefineAbility({
  Name="Pale blue Rhomboid",
  Key="Ioun Stone / Pale blue Rhomboid",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Pale blue Rhomboid",
    "Ioun",
  },
})

DefineAbility({
  Name="Pale green Prism",
  Key="Ioun Stone / Pale green Prism",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="+1 to ability checks",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Competence",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SAVE",
      Variables={
        "ALL",
      },
      Formula=Formula("1"),
      Type={
        Name="Competence",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SKILL",
      Variables={
        "TYPE.Base",
      },
      Formula=Formula("1"),
      Type={
        Name="Competence",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Pale green Prism",
    "Ioun",
  },
})

DefineAbility({
  Name="Pale lavender Ellipsoid",
  Key="Ioun Stone / Pale lavender Ellipsoid",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="Absorbs spells of 4th level or lower",
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Pale lavender Ellipsoid",
    "Ioun",
  },
})

DefineAbility({
  Name="Pearly white Spindle",
  Key="Ioun Stone / Pearly white Spindle",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="Regenerate 1 point of damage per 10 minutes",
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Pearly white Spindle",
    "Ioun",
  },
})

DefineAbility({
  Name="Pink and green Sphere",
  Key="Ioun Stone / Pink and green Sphere",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Pink and green Sphere",
    "Ioun",
  },
})

DefineAbility({
  Name="Pink Rhomboid",
  Key="Ioun Stone / Pink Rhomboid",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Pink Rhomboid",
    "Ioun",
  },
})

DefineAbility({
  Name="Scarlet and blue Sphere",
  Key="Ioun Stone / Scarlet and blue Sphere",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Bonuses={
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Scarlet and blue Sphere",
    "Ioun",
  },
})

DefineAbility({
  Name="Vibrant purple Prism",
  Key="Ioun Stone / Vibrant purple Prism",
  Category="Special Ability",
  AllowMultiple=true,
  Stackable=true,
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Description={
    Format="Stores three levels of spells, as a ring of spell storing",
  },
  Types={
    "Ioun Stone",
    "Equipment",
    "Vibrant purple",
    "Ioun",
  },
})

DefineAbility({
  Name="Acrobatics",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Acrobatics",
  },
})

DefineAbility({
  Name="Appraise",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Appraise",
  },
})

DefineAbility({
  Name="Bluff",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Bluff",
  },
})

DefineAbility({
  Name="Climb",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Climb",
  },
})

DefineAbility({
  Name="Craft",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "TYPE=Craft",
  },
})

DefineAbility({
  Name="Craft (Alchemy)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Alchemy)",
  },
})

DefineAbility({
  Name="Craft (Armor)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Armor)",
  },
})

DefineAbility({
  Name="Craft (Baskets)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Baskets)",
  },
})

DefineAbility({
  Name="Craft (Blacksmithing)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Blacksmithing)",
  },
})

DefineAbility({
  Name="Craft (Books)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Books)",
  },
})

DefineAbility({
  Name="Craft (Bows)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Bows)",
  },
})

DefineAbility({
  Name="Craft (Calligraphy)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Calligraphy)",
  },
})

DefineAbility({
  Name="Craft (Carpentry)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Carpentry)",
  },
})

DefineAbility({
  Name="Craft (Cloth)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Cloth)",
  },
})

DefineAbility({
  Name="Craft (Clothing)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Clothing)",
  },
})

DefineAbility({
  Name="Craft (Gemcutting)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Gemcutting)",
  },
})

DefineAbility({
  Name="Craft (Glass)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Glass)",
  },
})

DefineAbility({
  Name="Craft (Jewelry)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Jewelry)",
  },
})

DefineAbility({
  Name="Craft (Leather)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Leather)",
  },
})

DefineAbility({
  Name="Craft (Locks)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Locks)",
  },
})

DefineAbility({
  Name="Craft (Paintings)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Paintings)",
  },
})

DefineAbility({
  Name="Craft (Pottery)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Pottery)",
  },
})

DefineAbility({
  Name="Craft (Sculptures)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Sculptures)",
  },
})

DefineAbility({
  Name="Craft (Ships)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Ships)",
  },
})

DefineAbility({
  Name="Craft (Shoes)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Shoes)",
  },
})

DefineAbility({
  Name="Craft (Stonemasonry)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Stonemasonry)",
  },
})

DefineAbility({
  Name="Craft (Traps)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Traps)",
  },
})

DefineAbility({
  Name="Craft (Weapons)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Weapons)",
  },
})

DefineAbility({
  Name="Craft (Untrained)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Craft (Untrained)",
  },
})

DefineAbility({
  Name="Diplomacy",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Diplomacy",
  },
})

DefineAbility({
  Name="Disable Device",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Disable Device",
  },
})

DefineAbility({
  Name="Disguise",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Disguise",
  },
})

DefineAbility({
  Name="Escape Artist",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Escape Artist",
  },
})

DefineAbility({
  Name="Fly",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Fly",
  },
})

DefineAbility({
  Name="Handle Animal",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Handle Animal",
  },
})

DefineAbility({
  Name="Heal",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Heal",
  },
})

DefineAbility({
  Name="Intimidate",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Intimidate",
  },
})

DefineAbility({
  Name="Knowledge",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "TYPE=Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Arcana)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Arcana)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Dungeoneering)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Dungeoneering)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Engineering)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Engineering)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Geography)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Geography)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (History)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (History)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Local)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Local)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Nature)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Nature)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Nobility)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Nobility)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Planes)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Planes)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Religion)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Religion)",
  },
  Types={
    "Knowledge",
  },
})

DefineAbility({
  Name="Knowledge (Untrained)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Knowledge (Untrained)",
  },
})

DefineAbility({
  Name="Linguistics",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Linguistics",
  },
})

DefineAbility({
  Name="Perception",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perception",
  },
})

DefineAbility({
  Name="Perform",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "TYPE=Perform",
  },
})

DefineAbility({
  Name="Perform (Act)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Act)",
  },
})

DefineAbility({
  Name="Perform (Comedy)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Comedy)",
  },
})

DefineAbility({
  Name="Perform (Dance)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Dance)",
  },
})

DefineAbility({
  Name="Perform (Keyboard Instruments)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Keyboard Instruments)",
  },
})

DefineAbility({
  Name="Perform (Oratory)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Oratory)",
  },
})

DefineAbility({
  Name="Perform (Percussion Instruments)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Percussion Instruments)",
  },
})

DefineAbility({
  Name="Perform (Sing)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Sing)",
  },
})

DefineAbility({
  Name="Perform (String Instruments)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (String Instruments)",
  },
})

DefineAbility({
  Name="Perform (Wind Instruments)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Wind Instruments)",
  },
})

DefineAbility({
  Name="Perform (Untrained)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Perform (Untrained)",
  },
})

DefineAbility({
  Name="Profession",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "TYPE=Profession",
  },
})

DefineAbility({
  Name="Profession (Architect)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Architect)",
  },
})

DefineAbility({
  Name="Profession (Baker)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Baker)",
  },
})

DefineAbility({
  Name="Profession (Barrister)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Barrister)",
  },
})

DefineAbility({
  Name="Profession (Brewer)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Brewer)",
  },
})

DefineAbility({
  Name="Profession (Butcher)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Butcher)",
  },
})

DefineAbility({
  Name="Profession (Clerk)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Clerk)",
  },
})

DefineAbility({
  Name="Profession (Cook)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Cook)",
  },
})

DefineAbility({
  Name="Profession (Courtesan)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Courtesan)",
  },
})

DefineAbility({
  Name="Profession (Driver)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Driver)",
  },
})

DefineAbility({
  Name="Profession (Engineer)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Engineer)",
  },
})

DefineAbility({
  Name="Profession (Farmer)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Farmer)",
  },
})

DefineAbility({
  Name="Profession (Fisherman)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Fisherman)",
  },
})

DefineAbility({
  Name="Profession (Gambler)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Gambler)",
  },
})

DefineAbility({
  Name="Profession (Gardener)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Gardener)",
  },
})

DefineAbility({
  Name="Profession (Herbalist)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Herbalist)",
  },
})

DefineAbility({
  Name="Profession (Innkeeper)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Innkeeper)",
  },
})

DefineAbility({
  Name="Profession (Librarian)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Librarian)",
  },
})

DefineAbility({
  Name="Profession (Merchant)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Merchant)",
  },
})

DefineAbility({
  Name="Profession (Midwife)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Midwife)",
  },
})

DefineAbility({
  Name="Profession (Miller)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Miller)",
  },
})

DefineAbility({
  Name="Profession (Miner)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Miner)",
  },
})

DefineAbility({
  Name="Profession (Porter)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Porter)",
  },
})

DefineAbility({
  Name="Profession (Sailor)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Sailor)",
  },
})

DefineAbility({
  Name="Profession (Scribe)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Scribe)",
  },
})

DefineAbility({
  Name="Profession (Shepherd)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Shepherd)",
  },
})

DefineAbility({
  Name="Profession (Soldier)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Soldier)",
  },
})

DefineAbility({
  Name="Profession (Soothsayer)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Soothsayer)",
  },
})

DefineAbility({
  Name="Profession (Stable Master)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Stable Master)",
  },
})

DefineAbility({
  Name="Profession (Tanner)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Tanner)",
  },
})

DefineAbility({
  Name="Profession (Trapper)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Trapper)",
  },
})

DefineAbility({
  Name="Profession (Woodcutter)",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Profession (Woodcutter)",
  },
})

DefineAbility({
  Name="Ride",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Ride",
  },
})

DefineAbility({
  Name="Sense Motive",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Sense Motive",
  },
})

DefineAbility({
  Name="Sleight of Hand",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Sleight of Hand",
  },
})

DefineAbility({
  Name="Spellcraft",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Spellcraft",
  },
})

DefineAbility({
  Name="Stealth",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Stealth",
  },
})

DefineAbility({
  Name="Survival",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Survival",
  },
})

DefineAbility({
  Name="Swim",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Swim",
  },
})

DefineAbility({
  Name="Use Magic Device",
  Category="Class Skill",
  AllowMultiple=false,
  Stackable=false,
  ClassSkills={
    "Use Magic Device",
  },
})

DefineAbility({
  Name="Tracker ~ Range Penalty",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "RANGEPENALTY",
      },
      Formula=Formula("RangePenaltyValue"),
    },
  },
})

