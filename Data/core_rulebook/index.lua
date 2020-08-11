SetDataSetInfo({
  Name="Core Rulebook",
  SourceInfo={
    SourceLong="Core Rulebook",
    SourceShort="CR",
    SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
    SourceDate="2009-08",
  },
  GameMode="Pathfinder",
  BookTypes={
    "Core Rules",
  },
  Types={
    "Paizo Publishing",
    "Pathfinder RPG",
  },
  Status="Release",
  Copyright="Open Game License v 1.0a Copyright 2000, Wizards of the Coast, Inc.\nSystem Reference Document. Copyright 2000. Wizards of the Coast, Inc.; Authors Jonathan Tweet, Monte Cook, Skip Williams, based on material by E. Gary Gygax and Dave Arneson.\nPathfinder RPG Core Rulebook. Copyright 2009, Paizo Inc.; Author: Jason Bulmahn, based on material by Jonathan Tweet, Monte Cook, and Skip Williams.\nThe Book of Experimental Might. Copyright 2008, Monte J. Cook. All rights reserved.\nTome of Horrors. Copyright 2002, Necromancer Games, Inc.; Authors: Scott Greene, with Clark Peterson, Erica Balsley, Kevin Baase, Casey Christofferson, Lance Hawvermale, Travis Hawvermale, Patrick Lawinger, and Bill Webb; Based on original content from TSR.\nPCGen dataset conversion for \"Pathfinder RPG Core Rulebook\" Copyright 2009-2010, PCGen Data team (Including, but not limited to Stefan Radermacher, Eddy Anthony (MoSaT), Eric Smith (Mardudd), Andrew Maitland (LegacyKing)).\n",
  Description="The Pathfinder Roleplaying Game puts you in the role of a brave adventurer fighting to survive in a world beset by magic and evil. Will you cut your way through monster-filled ruins and cities rife with political intrigue to emerge as a famous hero laden with fabulous treasure, or will you fall victim to treacherous traps and fiendish monsters in a forgotten dungeon? Your fate is yours to decide with this giant Core Rulebook that provides everything a player needs to set out on a life of adventure and excitement!",
  Genre="Fantasy",
  HelpUrl=nil,
  InfoText="This dataset uses trademarks and/or copyrights owned by Paizo Inc., which are used under Paizo's Community Use Policy. We are expressly prohibited from charging you to use or access this content. This dataset is not published, endorsed, or specifically approved by Paizo Publishing. For more information about Paizo's Community Use Policy, please visit paizo.com/communityuse. For more information about Paizo Publishing and Paizo products, please visit paizo.com.",
  IsMature=false,
  IsOGL=true,
  IsLicensed=false,
  Conditions={
    function (source)
      local count = 0
      if source.IsBookType('Core Rules') then
        count = count + 1
      end
      if source.Name == "[Core Rulebook]" then
        count = count + 1
      end
      return count < 1
    end,
  },
  PublisherInfo={
    NameShort="Paizo",
    NameLong="Paizo Inc.",
    Url="http://paizo.com",
  },
  Rank=200908,
  ShowInMenu=false,
  Setting="Pathfinder",
  CoverImage="core_rulebook.jpg",
  LogoImage="@/publisher_logos/Paizo_Publishing.png",
  Links={
    {
      Name="WEBSITE",
      Url="http://www.paizo.com/",
      Text="Visit Paizo Publishing!",
    },
    {
      Name="WEBSITE",
      Url="http://www.paizo.com/communityuse",
      Text="Paizo's Community Use Policy.",
    },
    {
      Name="Paizo Publishing",
      Url="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
      Text="Buy this publication from Paizo Publishing!",
    },
  },
})
ImportFile("@/homebrew/conversion_support/conversion_support.lua")
ImportFile("@/pathfinder/paizo/roleplaying_game/core_essentials/_core_essentials.lua")
ImportFile("cr__align.lua")
ImportFile("cr__datacontrols.lua")
ImportFile("cr__saves.lua")
ImportFile("cr__stats.lua")
ImportFile("cr__variables.lua")
ImportFile("cr_abilitycategories.lua")
ImportFile("cr_abilities.lua")
ImportFile("cr_abilities_class.lua")
ImportFile("cr_abilities_race.lua")
ImportFile("cr_abilities_globalvar.lua")
ImportFile("cr_classes.lua")
ImportFile("cr_domains.lua")
ImportFile("cr_equip_arms_armor.lua")
ImportFile("cr_equip_general.lua")
ImportFile("cr_equip_magic_items.lua")
ImportFile("cr_equipmods.lua")
ImportFile("cr_feats.lua")
ImportFile("cr_kits.lua")
ImportFile("cr_languages.lua")
ImportFile("cr_races.lua")
ImportFile("cr_skills.lua")
ImportFile("cr_spells.lua")
ImportFile("cr_templates.lua")
ImportFile("cr_profs_armor.lua")
ImportFile("cr_profs_shield.lua")
ImportFile("cr_profs_weapon.lua")
ImportFile("cr_abilities_companion.lua")
ImportFile("cr_classes_companion.lua")
ImportFile("cr_companionmods.lua")
ImportFile("cr_kits_companion.lua")
ImportFile("cr_races_companion.lua")
HideObjects("FEAT", {
  "SpecialQuality",
  "SpecialAttack",
  "Extraordinary",
  "SpellLike",
  "Supernatural",
  "AttackOption",
  "Aura",
  "Immunity",
  "ModifyAC",
  "Resistance",
  "Weakness",
})
HideObjects("FEAT", {
  "WizardBonus",
  "SkillFocus",
  "WeaponFocus",
})
HideObjects("FEAT", {
  "AberrantBloodline",
  "AbyssalBloodline",
  "ArcaneBloodline",
  "CelestialBloodline",
  "DestinedBloodline",
  "DraconicBloodline",
  "ElementalBloodline",
  "FeyBloodline",
  "InfernalBloodline",
  "UndeadBloodline",
})
HideObjects("FEAT", {
  "Applied Bonus",
})
HideObjects("EQUIP", {
  "Amulet of Mighty Fists",
})
HideObjects("SKILL", {
  "Strength",
  "Dexterity",
  "Constitution",
  "Intelligence",
  "Wisdom",
  "Charisma",
  "Base",
  "Background",
})
HideObjects("SKILL", {
  "ACHECK",
})
AddAvailableCompanions("Mount", {
  {
    Any=true,
  },
}, {
})
AddAvailableCompanions("Follower", {
  {
    Any=true,
  },
}, {
})
