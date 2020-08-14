-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_races_companion.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineRace({
  Name="Companion (Ape)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=2,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=30,
    Climb=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Ape",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Badger (Wolverine))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RageDuration",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=30,
    Burrow=10,
    Climb=10,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Rage",
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Wolverine",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Bear)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Bear",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Bird (Eagle))",
  Types={
    "Companion",
    "AnimalCompanion",
    "Raptor",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=2,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "Maneuverability",
      },
      Formula=Formula("3"),
    },
    {
      Category="WEAPONPROF=Talons",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=10,
    Fly=80,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Flight Maneuverability",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Bird",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Bird (Hawk))",
  Types={
    "Companion",
    "AnimalCompanion",
    "Raptor",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=2,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "Maneuverability",
      },
      Formula=Formula("3"),
    },
    {
      Category="WEAPONPROF=Talons",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=10,
    Fly=80,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Flight Maneuverability",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Bird",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Bird (Owl))",
  Types={
    "Companion",
    "AnimalCompanion",
    "Raptor",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=2,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "Maneuverability",
      },
      Formula=Formula("3"),
    },
    {
      Category="WEAPONPROF=Talons",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=10,
    Fly=80,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Flight Maneuverability",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Bird",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Boar)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("6"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Gore",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Boar",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.55",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Camel)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="L",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("8"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Camel ~ Spit",
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Camel",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="L",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Cat (Small (Cheetah)))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("10"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Cat, Small (Cheetah)",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Trip",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Cheetah",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Cat (Small (Leopard)))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("10"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Cat, Small (Leopard)",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Trip",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Leopard",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Crocodile (Alligator))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-10"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=20,
    Swim=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Crocodile ~ Hold Breath",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Alligator",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Dog)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dog",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Horse)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="L",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Hoof",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Horse",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="L",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Pony)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="WEAPONPROF=Hoof",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("-1"),
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Hoof",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Pony",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Shark)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=0,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-10"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Swim=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Shark",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Snake (Constrictor))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=0,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("8"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-10"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=20,
    Climb=20,
    Swim=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Snake (Constrictor)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Snake (Viper))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=0,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-10"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=20,
    Climb=20,
    Swim=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Poison",
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Snake (Viper)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Cat (Big (Lion)))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Cat, Big (Lion)",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Rake",
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Lion",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Cat (Big (Tiger)))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  HandCount=3,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Cat, Big (Tiger)",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Rake",
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Tiger",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Deinonychus))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="WEAPONPROF=Talons",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("2"),
    },
  },
  Movement={
    Walk=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dinosaur (Deinonychus)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Velociraptor))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Talons",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dinosaur (Velociraptor)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Wolf)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Trip",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Wolf",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/pathfinderRPG/v5748btpy85k5",
  SourceDate="2009-09",
})
DefineRace({
  Name="Companion (Dire Rat)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=40,
    Climb=20,
    Swim=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dire Rat",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.232",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Shadow)",
  Types={
    "Companion",
  },
  RaceType="Undead",
  StartingFeats=1,
  Size="M",
  ChallengeRating=3,
  Bonuses={
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-4"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "ChannelResistance",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "Maneuverability",
      },
      Formula=Formula("4"),
    },
  },
  Movement={
    Fly=40,
  },
  MonsterClass={
    Class="Shadow Companion",
    Level=3,
  },
  DisplayName="Companion [NAME]",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Channel Resistance",
        "Flight Maneuverability",
        "Shadow Companion Resistance",
        "Shadow Companion Saves",
        "Strength Damage",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Incorporeal Touch",
      Types={
        "Melee",
        "Natural",
        "Weapon",
        "Touch",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.245",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
SetSource({
  SourceLong="Bestiary 2",
  SourceShort="B2",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/pathfinderRPG/v5748btpy8hif",
  SourceDate="2010-12",
})
DefineRace({
  Name="Companion (Dinosaur (Allosaurus))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=2,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Allosaurus",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dinosaur (Allosaurus)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.90",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Parasaurolophus))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=2,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("8"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("-2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("2"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Parasaurolophus",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Tail Slap",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dinosaur (Parasaurolophus)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.91",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Tylosaurus))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-2"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("3"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bite",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=20,
    Swim=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Tylosaurus",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Dinosaur (Tylosaurus)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.91",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Gar)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=0,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
        "DEX",
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-9"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bite",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Swim=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Gar",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Can't Be Tripped",
        "Grab ~ Bite",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Gar",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Herd Animal (Ram))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Gore",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Ram",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Gore",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Herd Animal (Ram)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.154",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Hippopotamus)",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "DEX",
        "CON",
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("6"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bite",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Hippopotamus",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Hippopotamus ~ Sweat",
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Hippopotamus Companion Natural Attack",
      },
      Conditions={
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "Hippopotamus Companion Advancement") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Hippopotamus",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.157",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Megafauna (Arsinoitherium))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
        "CON",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Gore",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Arsinoitherium",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Arsinoitherium Companion Natural Attack",
      },
      Conditions={
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "Arsinoitherium Companion Advancement") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Megafauna (Arsinoitherium)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.186",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Megafauna (Gylptodon))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
        "DEX",
        "CON",
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("5"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Gylptodon",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Gylptodon Companion Natural Attack",
      },
      Conditions={
        function (character)
          return not (((any(character.Templates, function (template) return stringMatch(template.Name, "Gylptodon Companion Advancement") end) and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Megafauna (Gylptodon)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.186",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Megafauna (Megaloceros))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("6"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
        "WIS",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("3"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Gore",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
    {
      Category="WEAPONPROF=Gore",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Megaloceros",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Gore",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Megafauna (Megaloceros)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.187",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Megafauna (Megatherium))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("5"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
  },
  Movement={
    Walk=40,
    Climb=10,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Megatherium",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Claw",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Megafauna (Megatherium)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.187",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Primate (Baboon))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=2,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
        "CON",
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-8"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-6"),
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bite",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Baboon",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Primate (Baboon)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.212",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Ray (Manta))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=0,
  HandCount=0,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-9"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
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
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Swim=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Manta Ray",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Tail Slap",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Ray (Manta)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.232",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Ray (Stingray))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="S",
  Reach=5,
  LegCount=0,
  HandCount=0,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-4"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("4"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-9"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-8"),
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Swim=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Stingray",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Stingray ~ Poison",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Tail Slap",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Ray (Stingray)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="S",
  },
  SourcePage="p.232",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
DefineRace({
  Name="Companion (Turtle (Giant Snapping))",
  Types={
    "Companion",
    "AnimalCompanion",
  },
  RaceType="Companion",
  Size="M",
  Reach=5,
  LegCount=4,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Companion Level Increase Choice",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
    },
    {
      Category="STAT",
      Variables={
        "STR",
      },
      Formula=Formula("-2"),
    },
    {
      Category="STAT",
      Variables={
        "DEX",
      },
      Formula=Formula("0"),
    },
    {
      Category="STAT",
      Variables={
        "CON",
      },
      Formula=Formula("-2"),
    },
    {
      Category="STAT",
      Variables={
        "INT",
      },
      Formula=Formula("-9"),
    },
    {
      Category="STAT",
      Variables={
        "WIS",
      },
      Formula=Formula("2"),
    },
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
    },
    {
      Category="VAR",
      Variables={
        "AC_Natural_Armor",
      },
      Formula=Formula("10"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "HasLowLightVision",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "RaceSizeIsLong",
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
        "NoTypeTraits",
      },
      Formula=Formula("1"),
    },
    {
      Category="WEAPONPROF=Bite",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("max(0,(STR/2))"),
    },
  },
  Movement={
    Walk=20,
    Swim=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
  DisplayName="Companion Giant Snapping Turtle",
  SortKey="z_Companion",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Hold Breath",
        "Scent",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character)
          return ((IsRuleEnabled("DISPLAYTYPETRAITS"))) >= 1
        end,
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Companion Advancement ~ Turtle (Giant Snapping)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Companion Advancement")
          end)
        end,
      },
    },
  },
  Facts={
    BaseSize="M",
  },
  SourcePage="p.273",
  Conditions={
    function (character)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
})
