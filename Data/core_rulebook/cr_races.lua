-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_races.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineRace({
  Name="Dwarf",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="M",
  Reach=5,
  Movement={
    Walk=20,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Dwarf",
      },
    },
  },
  Facts={
    BaseSize="M",
    IsPC="true",
  },
  SourcePage="p.21",
})
DefineRace({
  Name="Elf",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="M",
  Reach=5,
  Movement={
    Walk=30,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Elf",
      },
    },
  },
  Facts={
    BaseSize="M",
    IsPC="true",
  },
  SourcePage="p.22",
})
DefineRace({
  Name="Gnome",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="S",
  Reach=5,
  Movement={
    Walk=20,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Gnome",
      },
    },
  },
  Facts={
    BaseSize="S",
    IsPC="true",
  },
  SourcePage="p.23",
})
DefineRace({
  Name="Half-Elf",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="M",
  Reach=5,
  Movement={
    Walk=30,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Half-Elf",
      },
    },
  },
  ServesAs={
    {
      Race=true,
      Names={
        "Elf",
        "Human",
      },
    },
  },
  Facts={
    BaseSize="M",
    IsPC="true",
  },
  SourcePage="p.24",
})
DefineRace({
  Name="Half-Orc",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="M",
  Reach=5,
  Movement={
    Walk=30,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Half-Orc",
      },
    },
  },
  ServesAs={
    {
      Race=true,
      Names={
        "Human",
        "Orc",
      },
    },
  },
  Facts={
    BaseSize="M",
    IsPC="true",
  },
  SourcePage="p.25",
})
DefineRace({
  Name="Halfling",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="S",
  Reach=5,
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "ALL",
      },
      Formula=Formula("Halfling_HalflingLuck_SaveBonus"),
      Type={
        Name="Racial",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=20,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Halfling",
      },
    },
  },
  Facts={
    BaseSize="S",
    IsPC="true",
  },
  SourcePage="p.26",
})
DefineRace({
  Name="Human",
  Types={
    "Humanoid",
    "Base",
    "PC",
  },
  RaceType="Humanoid",
  StartingFeats=1,
  Size="M",
  Reach=5,
  Movement={
    Walk=30,
  },
  SortKey="a_base_pc",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Racial Traits ~ Human",
      },
    },
  },
  Facts={
    BaseSize="M",
    IsPC="true",
  },
  SourcePage="p.27",
})
DefineRace({
  Name="A test",
  StartingFeats=1,
  Size="T",
  Reach=0,
  Movement={
    Walk=10,
  },
  SortKey="a_base_pc",
  Facts={
    BaseSize="M",
  },
})