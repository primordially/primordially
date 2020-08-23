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
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "AnimalCompanionPrimate",
  },
  StartingKitChoices={
    "Companion ~ Ape",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=30,
    Climb=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Badger (Wolverine))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "RageDuration",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Badger",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
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
})
DefineRace({
  Name="Companion (Bear)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Bear",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Bird (Eagle))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Talons",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Bird",
  },
  Types={
    "Companion",
    "AnimalCompanion",
    "Raptor",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=10,
    Fly=80,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Bird (Hawk))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Talons",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Bird",
  },
  Types={
    "Companion",
    "AnimalCompanion",
    "Raptor",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=10,
    Fly=80,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Bird (Owl))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Talons",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Bird",
  },
  Types={
    "Companion",
    "AnimalCompanion",
    "Raptor",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=10,
    Fly=80,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Boar)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.55",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Boar",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Camel)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="L",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Camel",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="L",
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Cat (Small (Cheetah)))",
  SortKey="z_Companion",
  DisplayName="Companion Cat, Small (Cheetah)",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Small Cat",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Cat (Small (Leopard)))",
  SortKey="z_Companion",
  DisplayName="Companion Cat, Small (Leopard)",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Small Cat",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Crocodile (Alligator))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-10"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Crocodile",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=20,
    Swim=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Dog)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Dog",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Horse)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="L",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Horse",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="L",
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Pony)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Hoof",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Pony",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Shark)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=0,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-10"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "Aquatic",
  },
  StartingKitChoices={
    "Companion ~ Shark",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Swim=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Snake (Constrictor))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=0,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-10"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Snake",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
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
})
DefineRace({
  Name="Companion (Snake (Viper))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=0,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-10"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Snake",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
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
})
DefineRace({
  Name="Companion (Cat (Big (Lion)))",
  SortKey="z_Companion",
  DisplayName="Companion Cat, Big (Lion)",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Big Cat",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Cat (Big (Tiger)))",
  SortKey="z_Companion",
  DisplayName="Companion Cat, Big (Tiger)",
  HandCount=3,
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Big Cat",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Deinonychus))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Talons",
      Formula=Formula("2"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "AnimalCompanionDinosaur",
  },
  StartingKitChoices={
    "Companion ~ Dinosaur",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Velociraptor))",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "AnimalCompanionDinosaur",
  },
  StartingKitChoices={
    "Companion ~ Dinosaur",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Wolf)",
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.56",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Wolf",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
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
  SortKey="z_Companion",
  DisplayName="Companion [NAME]",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.232",
  StartingKitCount=1,
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Dire Rat",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
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
})
DefineRace({
  Name="Companion (Shadow)",
  SortKey="z_Companion",
  ChallengeRating="3",
  DisplayName="Companion [NAME]",
  RaceType="Undead",
  Size="M",
  SourcePage="p.245",
  StartingFeats=1,
  StartingKitCount=1,
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
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ChannelResistance",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "Maneuverability",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
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
  RaceSubTypes={
    "Incorporeal",
    "Undead",
  },
  StartingKitChoices={
    "Companion (Shadow)",
  },
  Types={
    "Companion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Fly=40,
  },
  MonsterClass={
    Class="Shadow Companion",
    Level=3,
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
  SortKey="z_Companion",
  DisplayName="Companion Allosaurus",
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.90",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "AnimalCompanionDinosaur",
  },
  StartingKitChoices={
    "Companion ~ Dinosaur (Allosaurus)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Parasaurolophus))",
  SortKey="z_Companion",
  DisplayName="Companion Parasaurolophus",
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.91",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "AnimalCompanionDinosaur",
  },
  StartingKitChoices={
    "Companion ~ Dinosaur (Parasaurolophus)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Dinosaur (Tylosaurus))",
  SortKey="z_Companion",
  DisplayName="Companion Tylosaurus",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.91",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  RaceSubTypes={
    "AnimalCompanionDinosaur",
  },
  StartingKitChoices={
    "Companion ~ Dinosaur (Tylosaurus)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=20,
    Swim=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Gar)",
  SortKey="z_Companion",
  DisplayName="Companion Gar",
  LegCount=0,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.128",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
        "DEX",
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Gar",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Swim=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Herd Animal (Ram))",
  SortKey="z_Companion",
  DisplayName="Companion Ram",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.154",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Herd Animal (Ram)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Hippopotamus)",
  SortKey="z_Companion",
  DisplayName="Companion Hippopotamus",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.157",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return not ((any(character.Templates, function (template) return stringMatch(template.Name, "Hippopotamus Companion Advancement") end)))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Hippopotamus",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Megafauna (Arsinoitherium))",
  SortKey="z_Companion",
  DisplayName="Companion Arsinoitherium",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.186",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return not ((any(character.Templates, function (template) return stringMatch(template.Name, "Arsinoitherium Companion Advancement") end)))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "DEX",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Megafauna (Arsinoitherium)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Megafauna (Gylptodon))",
  SortKey="z_Companion",
  DisplayName="Companion Gylptodon",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.186",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return not ((any(character.Templates, function (template) return stringMatch(template.Name, "Gylptodon Companion Advancement") end)))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
        "DEX",
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Megafauna (Gylptodon)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Megafauna (Megaloceros))",
  SortKey="z_Companion",
  DisplayName="Companion Megaloceros",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.187",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Gore",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Megafauna (Megaloceros)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=50,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Megafauna (Megatherium))",
  SortKey="z_Companion",
  DisplayName="Companion Megatherium",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.187",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Megafauna (Megatherium)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=40,
    Climb=10,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Primate (Baboon))",
  SortKey="z_Companion",
  DisplayName="Companion Baboon",
  LegCount=2,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.212",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "STR",
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Primate (Baboon)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Walk=30,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Ray (Manta))",
  SortKey="z_Companion",
  DisplayName="Companion Manta Ray",
  HandCount=0,
  LegCount=0,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.232",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Ray (Manta)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Swim=60,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Ray (Stingray))",
  SortKey="z_Companion",
  DisplayName="Companion Stingray",
  HandCount=0,
  LegCount=0,
  RaceType="Companion",
  Reach=5,
  Size="S",
  SourcePage="p.232",
  StartingKitCount=1,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Animal Traits Output",
      },
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 4)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "CON",
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Ray (Stingray)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="S",
  },
  Movement={
    Swim=40,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
DefineRace({
  Name="Companion (Turtle (Giant Snapping))",
  SortKey="z_Companion",
  DisplayName="Companion Giant Snapping Turtle",
  LegCount=4,
  RaceType="Companion",
  Reach=5,
  Size="M",
  SourcePage="p.273",
  StartingKitCount=1,
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
        function (character, item, sources)
          return (IsRuleEnabled("DISPLAYTYPETRAITS"))
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
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.Name == "Companion Advancement" then return true end
            return false
          end)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["MasterLevel"] >= 7)
        end,
      },
      Variables={
        "Companion Level Increase Choice",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("0"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-9"),
      Variables={
        "INT",
      },
    },
    {
      Category="STAT",
      Formula=Formula("2"),
      Variables={
        "WIS",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "HasLowLightVision",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "RaceSizeIsLong",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NoTypeTraits",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("max(0,(STR/2))"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["NotAllowed"] >= 1)
    end,
  },
  StartingKitChoices={
    "Companion ~ Turtle (Giant Snapping)",
  },
  Types={
    "Companion",
    "AnimalCompanion",
  },
  Facts={
    BaseSize="M",
  },
  Movement={
    Walk=20,
    Swim=20,
  },
  MonsterClass={
    Class="Companion",
    Level=2,
  },
})
