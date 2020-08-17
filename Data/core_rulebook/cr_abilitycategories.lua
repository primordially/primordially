-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_abilitycategories.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
DefineAbilityCategory({
  Name="Special Ability",
  Category="Special Ability",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Class Skill",
  Category="Class Skill",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Equipment",
  Category="Equipment",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Ability Bonus",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Ability Bonuses",
  Visible=true,
  Types={
    "AbilityBonus",
  },
})
DefineAbilityCategory({
  Name="Gnome Obsessive Skill Bonus",
  Category="Internal",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Gnome Obsessive Skill Bonuses",
  Visible=true,
  Types={
    "Gnome Obsessive Skill Bonus",
  },
})
DefineAbilityCategory({
  Name="Adaptability Bonus Feat",
  Category="FEAT",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Half-Elf Adaptability Bonus Feats",
  Visible=true,
  Types={
    "SkillFocus",
  },
})
DefineAbilityCategory({
  Name="Favored Class",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Classes",
  Visible=true,
  Types={
    "FavoredClass",
  },
})
DefineAbilityCategory({
  Name="Favored Class Bonus",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Class Bonuses",
  Visible=true,
  Types={
    "FavoredClassBonus",
  },
})
DefineAbilityCategory({
  Name="Favored Class Bonus ~ Skill Rank",
  Category="Special Ability",
  AbilityList="Favored Class Bonus ~ Skill Rank",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Class Bonuses",
  Visible=true,
})
DefineAbilityCategory({
  Name="Barbarian Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Barbarian Class Features",
  Visible=true,
  Types={
    "Barbarian Class Feature",
    "BarbarianClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Bard Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Bard Class Features",
  Visible=true,
  Types={
    "Bard Class Feature",
    "BardClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Cleric Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Cleric Class Features",
  Visible=true,
  Types={
    "Cleric Class Feature",
    "ClericClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Druid Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Druid Class Features",
  Visible=true,
  Types={
    "Druid Class Feature",
    "DruidClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Fighter Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Fighter Class Features",
  Visible=true,
  Types={
    "Fighter Class Feature",
    "FighterClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Monk Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Monk Class Features",
  Visible=true,
  Types={
    "Monk Class Feature",
    "MonkClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Paladin Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Paladin Class Features",
  Visible=true,
  Types={
    "Paladin Class Feature",
    "PaladinClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Ranger Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Ranger Class Features",
  Visible=true,
  Types={
    "Ranger Class Feature",
    "RangerClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Rogue Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Rogue Class Features",
  Visible=true,
  Types={
    "Rogue Class Feature",
    "RogueClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Sorcerer Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Sorcerer Class Features",
  Visible=true,
  Types={
    "Sorcerer Class Feature",
  },
})
DefineAbilityCategory({
  Name="Wizard Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Wizard Class Features",
  Visible=true,
  Types={
    "Wizard Class Feature",
    "WizardClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Assassin Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Assassin Class Features",
  Visible=true,
  Types={
    "Assassin Class Feature",
    "AssassinClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Dragon Disciple Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Dragon Disciple Class Features",
  Visible=true,
  Types={
    "Dragon Disciple Class Feature",
    "Dragon DiscipleClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Duelist Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Duelist Class Features",
  Visible=true,
  Types={
    "Duelist Class Feature",
    "DuelistClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Eldritch Knight Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Eldritch Knight Class Features",
  Visible=true,
  Types={
    "Eldritch Knight Class Feature",
    "Eldritch KnightClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Loremaster Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Loremaster Class Features",
  Visible=true,
  Types={
    "Loremaster Class Feature",
    "LoremasterClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Mystic Theurge Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Mystic Theurge Class Features",
  Visible=true,
  Types={
    "Mystic Theurge Class Feature",
    "Mystic TheurgeClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Pathfinder Chronicler Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Pathfinder Chronicler Class Features",
  Visible=true,
  Types={
    "Pathfinder Chronicler Class Feature",
    "Pathfinder ChroniclerClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Shadowdancer Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Shadowdancer Class Features",
  Visible=true,
  Types={
    "Shadowdancer Class Feature",
    "ShadowdancerClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Companion Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Plural="Companion Class Features",
  Visible=true,
  Types={
    "Companion Class Feature",
    "CompanionClassFeatures",
  },
})
DefineAbilityCategory({
  Name="Traits",
  Category="Special Ability",
  DisplayLocation="Traits",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Traits",
  Pool="Pool_Traits",
  Visible=true,
  Types={
    "Trait",
  },
})
DefineAbilityCategory({
  Name="Archetype",
  Category="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="ACF",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Alternate Class Features",
  Visible=true,
  Types={
    "ACF",
  },
})
DefineAbilityCategory({
  Name="Alternative Class Features",
  Category="Internal",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Alternate Class Features",
  Visible=true,
  Types={
    "ACF",
  },
})
DefineAbilityCategory({
  Name="Barbarian Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Barbarian Archetypes",
  Visible=true,
  Types={
    "BarbarianArchetype",
  },
})
DefineAbilityCategory({
  Name="Bard Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Bard Archetypes",
  Visible=true,
  Types={
    "BardArchetype",
  },
})
DefineAbilityCategory({
  Name="Cleric Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Cleric Archetypes",
  Visible=true,
  Types={
    "ClericArchetype",
  },
})
DefineAbilityCategory({
  Name="Druid Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Druid Archetypes",
  Visible=true,
  Types={
    "DruidArchetype",
  },
})
DefineAbilityCategory({
  Name="Fighter Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Fighter Archetypes",
  Visible=true,
  Types={
    "FighterArchetype",
  },
})
DefineAbilityCategory({
  Name="Monk Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Monk Archetypes",
  Visible=true,
  Types={
    "MonkArchetype",
  },
})
DefineAbilityCategory({
  Name="Paladin Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Paladin Archetypes",
  Visible=true,
  Types={
    "PaladinArchetype",
  },
})
DefineAbilityCategory({
  Name="Ranger Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Ranger Archetypes",
  Visible=true,
  Types={
    "RangerArchetype",
  },
})
DefineAbilityCategory({
  Name="Rogue Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Rogue Archetypes",
  Visible=true,
  Types={
    "RogueArchetype",
  },
})
DefineAbilityCategory({
  Name="Sorcerer Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Sorcerer Archetypes",
  Visible=true,
  Types={
    "Sorcerer Archetype",
  },
})
DefineAbilityCategory({
  Name="Wizard Archetype",
  Category="Archetype",
  DisplayLocation="Archetype",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Wizard Archetypes",
  Visible=true,
  Types={
    "WizardArchetype",
  },
})
DefineAbilityCategory({
  Name="Dwarf Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Dwarf Racial Traits",
  Visible=true,
  Types={
    "Dwarf Racial Trait",
    "DwarfRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Elf Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Elf Racial Traits",
  Visible=true,
  Types={
    "Elf Racial Trait",
    "ElfRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Gnome Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Gnome Racial Traits",
  Visible=true,
  Types={
    "Gnome Racial Trait",
    "GnomeRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Half-Elf Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Half-Elf Racial Traits",
  Visible=true,
  Types={
    "Half-Elf Racial Trait",
    "HalfElfRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Half-Orc Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Half-Orc Racial Traits",
  Visible=true,
  Types={
    "Half-Orc Racial Trait",
    "HalfOrcRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Halfling Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Halfling Racial Traits",
  Visible=true,
  Types={
    "Halfling Racial Trait",
    "HalflingRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Human Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Human Racial Traits",
  Visible=true,
  Types={
    "Human Racial Trait",
    "HumanRacialTrait",
  },
})
DefineAbilityCategory({
  Name="Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Racial Traits",
  Visible=true,
  Types={
    "RacialTrait",
    "SpecialQuality",
    "SpecialAttack",
  },
})
DefineAbilityCategory({
  Name="Giant Spider Type",
  Category="Internal",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Giant Spider Types",
  Visible=true,
  Types={
    "GiantSpiderType",
  },
})
DefineAbilityCategory({
  Name="Fighter Bonus Feat",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Fighter Bonus Feats",
  Visible=true,
  Types={
    "Combat",
  },
})
DefineAbilityCategory({
  Name="Monk Bonus Feat",
  Category="Special Ability",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Monk Bonus Feats",
  Visible=true,
  Types={
    "MonkBonusFeat",
    "Meditation",
  },
})
DefineAbilityCategory({
  Name="Combat Trick Feat",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Combat Trick Feats",
  Pool="Pool_CombatFeat",
  Visible=true,
  Types={
    "Combat",
  },
})
DefineAbilityCategory({
  Name="Weapon Training",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Weapon Trainings",
  Visible=true,
  Types={
    "WeaponFocus",
  },
})
DefineAbilityCategory({
  Name="Ranger Bonus Feat",
  Category="Special Ability",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Ranger Bonus Feats",
  Visible=true,
  Types={
    "RangerBonusFeat",
  },
})
DefineAbilityCategory({
  Name="Wizard Bonus Feat",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Wizard Bonus Feats",
  Visible=true,
  Types={
    "WizardBonus",
    "ItemCreation",
    "Metamagic",
  },
})
DefineAbilityCategory({
  Name="Sorcerer Bloodline",
  Category="Sorcerer Bloodline",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Sorcerer Bloodline Power",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Sorcerer Bloodline Powers",
  Visible=true,
  Types={
    "Sorcerer Bloodline Power",
  },
})
DefineAbilityCategory({
  Name="Sorcerer Bloodline Feat",
  Category="Internal",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Sorcerer Bloodline Feats",
  Visible=true,
  Types={
    "Sorcerer Bloodline Feat",
  },
})
DefineAbilityCategory({
  Name="Crossblooded Sorcerer Bloodline",
  Category="Crossblooded Sorcerer Bloodline",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Crossblooded Bloodline",
  Category="Crossblooded Bloodline",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Eldritch Heritage Bloodline",
  Category="Eldritch Heritage Bloodline",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Rage Power",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Rage Powers",
  Pool="Pool_Rage_Power",
  Visible=true,
  Types={
    "RagePower",
    "Rage Power",
  },
})
DefineAbilityCategory({
  Name="Versatile Performance",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Versatile Performances",
  Visible=true,
  Types={
    "VersatilePerformance",
  },
})
DefineAbilityCategory({
  Name="Channel Energy",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Channel Energy",
  Pool="Pool_Cleric_Channeling",
  Visible=true,
  Types={
    "ChannelEnergySelection",
  },
})
DefineAbilityCategory({
  Name="Weapon Training I",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Weapon Training I",
  Visible=true,
  Types={
    "WeaponTraining1",
  },
})
DefineAbilityCategory({
  Name="Weapon Training II",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Weapon Training II",
  Visible=true,
  Types={
    "WeaponTraining2",
  },
})
DefineAbilityCategory({
  Name="Weapon Training III",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Weapon Training III",
  Visible=true,
  Types={
    "WeaponTraining3",
  },
})
DefineAbilityCategory({
  Name="Weapon Training IV",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Weapon Training IV",
  Visible=true,
  Types={
    "WeaponTraining4",
  },
})
DefineAbilityCategory({
  Name="Mercy",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Mercies",
  Visible=true,
  Types={
    "Mercy",
  },
})
DefineAbilityCategory({
  Name="Divine Bond",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Divine Bond",
  Visible=true,
  Types={
    "DivineBond",
  },
})
DefineAbilityCategory({
  Name="Favored Enemy",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Enemies",
  Visible=true,
  Types={
    "FavoredEnemy",
  },
})
DefineAbilityCategory({
  Name="Favored Enemy Bonus",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Enemy Bonuses",
  Visible=true,
  Types={
    "FavoredEnemyBonus",
  },
})
DefineAbilityCategory({
  Name="Favored Terrain",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Terrain",
  Visible=true,
  Types={
    "FavoredTerrain",
  },
})
DefineAbilityCategory({
  Name="Favored Terrain Bonus",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Favored Terrain Bonuses",
  Visible=true,
  Types={
    "FavoredTerrainBonus",
  },
})
DefineAbilityCategory({
  Name="Ranger Combat Style Feat",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Ranger Combat Style Feats",
  Visible=true,
  Types={
    "RangerBonusFeat",
    "Ranger Combat Style Feat",
  },
})
DefineAbilityCategory({
  Name="Combat Style",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Combat Styles",
  Visible=true,
  Types={
    "RangerCombatStyle",
  },
})
DefineAbilityCategory({
  Name="Hunter's Bond",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Hunter's Bond",
  Visible=true,
  Types={
    "HuntersBond",
  },
})
DefineAbilityCategory({
  Name="Rogue Talent",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Rogue Talents",
  Visible=true,
  Types={
    "RogueTalent",
  },
})
DefineAbilityCategory({
  Name="Advanced Talent",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Rogue Advanced Talents",
  Visible=true,
  Types={
    "RogueAdvancedTalent",
  },
})
DefineAbilityCategory({
  Name="Bloodline",
  Category="Internal",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Bloodlines",
  Visible=true,
  Types={
    "Bloodline Selection",
  },
})
DefineAbilityCategory({
  Name="Arcane Bond",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Arcane Bonds",
  Visible=true,
  Types={
    "ArcaneBond",
  },
})
DefineAbilityCategory({
  Name="New Arcana",
  Category="Internal",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
  Types={
    "SorcererNewArcana",
  },
})
DefineAbilityCategory({
  Name="Arcane Opposition School",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Arcane Opposition Schools",
  Pool="Pool_ArcaneOppositionSchool",
  Visible=true,
  Types={
    "ArcaneOppositionSchool",
  },
})
DefineAbilityCategory({
  Name="Expert Class Skills",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Expert Class Skills",
  Visible=true,
  Types={
    "ExpertClassSkills",
  },
})
DefineAbilityCategory({
  Name="Nature Bond",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Nature Bond",
  Visible=true,
  Types={
    "NatureBond",
  },
})
DefineAbilityCategory({
  Name="Druid Domain",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Druid Domain Choices",
  Visible=true,
  Types={
    "DruidDomainSelection",
    "Inquisition",
  },
})
DefineAbilityCategory({
  Name="Weapon Mastery",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Weapon Mastery",
  Visible=true,
  Types={
    "WeaponMastery",
  },
})
DefineAbilityCategory({
  Name="Simple Weapon Proficiency Choice",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Simple Weapon Proficiency Choice",
  Visible=true,
  Types={
    "SingleSimpleWeaponProficiency",
  },
})
DefineAbilityCategory({
  Name="Ki Pool Stat Choice",
  Category="Internal",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Ki Pool Stat Choice",
  Visible=true,
  Types={
    "KiStatChoice",
  },
})
DefineAbilityCategory({
  Name="Arcane School Specialization",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Arcane School Specialization",
  Pool="Pool_ArcaneSchoolSpecialization",
  Visible=true,
  Types={
    "ArcaneSchool",
  },
})
DefineAbilityCategory({
  Name="Necromancer Channeling",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Necromancer Channeling Choices",
  Visible=true,
  Types={
    "NecromancerChanneling",
  },
})
DefineAbilityCategory({
  Name="Knowledge Class Skill",
  Category="Class Skill",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Knowledge Class Skills",
  Visible=true,
  Types={
    "Knowledge",
  },
})
DefineAbilityCategory({
  Name="Arcane Bloodline School Power",
  Category="Special Ability",
  AbilityList="Arcane Bloodline ~ School Power Choice",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Animal Companion Feat",
  Category="Special Ability",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Animal Companion Feats",
  Pool="Pool_AnimalCompanionFeat",
  Visible=true,
  Types={
    "AnimalCompanionFeat",
  },
})
DefineAbilityCategory({
  Name="Companion Level Increase Choice",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Companion Level Increase Choice",
  Pool="Pool_CompanionLevelIncreaseChoice",
  Visible=true,
  Types={
    "CompChoice",
  },
})
DefineAbilityCategory({
  Name="Companion Stat Increase",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Companion Stat Increase Choice",
  Pool="Pool_CompanionStatIncrease",
  Visible=true,
  Types={
    "CompStatChoice",
  },
})
DefineAbilityCategory({
  Name="Companion Skill",
  Category="Internal",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Companion Skill Choice",
  Pool="Pool_CompanionSkill",
  Visible=true,
  Types={
    "AnimalCompanionSkill",
  },
})
DefineAbilityCategory({
  Name="Animal Trick",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Animal Tricks",
  Visible=true,
  Types={
    "AnimalTrick",
  },
})
DefineAbilityCategory({
  Name="Loremaster Secret",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Loremaster Secrets",
  Visible=true,
  Types={
    "LoremasterSecret",
  },
})
DefineAbilityCategory({
  Name="Add Spoken Language",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Visible=true,
  Types={
    "AddSpokenLanguage",
  },
})
DefineAbilityCategory({
  Name="Cosmopolitan Spoken Language",
  Category="Special Ability",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=false,
  Visible=true,
  Types={
    "AddSpokenLanguage",
  },
})
DefineAbilityCategory({
  Name="Intelligent Item",
  Category="Intelligent Item",
  Visible=false,
})
DefineAbilityCategory({
  Name="Intelligent Item Alignment",
  Category="Intelligent Item",
  DisplayLocation="Intelligent Magic Item",
  Editable=true,
  EditPool=true,
  Plural="Intelligent Item Alignment",
  Visible=true,
  Types={
    "IntelligentAlignment",
  },
})
DefineAbilityCategory({
  Name="Intelligent Item Languages",
  Category="Intelligent Item",
  DisplayLocation="Intelligent Magic Item",
  Editable=true,
  EditPool=true,
  Plural="Intelligent Item Languages",
  Visible=true,
  Types={
    "IntItemLang",
  },
})
DefineAbilityCategory({
  Name="Intelligent Item Power",
  Category="Intelligent Item",
  DisplayLocation="Intelligent Magic Item",
  Editable=true,
  EditPool=true,
  Plural="Intelligent Item Power",
  Visible=true,
  Types={
    "ItemStandardPower",
  },
})
DefineAbilityCategory({
  Name="Intelligent Item Purpose",
  Category="Intelligent Item",
  DisplayLocation="Intelligent Magic Item",
  Editable=true,
  EditPool=true,
  Plural="Intelligent Item Purpose",
  Visible=true,
  Types={
    "ItemPurpose",
  },
})
DefineAbilityCategory({
  Name="Intelligent Item Purpose Power",
  Category="Intelligent Item",
  DisplayLocation="Intelligent Magic Item",
  Editable=true,
  EditPool=true,
  Plural="Intelligent Item Purpose Power",
  Visible=true,
  Types={
    "ItemPurposePower",
  },
})
DefineAbilityCategory({
  Name="Afflictions",
  Category="Afflictions",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Afflictions",
  Visible=true,
})
DefineAbilityCategory({
  Name="GM Awards",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="GM Awards",
  Visible=true,
  Types={
    "GM_Award",
  },
})
DefineAbilityCategory({
  Name="Extra Channel",
  Category="Special Ability",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Plural="Extra Channels",
  Visible=true,
  Types={
    "ExtraChannel",
  },
})
DefineAbilityCategory({
  Name="Weapon Focus",
  Category="FEAT",
  AbilityList="Weapon Focus",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Greater Weapon Focus",
  Category="FEAT",
  AbilityList="Greater Weapon Focus",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Improved Critical",
  Category="FEAT",
  AbilityList="Improved Critical",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Greater Weapon Specialization",
  Category="FEAT",
  AbilityList="Greater Weapon Specialization",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Weapon Specialization",
  Category="FEAT",
  AbilityList="Weapon Specialization",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Exotic Weapon Proficiency",
  Category="FEAT",
  AbilityList="Exotic Weapon Proficiency",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Martial Weapon Proficiency",
  Category="FEAT",
  AbilityList="Martial Weapon Proficiency",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Skill Focus",
  Category="FEAT",
  AbilityList="Skill Focus",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Spell Focus",
  Category="FEAT",
  AbilityList="Spell Focus",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
})
DefineAbilityCategory({
  Name="Teamwork Feat",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
  Types={
    "Teamwork",
  },
})
DefineAbilityCategory({
  Name="Racial Trait",
  Category="Special Ability",
  DisplayLocation="Racial Abilities",
  Editable=false,
  EditPool=false,
  Visible=true,
  Types={
    "RacialTrait",
    "SpecialQuality",
    "SpecialAttack",
  },
})
DefineAbilityCategory({
  Name="Class Feature",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=false,
  EditPool=false,
  Plural="Class Features",
  Visible=false,
  Types={
    "ClassFeatures",
    "SpecialQuality",
    "SpecialAttack",
  },
})
DefineAbilityCategory({
  Name="Class Ability",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=false,
  EditPool=false,
  Plural="Class Features",
  Visible=false,
  Types={
    "ClassAbility",
    "SpecialQuality",
    "SpecialAttack",
  },
})
DefineAbilityCategory({
  Name="Special Mount Choice",
  Category="Internal",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Visible=true,
  Types={
    "SpecialMountSelection",
  },
})
DefineAbilityCategory({
  Name="Permanency Applied Effects",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=true,
  Visible=true,
  Types={
    "PermanencySpell",
  },
})
DefineAbilityCategory({
  Name="Optional Rules Systems",
  Category="Internal",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=true,
  Visible=true,
  Types={
    "OptionalRules",
  },
})
DefineAbilityCategory({
  Name="Pact",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=true,
  Visible=true,
  Types={
    "Pact",
  },
})
DefineAbilityCategory({
  Name="Background",
  Category="Background",
  Editable=false,
  EditPool=true,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Human Ethnicity",
  Category="Background",
  DisplayLocation="Background",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Human Ethnicities",
  Visible=true,
  Types={
    "HumanEthnicity",
  },
})
DefineAbilityCategory({
  Name="Region of Origin",
  Category="Background",
  DisplayLocation="Background",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Plural="Regions of Origin",
  Visible=true,
  Types={
    "Region",
  },
})
DefineAbilityCategory({
  Name="Headband of Intellect Skill Choice",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "HeadbandSkill",
  },
})
DefineAbilityCategory({
  Name="Intelligence-Based Skill",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  Visible=true,
  Types={
    "IntBaseSkill",
  },
})
DefineAbilityCategory({
  Name="Raging Selection",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "RageSelection",
  },
})
DefineAbilityCategory({
  Name="Sorcerer Draconic Bloodline",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "Sorcerer Draconic Bloodline Choice",
  },
})
DefineAbilityCategory({
  Name="Sorcerer Elemental Bloodline",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "Sorcerer Elemental Bloodline Choice",
  },
})
DefineAbilityCategory({
  Name="Draconic Bloodline Type",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "Sorcerer Draconic Bloodline Choice",
  },
})
DefineAbilityCategory({
  Name="Elemental Bloodline Type",
  Category="Special Ability",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "Sorcerer Elemental Bloodline Choice",
  },
})
DefineAbilityCategory({
  Name="Blood of Dragons Bloodline",
  Category="Blood of Dragons Bloodline",
  Editable=false,
  EditPool=false,
  FractionalPool=false,
  Visible=false,
})
DefineAbilityCategory({
  Name="Dragon Disciple Bloodline",
  Category="Internal",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "Dragon Disciple Bloodline Choice",
  },
})
DefineAbilityCategory({
  Name="Temp Feat",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Pool="Pool_Temp_Feat",
  Visible=true,
  Types={
    "*",
  },
})
DefineAbilityCategory({
  Name="Temp Combat Feat",
  Category="FEAT",
  DisplayLocation="Feats",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Pool="Pool_Temp_Combat_Feat",
  Visible=true,
  Types={
    "Combat",
  },
})
DefineAbilityCategory({
  Name="Barbarian Class Selection",
  Category="Class",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Pool="Pool_Barbarian_Class_Selection",
  Visible=true,
  Types={
    "Barbarian Class Selection",
  },
})
DefineAbilityCategory({
  Name="Monk Class Selection",
  Category="Class",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Pool="Pool_Monk_Class_Selection",
  Visible=true,
  Types={
    "Monk Class Selection",
  },
})
DefineAbilityCategory({
  Name="Rogue Class Selection",
  Category="Class",
  DisplayLocation="Class Features",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Pool="Pool_Rogue_Class_Selection",
  Visible=true,
  Types={
    "Rogue Class Selection",
  },
})
DefineAbilityCategory({
  Name="GM Bonus Spell Known",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "GM Bonus Spell Known",
  },
})
DefineAbilityCategory({
  Name="GM Bonus Spell Cast",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "GM Bonus Spell Cast",
  },
})
DefineAbilityCategory({
  Name="GM Penalized Spell Known",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "GM Penalized Spell Known",
  },
})
DefineAbilityCategory({
  Name="GM Penalized Spell Cast",
  Category="Special Ability",
  DisplayLocation="Misc",
  Editable=true,
  EditPool=false,
  FractionalPool=false,
  Visible=true,
  Types={
    "GM Penalized Spell Cast",
  },
})
DefineAbilityCategory({
  Name="Human Subrace",
  Category="Internal",
  DisplayLocation="Racial Abilities",
  Editable=true,
  EditPool=true,
  FractionalPool=false,
  Visible=true,
  Types={
    "HumanSubrace",
  },
})
