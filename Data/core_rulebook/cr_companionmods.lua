-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_companionmods.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineFollowerBonus({
  NewRaceType="Animal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("MASTERVAR(\"AnimalCompanionLVL\")"),
      Variables={
        "MasterLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1+MASTERVAR(\"AnimalCompanionLVL\")/3"),
      Variables={
        "BonusTricks",
      },
    },
  },
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 1 or character.GetVariable("AnimalCompanionLVL") >= 1
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 2 or character.GetVariable("AnimalCompanionLVL") >= 2
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 4 or character.GetVariable("AnimalCompanionLVL") >= 4
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 5 or character.GetVariable("AnimalCompanionLVL") >= 5
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 6 or character.GetVariable("AnimalCompanionLVL") >= 6
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 8 or character.GetVariable("AnimalCompanionLVL") >= 8
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 9 or character.GetVariable("AnimalCompanionLVL") >= 9
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 10 or character.GetVariable("AnimalCompanionLVL") >= 10
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 12 or character.GetVariable("AnimalCompanionLVL") >= 12
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 13 or character.GetVariable("AnimalCompanionLVL") >= 13
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 14 or character.GetVariable("AnimalCompanionLVL") >= 14
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 16 or character.GetVariable("AnimalCompanionLVL") >= 16
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 17 or character.GetVariable("AnimalCompanionLVL") >= 17
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 18 or character.GetVariable("AnimalCompanionLVL") >= 18
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 20 or character.GetVariable("AnimalCompanionLVL") >= 20
  end,
})
DefineFollowerBonus({
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Tricks and Training",
        "Base Companion ~ Animal Companion",
      },
    },
  },
  Types={
    "Animal Companion",
  },
  Condition=function (character)
    return character.GetLevel("AnimalCompanionLVL") >= 1 or character.GetVariable("AnimalCompanionLVL") >= 1
  end,
})
DefineFollowerBonus({
  NewRaceType="Animal",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Base Companion ~ Special Mount",
        "Animal Tricks and Training",
      },
    },
  },
  AutomaticProficiencies={
    {
      Kind="Armor",
      Types={
        "Barding",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("MASTERVAR(\"SpecialMountLVL\")"),
      Variables={
        "MasterLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1+MASTERVAR(\"SpecialMountLVL\")/3"),
      Variables={
        "BonusTricks",
      },
    },
  },
  StatModifications={
    {
    },
  },
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 1 or character.GetVariable("SpecialMountLVL") >= 1
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 2 or character.GetVariable("SpecialMountLVL") >= 2
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 4 or character.GetVariable("SpecialMountLVL") >= 4
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 5 or character.GetVariable("SpecialMountLVL") >= 5
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 6 or character.GetVariable("SpecialMountLVL") >= 6
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 8 or character.GetVariable("SpecialMountLVL") >= 8
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 9 or character.GetVariable("SpecialMountLVL") >= 9
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 10 or character.GetVariable("SpecialMountLVL") >= 10
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 12 or character.GetVariable("SpecialMountLVL") >= 12
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 13 or character.GetVariable("SpecialMountLVL") >= 13
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 14 or character.GetVariable("SpecialMountLVL") >= 14
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 16 or character.GetVariable("SpecialMountLVL") >= 16
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 17 or character.GetVariable("SpecialMountLVL") >= 17
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 18 or character.GetVariable("SpecialMountLVL") >= 18
  end,
})
DefineFollowerBonus({
  AdditionalHitDie=1,
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 20 or character.GetVariable("SpecialMountLVL") >= 20
  end,
})
DefineFollowerBonus({
  NewRaceType="Animal/Magical Beast",
  Templates={
    "Celestial Creature",
  },
  Types={
    "Special Mount",
  },
  Condition=function (character)
    return character.GetLevel("SpecialMountLVL") >= 11 or character.GetVariable("SpecialMountLVL") >= 11
  end,
})
DefineFollowerBonus({
  CopyFolloweeAttackBonus=Formula("MASTER"),
  CopyFolloweeChecks=true,
  CopyFolloweeHitPoints=Formula("max(1,MASTER/2)"),
  Types={
    "Shadow Companion",
  },
  Condition=function (character)
    return character.GetLevel("ShadowCompanionLVL") >= 1 or character.GetVariable("ShadowCompanionLVL") >= 1
  end,
})
DefineFollowerBonus({
  Types={
    "Mount",
  },
  Condition=function (character)
    return character.GetLevel("NormalMount") >= 1 or character.GetVariable("NormalMount") >= 1
  end,
})
DefineFollowerBonus({
  Types={
    "Follower",
  },
  Condition=function (character)
    return character.GetLevel("NormalFollower") >= 1 or character.GetVariable("NormalFollower") >= 1
  end,
})
