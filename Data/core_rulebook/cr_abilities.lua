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
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Temp Bonus ~ Enlarge Person",
      },
      Conditions={
        function (character, item, sources)
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
        function (character, item, sources)
          return (character.Variables["ActivateReducePerson"] == 1)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Exotic Weapon Proficiency (Sword (Bastard))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BastardSwordExoticUse",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Exotic Weapon Proficiency (Waraxe (Dwarven))" then return true end
            return false
          end)
        end,
      },
      Variables={
        "DwarvenWaraxeExoticUse",
      },
    },
    {
      Category="VAR",
      Formula=Formula("SPELLFAILURE"),
      Variables={
        "SPELLFAILURE_Total",
      },
    },
  },
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Aspect Combat Bonus ~ Encumbrance",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Encumbrance"] >= 1)
        end,
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
        "WeaponFocusToHit",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "GreaterWeaponFocusToHit",
      },
    },
  },
})
DefineAbility({
  Name="Negate Aging Penalties",
  Category="Internal",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("NegatedAgePenalty"),
      Variables={
        "STR",
        "CON",
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Middle-Aged"))
        end,
      },
      Variables={
        "NegatedAgePenalty",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Old"))
        end,
      },
      Variables={
        "NegatedAgePenalty",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Conditions={
        function (character, item, sources)
          return (character.IsAgeSetOrOlder("Venerable"))
        end,
      },
      Variables={
        "NegatedAgePenalty",
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
      Formula=Formula("1"),
      Variables={
        "Linguisitcs_NumLanguages",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "FightingDefensivelyAttackPenalty",
      },
    },
  },
})
DefineAbility({
  Name="Aspect Combat Bonus ~ Mobility",
  Category="Internal",
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
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "Feat_Mobility_DodgeBonus",
      },
    },
  },
})
DefineAbility({
  Name="Aspect Combat Bonus ~ Encumbrance",
  Category="Internal",
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
  Cost=0,
  Description={
    Format="Curse, spell; Fort DC 17 negates, Will DC 17 partial;Effect transforms target into a lizard",
  },
  SourcePage="p.556",
  Types={
    "Curse",
    "Affliction",
  },
})
DefineAbility({
  Name="Bestow Curse Trap",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Curse, trap; Will DC 14;Effect -6 penalty to Strength",
  },
  SourcePage="p.556",
  Types={
    "Curse",
    "Affliction",
  },
})
DefineAbility({
  Name="Curse of the Ages",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Curse; Will DC 17; Frequency 1/day; Effect age 1 year",
  },
  SourcePage="p.557",
  Types={
    "Curse",
    "Affliction",
  },
})
DefineAbility({
  Name="Mummy Rot",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Curse, disease, injury; Fort DC 16; Onset 1 minute; Frequency 1/day; Effect 1d6 Con damage and 1d6 Cha damage; Cure mummy rot can only be cured by successfully casting both remove curse and remove disease within 1 minute of each other.",
  },
  SourcePage="p.557",
  Types={
    "Curse",
    "Affliction",
  },
})
DefineAbility({
  Name="Unluck",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Curse; Save Will DC 20 negates, no save to avoid effects; Frequency 1/hour; Effect target must reroll any roll decided by the GM and take the worse result",
  },
  SourcePage="p.557",
  Types={
    "Curse",
    "Affliction",
  },
})
DefineAbility({
  Name="Werewolf Lycanthropy",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Curse, injury; Fort DC 15 negates, Will DC 15 to avoid effects; Onset the next full moon; Frequency on the night of every full moon or whenever the target is injured; Effect target transforms into a wolf under the GM's control until the next morning",
  },
  SourcePage="p.557",
  Types={
    "Curse",
    "Affliction",
  },
})
DefineAbility({
  Name="Blinding Sickness",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, Ingested; Fort DC 16; Onset 1d3 days; Frequency 1/day; Effect 1d4 Str damage, if more than 2 Str damage, target must make an additional Fort save or be permanently blinded; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Bubonic Plague",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, injury or inhaled; Fort DC 17; Onset 1 day; Frequency 1/day; Effect 1d4 Con damage and 1 Cha damage and target is fatigued; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Cackle Fever",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, inhaled; Fort DC 16; Onset 1 day; Frequency 1/day; Effect 1d6 Wis damage; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Demon Fever",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, injury; Fort DC 18; Onset 1 day; Frequency 1/day; Effect 1d6 Con damage, target must make a second Fort save or 1 point of the damage is drain instead; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Devil Chills",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, injury; Fort DC 14; Onset 1d4 days; Frequency 1/day; Effect 1d4 Str damage; Cure 3 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Filth Fever",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, injury; Save Fortitude DC 12; Onset 1d3 days; Frequency 1/day; Effect 1d3 Dex damage and 1d3 Con damage; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Leprosy",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, contact, inhaled, or injury; Fort DC 12 negates, Fortitude DC 20 to avoid effects; Onset 2d4 weeks; Frequency 1/week; Effect 1d2 Cha damage; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Mindfire",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, inhaled; Fort DC 12; Onset 1 day; Frequency 1/day; Effect 1d4 Int damage; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Red Ache",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, injury; Fort DC 15; Onset 1d3 days; Frequency 1/day; Effect 1d6 Str damage; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Shakes",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, contact; Fort DC 13; Onset 1 day; Frequency 1/day; Effect 1d8 Dex damage; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Slimy Doom",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Disease, contact; Fortitude DC 14; Onset 1 day; Frequency 1/day; Effect 1d4 Con damage, target must make a second Fort save or 1 point of the damage is drain instead; Cure 2 consecutive saves",
  },
  SourcePage="p.557",
  Types={
    "Disease",
    "Affliction",
  },
})
DefineAbility({
  Name="Arsenic",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 13; Freq. 1 round (5); Effect 1 Con damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Black Adder Venom",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 11; Freq. 1 round (6); Effect 1 Con damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Black Lotus Extract",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 20; Freq. 1 round (7); Effect 3 Con damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Bloodroot",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 12; Freq. 1 round (3); Effect 1 Con damage and 1 Wis damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Blue Whinnis",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 14; Freq. 1 round (2); Effect 1 Con damage/unconsciousness for 1d3 hours; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Burnt Othur Fumes",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Inhaled; Fort DC 18; Freq. 1 round (4); Effect 1 Con drain/3 Con damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Dark Reaver Powder",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 18; Freq. 1 round (5); Effect 2 Con damage/1 Con damage and 1 Str damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Deathblade",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 20; Freq. 1 round (5); Effect 2 Con damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Dragon Bile",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 26; Freq. 1 round (3); Effect 3 Str damage; Cure 1 save",
  },
  SourcePage="p.558",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Drow Poison",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 13; Freq. 1 minute (1); Effect unconsciousness for 1 minute/unconsciousness for 2d4 hours; Cure 1 save",
  },
  SourcePage="p.559",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Giant Wasp Poison",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 18; Freq. 1 round (4); Effect 1 Dex damage; Cure 1 save",
  },
  SourcePage="p.559",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Greenblood Oil",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 13; Freq. 1 round (2); Effect 1 Con damage; Cure 1 save",
  },
  SourcePage="p.559",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Id Moss",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 14; Freq. 1 round (5); Effect 2 Int damage; Cure 1 save",
  },
  SourcePage="p.559",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Insanity Mist",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Inhaled; Fort DC 15; Freq. 1 round (5); Effect 2 Wis damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="King's Sleep",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 19; Freq. 1 day; Effect 1 Con drain; Cure 2 consecutive saves",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Large Scorpion Venom",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 18; Freq. 1 round (4); Effect 1 Str damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Lich Dust",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 17; Freq. 1 round (5); Effect 2 Str damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Malyass Root Paste",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 16; Freq. 1 round (6); Effect 1 Dex damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Medium Spider Venom",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 14; Freq. 1 round (3); Effect 1 Str damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Nightmare Vapor",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Inhaled; Fort DC 20; Freq. 1 round (5); Effect 1 Wis damage and 1 Wis drain; Cure 2 consecutive saves",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Nitharit",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 13; Freq. 1 round (6); Effect 0/2 Con damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Oil of Taggit",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 15; Freq. 1 minute (1); Effect 0/unconsciousness for 1d3 hours; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Purple Worm Poison",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 24; Freq. 1 round (5); Effect 2 Str damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Sassone Leaf Residue",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 16; Freq. 1 round (4); Effect 1d6 hit points; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Shadow Essence",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Inhaled; Fort DC 17; Freq. 1 round (7); Effect 1 Str drain/1 Str damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Small Centipede Poison",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 11; Freq. 1 round (2); Effect 1 Dex damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Striped Toadstool",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Ingested; Fort DC 11; Freq. 1 round (5); Effect 1 Wis damage/2 Wis damage plus 1 Int damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Tears of Death",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 22; Freq. 1 minute (5); Effect 1d6 Con damage; Cure none",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Terinav Root",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Contact; Fort DC 16; Freq. 1 round (5); Effect 2 Dex damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Ungol Dust",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Inhaled; Fort DC 15; Freq. 1 round (3); Effect 1 Cha damage/1 Con damage and 1 Cha drain; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Wyvern Poison",
  Category="Afflictions",
  Cost=0,
  Description={
    Format="Poison, Injury; Fort DC 17; Freq. 1 round (7); Effect 2 Con damage; Cure 1 save",
  },
  SourcePage="p.560",
  Types={
    "Poison",
    "Affliction",
  },
})
DefineAbility({
  Name="Inspire Courage",
  Key="Temp Bonus ~ Inspire Courage",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("%CHOICE"),
      Variables={
        "InspireCourageBonus",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Inspire courage&colon; +%1 morale bonus on saving throws against charm and fear effects and a +%1 competence bonus on attack and weapon damage rolls, goes up at 5th and every six levels after that.",
    Arguments={
      Formula("InspireCourageBonus"),
    },
  },
  Visible=false,
})
DefineAbility({
  Name="Inspire Greatness",
  Key="Temp Bonus ~ Inspire Greatness",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="HP",
      Formula=Formula("%CHOICE+(CON*2)"),
      Variables={
        "CURRENTMAX",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Inspire Greatness&colon; A creature inspired with greatness gains 2 bonus Hit Dice (d10s), the commensurate number of temporary hit points (apply the target's Constitution modifier, if any, to these bonus Hit Dice), a +2 competence bonus on attack rolls, and a +1 competence bonus on Fortitude saves. The bonus Hit Dice count as regular Hit Dice for determining the effect of spells that are Hit Dice dependent. Inspire greatness is a mind-affecting ability and it relies on audible and visual components.",
  },
  Visible=false,
})
DefineAbility({
  Name="Inspire Heroics",
  Key="Temp Bonus ~ Inspire Heroics",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("4"),
      Type={
        Name="Morale",
      },
      Variables={
        "AC",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Inspire Heroics&colon; Inspired creatures gain a +4 morale bonus on saving throws and a +4 dodge bonus to AC.",
  },
  Visible=false,
})
DefineAbility({
  Name="Aura of Courage",
  Key="Temp Bonus ~ Aura of Courage",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ActivateTempBonus",
        "AuraOfCourageActivate",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Aura of courage&colon; Each ally within 10 feet of her gains a +4 morale bonus on saving throws against fear effects.",
  },
  Visible=false,
})
DefineAbility({
  Name="Aura of Resolve",
  Key="Temp Bonus ~ Aura of Resolve",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ActivateTempBonus",
        "AuraOfResolveActivate",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Aura of Resolve&colon; Each ally within 10 feet of her gains a +4 morale bonus on saving throws against charm effects.",
  },
  Visible=false,
})
DefineAbility({
  Name="Aura of Justice",
  Key="Temp Bonus ~ Aura of Justice",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ActivateTempBonus",
        "AuraOfJusticeActivate",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Aura of Justice is probably not possible (depends on the Paladin level)&colon; At 11th level, a paladin can expend two uses of her smite evil ability to grant the ability to smite evil to all allies within 10 feet, using her bonuses. Allies must use this smite evil ability by the start of the paladin's next turn and the bonuses last for 1 minute. Using this ability is a free action. Evil creatures gain no benefit from this ability.",
  },
  Visible=false,
})
DefineAbility({
  Name="Aura of Righteousness",
  Key="Temp Bonus ~ Aura of Righteousness",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ActivateTempBonus",
        "AuraOfRighteousnessActivate",
      },
    },
    Target="ANYPC",
  },
  TemporaryBonusDescription={
    Format="Aura of Righteousness&colon; Each ally within 10 feet of her gains a +4 morale bonus on saving throws against compulsion effects.",
  },
  Visible=false,
})
DefineAbility({
  Name="Inspire Courage Selectable",
  Key="Temp Bonus ~ Inspire Courage NPC",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="COMBAT",
      Formula=Formula("min(floor((%CHOICE+7)/6),4)"),
      Variables={
        "DAMAGE.Melee",
        "DAMAGE.Ranged",
      },
    },
    Target="ANYPC",
  },
  Visible=false,
})
DefineAbility({
  Name="Temp Bonus ~ Strength Surge",
  Category="Internal",
  TemporaryBonus={
    Bonus={
      Category="STAT",
      Formula=Formula("%CHOICE"),
      Variables={
        "STR",
      },
    },
    Target="ANYPC",
  },
  Visible=false,
})
ModifyAbility({
  Name="Default",
  Category="Internal",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Temp_Bonus_Aspect_Tracker",
      },
      Conditions={
        function (character, item, sources)
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
        function (character, item, sources)
          return (character.Variables["StoneskinActivate"] >= 1)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Temp_Bonus_Aspect_Tracker",
  Category="Special Ability",
  Abilities={
    {
      Category="Special Ability",
      Nature="VIRTUAL",
      Names={
        "Paladin ~ Smite Evil",
      },
      Conditions={
        function (character, item, sources)
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
        function (character, item, sources)
          return (character.Variables["TempBonus_BlessWeapon"] == 1)
        end,
      },
    },
  },
  Aspects={
    {
      Name="SaveBonus",
      FormatString="Inspire courage&colon; +1 morale bonus on saving throws against charm and fear effects",
      Arguments={
        "InspireCourageBonus",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["InspireCourageBonus"] >= 1)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="Aura of courage&colon; +4 morale bonus on saving throws against fear effects.",
      Conditions={
        function (character, item, sources)
          return (character.Variables["AuraOfCourageActivate"] == 1)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="Aura of Resolve&colon; +4 morale bonus on saving throws against charm effects.",
      Conditions={
        function (character, item, sources)
          return (character.Variables["AuraOfResolveActivate"] == 1)
        end,
      },
    },
    {
      Name="SaveBonus",
      FormatString="Aura of Righteousness&colon; +4 morale bonus on saving throws against compulsion effects.",
      Conditions={
        function (character, item, sources)
          return (character.Variables["AuraOfRighteousnessActivate"] == 1)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Temp Bonus ~ Bless Weapon",
  Category="Special Ability",
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
  DamageReduction={
    Value="10/adamantine",
  },
})
DefineAbility({
  Name="Unarmed Anarchic",
  Category="Special Ability",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE")
        end,
      },
    },
  },
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are chaotically aligned, +2d6 damage against lawful targets, 1 negative level bestowed on lawful wielder",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})
DefineAbility({
  Name="Unarmed Axiomatic",
  Category="Special Ability",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
    },
  },
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are lawfully aligned, +2d6 damage against chaotic targets, 1 negative level bestowed to chaotic wielder",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})
DefineAbility({
  Name="Unarmed Bane",
  Category="Special Ability",
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
  Description={
    Format="unarmed and natural attacks do +1d6 cold damage",
  },
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks do +1d6 cold damage",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})
DefineAbility({
  Name="Unarmed Ghost Touch",
  Category="Special Ability",
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
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
    },
  },
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are good aligned, +2d6 damage against evil targets, 1 negative level bestowed to evil wielder",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})
DefineAbility({
  Name="Unarmed Icy Burst",
  Category="Special Ability",
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
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
        end,
      },
    },
  },
  Aspects={
    {
      Name="UnarmedNotes",
      FormatString="unarmed and natural attacks are evil aligned, +2d6 damage against good targets, 1 negative level bestowed to good wielder",
    },
  },
  Types={
    "UnarmedDisplay",
  },
})
DefineAbility({
  Name="Unarmed Vicious",
  Category="Special Ability",
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
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Stackable=false,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("TL"),
      Variables={
        "%LIST",
      },
    },
  },
  Types={
    "HeadbandSkill",
  },
})
DefineAbility({
  Name="Spell Resistance ~ 18",
  Category="Internal",
  SpellResistance=Formula("18"),
})
DefineAbility({
  Name="Base Intelligent Item",
  Category="Intelligent Item",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
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
      Formula=Formula("SpeechBonusLang"),
      Variables={
        "Intelligent Item Languages",
      },
    },
  },
})
DefineAbility({
  Name="Abilities",
  Key="Intelligent Item ~ Stat",
  Category="Intelligent Item",
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
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 11",
  Key="Intelligent Item Stat INT ~ 11",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 12",
  Key="Intelligent Item Stat INT ~ 12",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 13",
  Key="Intelligent Item Stat INT ~ 13",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 14",
  Key="Intelligent Item Stat INT ~ 14",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 15",
  Key="Intelligent Item Stat INT ~ 15",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 16",
  Key="Intelligent Item Stat INT ~ 16",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 17",
  Key="Intelligent Item Stat INT ~ 17",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 18",
  Key="Intelligent Item Stat INT ~ 18",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 19",
  Key="Intelligent Item Stat INT ~ 19",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="INT 20",
  Key="Intelligent Item Stat INT ~ 20",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 10",
  Key="Intelligent Item Stat WIS ~ 10",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 11",
  Key="Intelligent Item Stat WIS ~ 11",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 12",
  Key="Intelligent Item Stat WIS ~ 12",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 13",
  Key="Intelligent Item Stat WIS ~ 13",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 14",
  Key="Intelligent Item Stat WIS ~ 14",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 15",
  Key="Intelligent Item Stat WIS ~ 15",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 16",
  Key="Intelligent Item Stat WIS ~ 16",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 17",
  Key="Intelligent Item Stat WIS ~ 17",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 18",
  Key="Intelligent Item Stat WIS ~ 18",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 19",
  Key="Intelligent Item Stat WIS ~ 19",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="WIS 20",
  Key="Intelligent Item Stat WIS ~ 20",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 10",
  Key="Intelligent Item Stat CHA ~ 10",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 11",
  Key="Intelligent Item Stat CHA ~ 11",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 12",
  Key="Intelligent Item Stat CHA ~ 12",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 13",
  Key="Intelligent Item Stat CHA ~ 13",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 14",
  Key="Intelligent Item Stat CHA ~ 14",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 15",
  Key="Intelligent Item Stat CHA ~ 15",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 16",
  Key="Intelligent Item Stat CHA ~ 16",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 17",
  Key="Intelligent Item Stat CHA ~ 17",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 18",
  Key="Intelligent Item Stat CHA ~ 18",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 19",
  Key="Intelligent Item Stat CHA ~ 19",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="CHA 20",
  Key="Intelligent Item Stat CHA ~ 20",
  Category="Intelligent Item",
  Types={
    "IntelligentItemStat",
  },
})
DefineAbility({
  Name="Alignment / Chaotic Good",
  Key="Intelligent Item ~ Align (CG)",
  Category="Intelligent Item",
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentAlignment") then return true end
        return false
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
  Types={
    "IntelligentItemAbility",
    "IntelligentItemOutput",
  },
})
DefineAbility({
  Name="Communication / Read Magic",
  Key="Intelligent Item ~ ReadMagic",
  Category="Intelligent Item",
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
  Choice={
    Choose=ChooseUserInput(1, "Write in Languages Known by the Item"),
  },
  Selections=Formula("1"),
  Stackable=false,
  Types={
    "IntItemLang",
    "IntelligentItemOutput",
  },
})
DefineAbility({
  Name="Senses",
  Key="Intelligent Item ~ Senses",
  Category="Intelligent Item",
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 0) and (spell.Level >= 0)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastZeroAtWill" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 1) and (spell.Level >= 1)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastOneThree" then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_MagicAura" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 2) and (spell.Level >= 2)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastTwoOne" then return true end
        return false
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
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((true))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_FiveSkill" then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_Move" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 3) and (spell.Level >= 3)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastThreeOne" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 2) and (spell.Level >= 2)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastTwoThree" then return true end
        return false
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
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((true))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_TenSkill" then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_ChangeShape" then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_Fly" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 4) and (spell.Level >= 4)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastFourOne" then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_Teleport" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 3) and (spell.Level >= 3)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastThreeThree" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 4) and (spell.Level >= 4)))))
    end),
    MaxTimes=1,
  },
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ ItemPower_CastFourThree" then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Conditions={
    function (character, item, sources)
      return not (character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.IsAnyType("IntelligentPurpose") then return true end
        return false
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
  Types={
    "IntelligentItemx",
    "IntelligentItemOutput",
  },
})
DefineAbility({
  Name="Wielder gets +2 luck bonus on attacks saves and checks",
  Key="Dedicated Power ~ Luck Bonus",
  Category="Intelligent Item",
  Types={
    "IntelligentItemx",
    "IntelligentItemOutput",
  },
})
DefineAbility({
  Name="Item can use true resurrection on wielder once per month",
  Key="Dedicated Power ~ True Resurrection",
  Category="Intelligent Item",
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Cost=1,
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ PurposePower_CastFourAtWill" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Cost=1,
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ PurposePower_CastFiveAtWill" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Cost=1,
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ PurposePower_CastSixAtWill" then return true end
        return false
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
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((true and (((spell.Level <= 7) and (spell.Level >= 7)))))
    end),
    MaxTimes=1,
  },
  Cost=1,
  Selections=Formula("1"),
  Stackable=false,
  Conditions={
    function (character, item, sources)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Intelligent Item" then return false end
        if ability.Name == "EQMOD ~ PurposePower_CastSevenAtWill" then return true end
        return false
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
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastZeroAtWill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastOneThree",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastTwoOne",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_FiveSkill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastThreeOne",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastTwoThree",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_TenSkill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastFourOne",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastThreeThree",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ ItemPower_CastFourThree",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ PurposePower_CastFourAtWill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Purpose Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ PurposePower_CastFiveAtWill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Purpose Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ PurposePower_CastSixAtWill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Purpose Power",
      },
    },
  },
})
DefineAbility({
  Name="EQMOD ~ PurposePower_CastSevenAtWill",
  Category="Intelligent Item",
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Intelligent Item Purpose Power",
      },
    },
  },
})
DefineAbility({
  Name="Pearl of the Sirines ~ Swim Speed",
  Category="Equipment",
  Movement={
    Swim=60,
  },
})
DefineAbility({
  Name="Belt of Dwarvenkind ~ Languages",
  Category="Equipment",
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
  Types={
    "Defensive",
  },
})
DefineAbility({
  Name="50% chance to negate critical hits and sneak attacks",
  Key="Eqmod ~ Fortification (Medium)",
  Category="Special Ability",
  Types={
    "Defensive",
  },
})
DefineAbility({
  Name="75% chance to negate critical hits and sneak attacks",
  Key="Eqmod ~ Fortification (Heavy)",
  Category="Special Ability",
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
})
DefineAbility({
  Name="Tongues",
  Category="Special Ability",
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
  Description={
    Format="%1 negative levels (-%1 effective levels and loses access to %1 spells from the highest spell level castable)",
    Arguments={
      Formula("NegLevels"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["NegLevels"] > 1)
      end,
    },
  },
  SourcePage="p.562",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("-1*(NegLevels)"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="HP",
      Formula=Formula("-5*(NegLevels)"),
      Variables={
        "CURRENTMAX",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("-1*(NegLevels)"),
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("-1*(NegLevels)"),
      Variables={
        "TYPE=Strength",
        "TYPE=Dexterity",
        "TYPE=Intelligence",
        "TYPE=Wisdom",
        "TYPE=Charisma",
      },
    },
  },
  Types={
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Natural Attack ~ Shield Bash",
  Category="Natural Attack",
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
      Formula=Formula("REACH.VAL"),
      Variables={
        "NaturalShieldReach",
      },
    },
    {
      Category="VAR",
      Formula=Formula("BAB+STR+ShieldBashAttackBonus"),
      Variables={
        "ShieldBashAttackTotal",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "InterativeAttack",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ShieldCritMult",
      },
    },
    {
      Category="VAR",
      Formula=Formula("20"),
      Variables={
        "ShieldThreatRange",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Weapon Focus (Shieldbash)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "ShieldBashAttackBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Greater Weapon Focus (Shieldbash)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "ShieldBashAttackBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Weapon Specialization (Shieldbash)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "ShieldBashDamageBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Greater Weapon Specialization (Shieldbash)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "ShieldBashDamageBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.TotalAttackBonus >= 6
        end,
      },
      Variables={
        "InterativeAttack",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.TotalAttackBonus >= 11
        end,
      },
      Variables={
        "InterativeAttack",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.TotalAttackBonus >= 16
        end,
      },
      Variables={
        "InterativeAttack",
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
  Aspects={
    {
      Name="NaturalAttackName",
      FormatString="Shield Bash (Light)",
      Conditions={
        function (character, item, sources)
          return (character.HasEquipped(function (item) return item.IsType("Shield") end)) or (character.HasEquipped(function (item) return item.IsType("Light") end))
        end,
      },
    },
    {
      Name="NaturalAttackName",
      FormatString="Shield Bash (Heavy)",
      Conditions={
        function (character, item, sources)
          return (character.HasEquipped(function (item) return item.IsType("Shield") end)) or (character.HasEquipped(function (item) return item.IsType("Heavy") end))
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
        function (character, item, sources)
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
        function (character, item, sources)
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
        function (character, item, sources)
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
        function (character, item, sources)
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
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "ShieldDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-4"),
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Shield Mastery" then return true end
            if ability.Name == "Shield Master" then return true end
            return false
          end))
        end,
      },
      Variables={
        "ShieldBashAttackBonus",
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="ShieldSize",
      },
      Conditions={
        function (character, item, sources)
          return character.Size == "M" and (character.HasEquipped(function (item) return item.IsType("Shield") end)) or (character.HasEquipped(function (item) return item.IsType("Light") end))
        end,
      },
      Variables={
        "ShieldBashingDieSizeStep",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="ShieldSize",
      },
      Conditions={
        function (character, item, sources)
          return character.Size == "M" and (character.HasEquipped(function (item) return item.IsType("Shield") end)) or (character.HasEquipped(function (item) return item.IsType("Heavy") end))
        end,
      },
      Variables={
        "ShieldBashingDieSizeStep",
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="ShieldSize",
      },
      Conditions={
        function (character, item, sources)
          return character.Size == "S" and (character.HasEquipped(function (item) return item.IsType("Shield") end)) or (character.HasEquipped(function (item) return item.IsType("Light") end))
        end,
      },
      Variables={
        "ShieldBashingDieSizeStep",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="ShieldSize",
      },
      Conditions={
        function (character, item, sources)
          return character.Size == "S" and (character.HasEquipped(function (item) return item.IsType("Shield") end)) or (character.HasEquipped(function (item) return item.IsType("Heavy") end))
        end,
      },
      Variables={
        "ShieldBashingDieSizeStep",
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d1",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 1)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d2",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 2)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d3",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 3)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d4",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 4)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 5)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 1d8",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 6)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 2d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 7)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 3d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 8)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 4d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 9)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 6d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 10)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 8d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 11)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Shield Bash Stats",
  Category="Internal",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Bash 12d6",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ShieldBashingDieSizeStep"] == 12)
        end,
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d1",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d2",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d3",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d4",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d8",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d10",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 1d12",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("12"),
      Variables={
        "ShieldDamageSize",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 2d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ShieldDamageDice",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 3d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ShieldDamageDice",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 4d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "ShieldDamageDice",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 6d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "ShieldDamageDice",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 8d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Variables={
        "ShieldDamageDice",
      },
    },
  },
})
DefineAbility({
  Name="Shield Bash 12d6",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "ShieldDamageSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("11"),
      Variables={
        "ShieldDamageDice",
      },
    },
  },
})
DefineAbility({
  Name="Temp Bonus ~ Enlarge Person",
  Category="Internal",
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
      Formula=Formula("EnlargePerson_GrappleBonusValue"),
      Type={
        Name="Size",
      },
      Variables={
        "TOHIT.GRAPPLE",
      },
    },
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="STAT",
      Formula=Formula("EnlargePerson_StrBonusValue"),
      Type={
        Name="Size",
      },
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-EnlargePerson_DexBonusValue"),
      Type={
        Name="Size",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "SizeIncrease",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "DamageSizeAdjustment",
      },
    },
    {
      Category="VAR",
      Formula=Formula("EnlargePerson_ACBonusValue"),
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
})
DefineAbility({
  Name="Temp Bonus ~ Reduce Person",
  Category="Internal",
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
      Formula=Formula("-5"),
      Type={
        Name="Size",
      },
      Variables={
        "TOHIT.GRAPPLE",
      },
    },
    {
      Category="SIZEMOD",
      Formula=Formula("-1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Type={
        Name="Size",
      },
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Size",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "SizeDecrease",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "DamageSizeAdjustment",
      },
    },
  },
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
ModifyAbility({
  Name="Default",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "EnlargePerson_GrappleBonusValue",
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
        "EnlargePerson_StrBonusValue",
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
        "EnlargePerson_DexBonusValue",
      },
    },
  },
})
DefineAbility({
  Name="Enlarge/Reduce Weapon List",
  Category="Internal",
  Bonuses={
    {
      Category="WEAPONPROF=Aklys (Gladiator)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Aklys",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Amentum (Javelin)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Amentum",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Atlatl",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Axe (Orc Double)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Axe (Throwing)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Gate Breaker)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ballista (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Battle Aspergillum",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Battleaxe",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Blowgun",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Blunderbuss",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bo Staff",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Boar Spear",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bolas",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bombard (Standard)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Brass Knuckles",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Broadsword (Nine Ring)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Buckler Gun",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Butterfly Sword",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Cannon (Fiend's Mouth)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Cannon",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Catapult (Standard)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Chain (Spiked)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Chain Spear",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Club",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Hand)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Hand)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Crossbow (Repeating Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Culverin",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Curve Blade (Elven)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dagger (Punching)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dagger",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dan Bong",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dart",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Dogslicer",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Double Chicken Saber",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Double Hackbut",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Earth Breaker",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Emei Piercer",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Falchion",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Fighting Fan",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Fire Lance",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firearms",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firedrake",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Firewyrm",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail (Dire)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flail",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Flying Blade",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gauntlet (Spiked)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gauntlet",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Gladius",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Glaive",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Great Terbutje",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greataxe",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greatclub",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Greatsword",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Guisarme",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Halberd",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hammer (Gnome Hooked)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hammer (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Handaxe",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Harpoon",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hooked Axe",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hooked Lance",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Horsechopper",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Hunga Munga",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Iron Brush",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Javelin",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Jutte",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kama (Double-Chained)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kama",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Katana (Double Walking Stick)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Katana",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kerambit",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kestros",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Klar",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Knuckle Axe",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kukri",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kusarigama (Sickle and Chain)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kyoketsu Shoge",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lance",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longbow",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longspear",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longsword",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lucerne Hammer",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Lungchuan Tamo",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mace (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mace (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Madu",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mattock",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Mere Club",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Meteor Hammer",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Monk's Spade",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Morningstar",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Axe)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Double-Barreled)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket (Warhammer)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Musket",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Naginata",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Net",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nine-Section Whip",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nodachi",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Nunchaku",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ogre Hook",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pata",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pepperbox",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pick (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pick (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Coat)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Dagger)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Double-Barreled)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Dragon)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol (Sword Cane)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Pistol",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Poisoned Sand Tube",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Quadrens",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Quarterstaff",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Ranseur",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rapier",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Revolver",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rhoka Sword",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rhomphaia",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rifle",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Rope Dart",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sai",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sansetsukon",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sap",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sawtooth Sabre",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scimitar",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scizore",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scorpion Whip",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Scythe",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shang Gou",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shieldbash",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shortbow",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shortspear",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shotel",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shotgun",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Shuriken",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Siangham",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sibat",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sica",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sickle",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sling Staff (Halfling)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sling",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Snag Net",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Spear",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Spiked Armor",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Splash Weapon",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Springal (Arrow)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Springal (Rocket)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Starknife",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Bastard)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Seven-Branched)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Short)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Tri-Point Double-Edged)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sword (Two-Bladed)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Swordbreaker (Dagger)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Taiaha",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Taiaha",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tekko-Kagi (Iron Claw)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Temple Sword",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tepoztopilli",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terbutje (Great)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terbutje",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tetsubo",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Throwing Shield",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tiger Fork",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tonfa",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trebuchet (Standard)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Trident",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tube Arrow Shooter",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Heavy)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Underwater Crossbow (Light)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Urgrosh (Dwarven)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Urumi",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wahaika",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wakizashi",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Warhammer",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Whip",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Wushu Dart",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Waraxe (Dwarven Double)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Helmet (Dwarven Boulder)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longaxe (Dwarven)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Longhammer (Dwarven)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Kobold Tail Attachment",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Tailblade (Ratfolk)",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Terror Kite",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sea-Knife",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WIELDCATEGORY",
      Formula=Formula("DamageSizeAdjustment"),
      Variables={
        "ALL",
      },
    },
  },
})
DefineAbility({
  Name="+1 Bonus Feat",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 feat.",
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Skill Rank",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((not (character.Ranks(skill) >= character.MaxSkillRank) and (((skill.IsType("Base"))))))
    end),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 skill rank (won't exceed max ranks).",
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Skill Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 skill bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("1"),
      Variables={
        "%LIST",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Skill Point",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 skill point.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SKILLPOINTS",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Hit Point",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 hit point.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="HP",
      Formula=Formula("1"),
      Variables={
        "CURRENTMAX",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Spell per Day",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "GM Bonus Spell Cast",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="+1 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "GM Bonus Spell Known",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="+1 Arcane Caster Level",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 arcane caster level.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="PCLEVEL",
      Formula=Formula("1"),
      Variables={
        "TYPE.Arcane",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="+1 Divine Caster Level",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 divine caster level.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="PCLEVEL",
      Formula=Formula("1"),
      Variables={
        "TYPE.Divine",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="Add Language",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseLanguage(function (character, lang)
      return ((lang.IsType("Spoken")))
    end),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with bonus Language.",
  },
  Stackable=true,
  AutomaticLanguages={
    {
      Selector=function (language)
        return stringMatch(language.Name, "%LIST")
      end,
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+Total Level Ranks to Skill",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 skill rank per level or use with custom INT bonus items.",
  },
  Stackable=false,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("TL"),
      Variables={
        "%LIST",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="Add a Feat Ignoring Restrictions",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseAbilitySelection(function (character, ability)
      if ability.Category ~= "FEAT" then
        return false
      end
      return ((true))
    end),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with 1 feat that ignores restrictions.",
  },
  Stackable=true,
  Abilities={
    {
      Category="FEAT",
      Nature="NORMAL",
      Names={
        "%LIST",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Level 1 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 1 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 2 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 2 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 3 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 3 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 4 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 4 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 5 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 5 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 6 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 6 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 7 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 7 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 8 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 8 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 9 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 9 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Known",
  },
})
DefineAbility({
  Name="+1 Level 1 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 1 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 2 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 2 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 3 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 3 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 4 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 4 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 5 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 5 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 6 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 6 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 7 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 7 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 8 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 8 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 Level 9 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM awarded PC with +1 level 9 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Bonus Spell Cast",
  },
})
DefineAbility({
  Name="+1 STR Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 STR bonus.",
  },
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 DEX Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 DEX bonus.",
  },
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 CON Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 CON bonus.",
  },
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 INT Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 INT bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("1"),
      Variables={
        "INT",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 WIS Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 WIS bonus.",
  },
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 CHA Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with +1 CHA bonus.",
  },
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
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 Bonus Feat",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 feat.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("-1"),
      Variables={
        "FEAT",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 Skill Rank",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 skill rank (won't exceed max ranks).",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("-1"),
      Variables={
        "%LIST",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 Skill Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 skill bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("-1"),
      Variables={
        "%LIST",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 Hit Point",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 hit point.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="HP",
      Formula=Formula("-1"),
      Variables={
        "CURRENTMAX",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 Spell per Day",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "GM Penalized Spell Cast",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="-1 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "GM Penalized Spell Known",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="-1 Arcane Caster Level",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with -1 arcane caster level.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="PCLEVEL",
      Formula=Formula("-1"),
      Variables={
        "TYPE.Arcane",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="-1 Divine Caster Level",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM awarded PC with -1 divine caster level.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="PCLEVEL",
      Formula=Formula("-1"),
      Variables={
        "TYPE.Divine",
      },
    },
  },
  Types={
    "GM_Award",
  },
})
DefineAbility({
  Name="-1 Level 1 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 1 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 2 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 2 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 3 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 3 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 4 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 4 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 5 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 5 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 6 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 6 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 7 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 7 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 8 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 8 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 9 Spell Known",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 9 spell known.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLKNOWN",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Known",
  },
})
DefineAbility({
  Name="-1 Level 1 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 1 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=1",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 2 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 2 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=2",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 3 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 3 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=3",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 4 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 4 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=4",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 5 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 5 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=5",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 6 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 6 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=6",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 7 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 7 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=7",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 8 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 8 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=8",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 Level 9 Spell Cast",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseClass(function (character, class)
      return ((class.CanCastSpells))
    end),
  },
  Description={
    Format="GM Penalized PC with -1 level 9 spell per day.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("-1"),
      Variables={
        "CLASS=%LIST;LEVEL=9",
      },
    },
  },
  Types={
    "SpecialQuality",
    "GM Penalized Spell Cast",
  },
})
DefineAbility({
  Name="-1 STR Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 STR bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Variables={
        "STR",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 DEX Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 DEX bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Variables={
        "DEX",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 CON Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 CON bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Variables={
        "CON",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 INT Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 INT bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Variables={
        "INT",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 WIS Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 WIS bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Variables={
        "WIS",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-1 CHA Score Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalized PC with -1 CHA bonus.",
  },
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-1"),
      Variables={
        "CHA",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="+1 Deflection Bonus",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Award of Natural Armor",
  },
  Stackable=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Deflection",
        Stack=true,
      },
      Variables={
        "AC",
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
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Award of Deflection Bonus",
  },
  Stackable=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="NaturalArmorEnhancement",
        Stack=true,
      },
      Variables={
        "AC",
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
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Award of 5ft of movement speed",
  },
  Stackable=true,
  Bonuses={
    {
      Category="MOVEADD",
      Formula=Formula("5"),
      Variables={
        "TYPE.Walk",
      },
    },
  },
  Types={
    "GM_Award",
    "SpecialQuality",
  },
})
DefineAbility({
  Name="-5 ft walk speed",
  SortKey="Z_Award",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=0,
  Description={
    Format="GM Penalty of 5ft of movement speed",
  },
  Stackable=true,
  Bonuses={
    {
      Category="MOVEADD",
      Formula=Formula("-5"),
      Variables={
        "TYPE.Walk",
      },
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
  Cost=0,
  Description={
    Format="This allows the PC to bypass the restrictions on taking only 1 trait from any given category.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Rule",
      },
      Variables={
        "BypassTraitRestriction",
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
  Cost=0,
  Description={
    Format="This allows the PC to bypass the restrictions on taking only 1 drawback.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Rule",
      },
      Variables={
        "BypassDrawbackRestriction",
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
  Cost=0,
  Description={
    Format="This changes the Natural Primary attacks to Secondary while using weapons.",
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Rule",
      },
      Variables={
        "UseWeaponsWithNaturalAttacks",
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="Sustains creature without food or water",
  },
  SourcePage="p.520",
  Stackable=true,
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DEX",
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Insight",
      },
      Variables={
        "AC",
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "WIS",
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="Sustains creature without air",
  },
  SourcePage="p.520",
  Stackable=true,
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="Absorbs spells of 8th level or lower",
  },
  SourcePage="p.520",
  Stackable=true,
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "Caster_Level_Bonus",
      },
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "STR",
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="+1 to ability checks",
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Competence",
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("1"),
      Type={
        Name="Competence",
      },
      Variables={
        "ALL",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("1"),
      Type={
        Name="Competence",
      },
      Variables={
        "TYPE.Base",
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="Absorbs spells of 4th level or lower",
  },
  SourcePage="p.520",
  Stackable=true,
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="Regenerate 1 point of damage per 10 minutes",
  },
  SourcePage="p.520",
  Stackable=true,
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "CHA",
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "CON",
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
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.520",
  Stackable=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "INT",
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
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="Stores three levels of spells, as a ring of spell storing",
  },
  SourcePage="p.520",
  Stackable=true,
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
  ClassSkills={
    "Acrobatics",
  },
})
DefineAbility({
  Name="Appraise",
  Category="Class Skill",
  ClassSkills={
    "Appraise",
  },
})
DefineAbility({
  Name="Bluff",
  Category="Class Skill",
  ClassSkills={
    "Bluff",
  },
})
DefineAbility({
  Name="Climb",
  Category="Class Skill",
  ClassSkills={
    "Climb",
  },
})
DefineAbility({
  Name="Craft",
  Category="Class Skill",
  ClassSkills={
    "TYPE=Craft",
  },
})
DefineAbility({
  Name="Craft (Alchemy)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Alchemy)",
  },
})
DefineAbility({
  Name="Craft (Armor)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Armor)",
  },
})
DefineAbility({
  Name="Craft (Baskets)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Baskets)",
  },
})
DefineAbility({
  Name="Craft (Blacksmithing)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Blacksmithing)",
  },
})
DefineAbility({
  Name="Craft (Books)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Books)",
  },
})
DefineAbility({
  Name="Craft (Bows)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Bows)",
  },
})
DefineAbility({
  Name="Craft (Calligraphy)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Calligraphy)",
  },
})
DefineAbility({
  Name="Craft (Carpentry)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Carpentry)",
  },
})
DefineAbility({
  Name="Craft (Cloth)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Cloth)",
  },
})
DefineAbility({
  Name="Craft (Clothing)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Clothing)",
  },
})
DefineAbility({
  Name="Craft (Gemcutting)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Gemcutting)",
  },
})
DefineAbility({
  Name="Craft (Glass)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Glass)",
  },
})
DefineAbility({
  Name="Craft (Jewelry)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Jewelry)",
  },
})
DefineAbility({
  Name="Craft (Leather)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Leather)",
  },
})
DefineAbility({
  Name="Craft (Locks)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Locks)",
  },
})
DefineAbility({
  Name="Craft (Paintings)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Paintings)",
  },
})
DefineAbility({
  Name="Craft (Pottery)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Pottery)",
  },
})
DefineAbility({
  Name="Craft (Sculptures)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Sculptures)",
  },
})
DefineAbility({
  Name="Craft (Ships)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Ships)",
  },
})
DefineAbility({
  Name="Craft (Shoes)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Shoes)",
  },
})
DefineAbility({
  Name="Craft (Stonemasonry)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Stonemasonry)",
  },
})
DefineAbility({
  Name="Craft (Traps)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Traps)",
  },
})
DefineAbility({
  Name="Craft (Weapons)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Weapons)",
  },
})
DefineAbility({
  Name="Craft (Untrained)",
  Category="Class Skill",
  ClassSkills={
    "Craft (Untrained)",
  },
})
DefineAbility({
  Name="Diplomacy",
  Category="Class Skill",
  ClassSkills={
    "Diplomacy",
  },
})
DefineAbility({
  Name="Disable Device",
  Category="Class Skill",
  ClassSkills={
    "Disable Device",
  },
})
DefineAbility({
  Name="Disguise",
  Category="Class Skill",
  ClassSkills={
    "Disguise",
  },
})
DefineAbility({
  Name="Escape Artist",
  Category="Class Skill",
  ClassSkills={
    "Escape Artist",
  },
})
DefineAbility({
  Name="Fly",
  Category="Class Skill",
  ClassSkills={
    "Fly",
  },
})
DefineAbility({
  Name="Handle Animal",
  Category="Class Skill",
  ClassSkills={
    "Handle Animal",
  },
})
DefineAbility({
  Name="Heal",
  Category="Class Skill",
  ClassSkills={
    "Heal",
  },
})
DefineAbility({
  Name="Intimidate",
  Category="Class Skill",
  ClassSkills={
    "Intimidate",
  },
})
DefineAbility({
  Name="Knowledge",
  Category="Class Skill",
  ClassSkills={
    "TYPE=Knowledge",
  },
})
DefineAbility({
  Name="Knowledge (Arcana)",
  Category="Class Skill",
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
  ClassSkills={
    "Knowledge (Untrained)",
  },
})
DefineAbility({
  Name="Linguistics",
  Category="Class Skill",
  ClassSkills={
    "Linguistics",
  },
})
DefineAbility({
  Name="Perception",
  Category="Class Skill",
  ClassSkills={
    "Perception",
  },
})
DefineAbility({
  Name="Perform",
  Category="Class Skill",
  ClassSkills={
    "TYPE=Perform",
  },
})
DefineAbility({
  Name="Perform (Act)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Act)",
  },
})
DefineAbility({
  Name="Perform (Comedy)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Comedy)",
  },
})
DefineAbility({
  Name="Perform (Dance)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Dance)",
  },
})
DefineAbility({
  Name="Perform (Keyboard Instruments)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Keyboard Instruments)",
  },
})
DefineAbility({
  Name="Perform (Oratory)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Oratory)",
  },
})
DefineAbility({
  Name="Perform (Percussion Instruments)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Percussion Instruments)",
  },
})
DefineAbility({
  Name="Perform (Sing)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Sing)",
  },
})
DefineAbility({
  Name="Perform (String Instruments)",
  Category="Class Skill",
  ClassSkills={
    "Perform (String Instruments)",
  },
})
DefineAbility({
  Name="Perform (Wind Instruments)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Wind Instruments)",
  },
})
DefineAbility({
  Name="Perform (Untrained)",
  Category="Class Skill",
  ClassSkills={
    "Perform (Untrained)",
  },
})
DefineAbility({
  Name="Profession",
  Category="Class Skill",
  ClassSkills={
    "TYPE=Profession",
  },
})
DefineAbility({
  Name="Profession (Architect)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Architect)",
  },
})
DefineAbility({
  Name="Profession (Baker)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Baker)",
  },
})
DefineAbility({
  Name="Profession (Barrister)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Barrister)",
  },
})
DefineAbility({
  Name="Profession (Brewer)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Brewer)",
  },
})
DefineAbility({
  Name="Profession (Butcher)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Butcher)",
  },
})
DefineAbility({
  Name="Profession (Clerk)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Clerk)",
  },
})
DefineAbility({
  Name="Profession (Cook)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Cook)",
  },
})
DefineAbility({
  Name="Profession (Courtesan)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Courtesan)",
  },
})
DefineAbility({
  Name="Profession (Driver)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Driver)",
  },
})
DefineAbility({
  Name="Profession (Engineer)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Engineer)",
  },
})
DefineAbility({
  Name="Profession (Farmer)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Farmer)",
  },
})
DefineAbility({
  Name="Profession (Fisherman)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Fisherman)",
  },
})
DefineAbility({
  Name="Profession (Gambler)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Gambler)",
  },
})
DefineAbility({
  Name="Profession (Gardener)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Gardener)",
  },
})
DefineAbility({
  Name="Profession (Herbalist)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Herbalist)",
  },
})
DefineAbility({
  Name="Profession (Innkeeper)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Innkeeper)",
  },
})
DefineAbility({
  Name="Profession (Librarian)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Librarian)",
  },
})
DefineAbility({
  Name="Profession (Merchant)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Merchant)",
  },
})
DefineAbility({
  Name="Profession (Midwife)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Midwife)",
  },
})
DefineAbility({
  Name="Profession (Miller)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Miller)",
  },
})
DefineAbility({
  Name="Profession (Miner)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Miner)",
  },
})
DefineAbility({
  Name="Profession (Porter)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Porter)",
  },
})
DefineAbility({
  Name="Profession (Sailor)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Sailor)",
  },
})
DefineAbility({
  Name="Profession (Scribe)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Scribe)",
  },
})
DefineAbility({
  Name="Profession (Shepherd)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Shepherd)",
  },
})
DefineAbility({
  Name="Profession (Soldier)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Soldier)",
  },
})
DefineAbility({
  Name="Profession (Soothsayer)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Soothsayer)",
  },
})
DefineAbility({
  Name="Profession (Stable Master)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Stable Master)",
  },
})
DefineAbility({
  Name="Profession (Tanner)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Tanner)",
  },
})
DefineAbility({
  Name="Profession (Trapper)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Trapper)",
  },
})
DefineAbility({
  Name="Profession (Woodcutter)",
  Category="Class Skill",
  ClassSkills={
    "Profession (Woodcutter)",
  },
})
DefineAbility({
  Name="Ride",
  Category="Class Skill",
  ClassSkills={
    "Ride",
  },
})
DefineAbility({
  Name="Sense Motive",
  Category="Class Skill",
  ClassSkills={
    "Sense Motive",
  },
})
DefineAbility({
  Name="Sleight of Hand",
  Category="Class Skill",
  ClassSkills={
    "Sleight of Hand",
  },
})
DefineAbility({
  Name="Spellcraft",
  Category="Class Skill",
  ClassSkills={
    "Spellcraft",
  },
})
DefineAbility({
  Name="Stealth",
  Category="Class Skill",
  ClassSkills={
    "Stealth",
  },
})
DefineAbility({
  Name="Survival",
  Category="Class Skill",
  ClassSkills={
    "Survival",
  },
})
DefineAbility({
  Name="Swim",
  Category="Class Skill",
  ClassSkills={
    "Swim",
  },
})
DefineAbility({
  Name="Use Magic Device",
  Category="Class Skill",
  ClassSkills={
    "Use Magic Device",
  },
})
DefineAbility({
  Name="Tracker ~ Range Penalty",
  Category="Internal",
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("RangePenaltyValue"),
      Variables={
        "RANGEPENALTY",
      },
    },
  },
})
