-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_abilities_familiar_race_um.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Ultimate Magic",
  SourceShort="UM",
  SourceWeb="http://paizo.com/pathfinderRPG/v5748btpy8g7s",
  SourceDate="2011-05",
})
DefineAbility({
  Name="Ink Cloud",
  Key="Blue-Ringed Octopus ~ Ink Cloud",
  Category="Special Ability",
  Description={
    Format="While within water, an octopus can emit a 5-foot-radius sphere of ink once per minute as a swift action. This ink provides total concealment and persists for 1 minute.",
  },
  SourcePage="p.117",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Jet",
  Key="Blue-Ringed Octopus ~ Jet",
  Category="Special Ability",
  Description={
    Format="The octopus can jet 60 feet in a straight line as a full-round action.  This does not provoke attacks of opportunity.",
  },
  SourcePage="p.117",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Poison",
  Key="Blue-Ringed Octopus ~ Poison",
  Category="Special Ability",
  Description={
    Format="Bite - injury; save Fort DC %1; frequency 1/round for 6 rounds; effect 1 Str; cure 1 save.",
    Arguments={
      Formula("PoisonSaveDC"),
    },
  },
  SourcePage="p.117",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Poison",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Poison)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "PoisonSaveDC",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Poison",
  Key="Greensting Scorpion ~ Poison",
  Category="Special Ability",
  Description={
    Format="Sting - injury; save Fort DC %1; frequency 1/round for 6 rounds; effect sickened for 1 round; cure 1 save.",
    Arguments={
      Formula("PoisonSaveDC"),
    },
  },
  SourcePage="p.118",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Poison",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Poison)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "PoisonSaveDC",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Spiny Defense",
  Key="Hedgehog ~ Spiny Defense",
  Category="Special Ability",
  Description={
    Format="As a move action, a hedgehog can roll itself up into a spiny ball. While rolled up, it gains a +1 enhancement bonus to its existing natural armor, and any creature attempting to grapple the hedgehog takes 1d3 damage on making a grapple check. While rolled up, a hedgehog cannot take any action other than leaving this state. The hedgehog can leave this state as a move action.",
  },
  SourcePage="p.119",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Poison",
  Key="House Centipede ~ Poison",
  Category="Special Ability",
  Description={
    Format="Bite - injury; save Fort DC %1; frequency 1/round for 2 rounds; effect daze 1 round; cure 1 save.",
    Arguments={
      Formula("PoisonSaveDC"),
    },
  },
  SourcePage="p.119",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Poison",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Poison)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "PoisonSaveDC",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Water Dependency",
  Key="King Crab ~ Water Dependency",
  Category="Special Ability",
  Description={
    Format="This crab can survive out of the water for %1 hours.  Beyond this limit, a crab runs the risk of suffocation, as if it were drowning.",
    Arguments={
      Formula("CONSCORE"),
    },
  },
  SourcePage="p.119",
  Types={
    "Weakness",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Poison",
  Key="Scarlet Spider ~ Poison",
  Category="Special Ability",
  Description={
    Format="Bite - injury; save Fort DC %1; frequency 1/round for 4 rounds; effect 1 Str; cure 1 save.",
    Arguments={
      Formula("PoisonSaveDC"),
    },
  },
  SourcePage="p.120",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Poison",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Poison)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "PoisonSaveDC",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Shell Retreat",
  Key="Turtle ~ Shell Retreat",
  Category="Special Ability",
  Description={
    Format="A turtle can retreat within its shell as a swift action, gaining a +2 enhancement bonus to its existing natural armor. While in its shell, a turtle cannot take any action except to end the retreat. The turtle can end its retreat with a free action on its turn.",
  },
  SourcePage="p.120",
  Types={
    "SpecialQuality",
    "Extraordinary",
  },
})
