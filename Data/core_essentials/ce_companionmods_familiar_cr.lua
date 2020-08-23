-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_companionmods_familiar_cr.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineFollowerBonus({
  CopyFolloweeAttackBonus=Formula("MASTER"),
  CopyFolloweeChecks=true,
  CopyFolloweeHitPoints=Formula("max(1,MASTER/FamiliarHPDivisor)"),
  UseFolloweeSkills=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("MASTERVAR(\"FamiliarLVL\")"),
      Variables={
        "MasterLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "FamiliarHPDivisor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("MasterLevel"),
      Variables={
        "CompanionHD",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarLVL") >= 1 or character.GetVariable("FamiliarLVL") >= 1
  end,
})
DefineFollowerBonus({
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Companion ~ Familiar",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarLVL") >= 1 or character.GetVariable("FamiliarLVL") >= 1
  end,
})
DefineFollowerBonus({
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Augmented Animal",
      },
      Conditions={
        function (character, item, sources)
          return (any(character.Race.Types, function (type) stringMatch(type, "Animal") end))
        end,
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarLVL") >= 1 or character.GetVariable("FamiliarLVL") >= 1
  end,
})
DefineFollowerBonus({
  Abilities={
    {
      Category="Familiar Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Familiar ~ Speak One Language",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Race.Name == "Raven")
    end,
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarLVL") >= 1 or character.GetVariable("FamiliarLVL") >= 1
  end,
})
DefineFolloweeBonus({
  FollowerRace="Bat",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Bat)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Cat",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Cat)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Hawk",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Hawk)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Lizard",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Lizard)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Monkey",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Monkey)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Owl",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Owl)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Rat",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Rat)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Raven",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Raven)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Viper",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Viper)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Toad",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Toad)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Weasel",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Weasel)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
