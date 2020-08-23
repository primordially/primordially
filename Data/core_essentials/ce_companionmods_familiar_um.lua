-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_companionmods_familiar_um.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Ultimate Magic",
  SourceShort="UM",
  SourceWeb="http://paizo.com/pathfinderRPG/v5748btpy8g7s",
  SourceDate="2011-05",
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "EidMaxAttacks",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 1 or character.GetVariable("FamiliarEP") >= 1
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 2 or character.GetVariable("FamiliarEP") >= 2
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 3 or character.GetVariable("FamiliarEP") >= 3
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 4 or character.GetVariable("FamiliarEP") >= 4
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 5 or character.GetVariable("FamiliarEP") >= 5
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 6 or character.GetVariable("FamiliarEP") >= 6
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 7 or character.GetVariable("FamiliarEP") >= 7
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 8 or character.GetVariable("FamiliarEP") >= 8
  end,
})
DefineFollowerBonus({
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Eidolon Evolution",
      },
    },
  },
  Types={
    "Familiar",
  },
  Condition=function (character)
    return character.GetLevel("FamiliarEP") >= 9 or character.GetVariable("FamiliarEP") >= 9
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
      return (character.Race.Name == "Familiar (Thrush)")
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
  FollowerRace="Familiar (Blue-Ringed Octopus)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Blue-Ringed Octopus)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Donkey Rat)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Donkey Rat)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Fox)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Fox)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Goat)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Goat)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Scorpion (Greensting))",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Scorpion (Greensting))",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Hedgehog)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Hedgehog)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Centipede (House))",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Centipede (House))",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Crab (Giant King))",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Crab (Giant King))",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Pig)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Pig)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Spider (Scarlet))",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Spider (Scarlet))",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Thrush)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Thrush)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
DefineFolloweeBonus({
  FollowerRace="Familiar (Turtle)",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Familiar Granted Bonus (Turtle)",
      },
    },
  },
  Types={
    "Familiar",
  },
})
