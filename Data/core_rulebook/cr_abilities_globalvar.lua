-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_abilities_globalvar.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Vision",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceVision"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Defensive Training",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceDefensiveTraining"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Greed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceGreed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Hatred",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceHatred"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Hardy",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceHardy"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Stability",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceStability"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Stonecunning",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceStonecunning"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Weapon Familiarity",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Dwarf_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfDefensiveTraining") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceDefensiveTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfGreed") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceGreed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfHatred") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceHatred",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfHardy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceHardy",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfStability") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceStability",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfStonecunning") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceStonecunning",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfSteady") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfWeaponFamiliarity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfRacialVision") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DwarfLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Dwarf_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "Dwarf_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "Dwarf_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceSpeed"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceVision"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceDefensiveTraining"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceDefensiveTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceGreed"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceGreed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceHatred"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceHatred",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceHardy"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceHardy",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceStability"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceStability",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceStonecunning"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceStonecunning",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceWeaponFamiliarity"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Dwarf_ReplaceLanguages"] == "True"
        end,
      },
      Variables={
        "Dwarf_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Vision",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceVision"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Elven Immunities",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceElvenImmunities"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Elven Magic",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceElvenMagic"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Keen Senses",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Weapon Familiarity",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Elf_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ElfRacialVision") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Elf_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ElfImmunities") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Elf_ReplaceElvenImmunities",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ElfMagic") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Elf_ReplaceElvenMagic",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ElfSenses", "ElfKeenSenses") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Elf_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ElfWeaponFamiliarity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Elf_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ElfRacialLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Elf_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceSpeed"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceVision"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceElvenImmunities"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceElvenImmunities",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceElvenMagic"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceElvenMagic",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceKeenSenses"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Elf_ReplaceLanguages"] == "true"
        end,
      },
      Variables={
        "Elf_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Vision",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceVision"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Defensive Training",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceDefensiveTraining"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Gnome Magic",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceGnomeMagic"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Hatred",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceHatred"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Illusion Resistance",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceIllusionResistance"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Keen Senses",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Obsessive",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceObsessive"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Weapon Familiarity",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Gnome_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeRacialVision") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeDefensiveTraining") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceDefensiveTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeMagic") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceGnomeMagic",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeHatred") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceHatred",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeIllusionResistance") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceIllusionResistance",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeSenses") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeObsessive") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceObsessive",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeWeaponFamiliarity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GnomeRacialLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Gnome_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceSpeed"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceVision"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceDefensiveTraining"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceDefensiveTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceGnomeMagic"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceGnomeMagic",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceHatred"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceHatred",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceIllusionResistance"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceIllusionResistance",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceKeenSenses"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceObsessive"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceObsessive",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Gnome_ReplaceLanguages"] == "true"
        end,
      },
      Variables={
        "Gnome_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Vision",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceVision"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Adaptability",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceAdaptability"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Elf Blood",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceElfBlood"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Elven Immunities",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceElvenImmunities"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Keen Senses",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Multitalented",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceMultitalented"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfElf_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfElfRacialVision") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfElf_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfElfAdaptability") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfElf_ReplaceAdaptability",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfElfImmunities") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfElf_ReplaceElvenImmunities",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfElfSenses") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfElf_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfElfMultitalented") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfElf_ReplaceMultitalented",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfElfRacialLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfElf_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceSpeed"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceVision"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceAdaptability"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceAdaptability",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceElfBlood"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceElfBlood",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceElvenImmunities"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceElvenImmunities",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceKeenSenses"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceMultitalented"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceMultitalented",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfElf_ReplaceLanguages"] == "true"
        end,
      },
      Variables={
        "HalfElf_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Vision",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceVision"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Intimidating",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceIntimidating"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Orc Blood",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceOrcBlood"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Orc Ferocity",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceOrcFerocity"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Weapon Familiarity",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["HalfOrc_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfOrcRacialVision") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfOrc_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfOrcIntimidating") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfOrc_ReplaceIntimidating",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfOrcFerocity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfOrc_ReplaceOrcFerocity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfOrcWeaponFamiliarity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfOrc_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalfOrcRacialLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "HalfOrc_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceSpeed"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceVision"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceVision",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceIntimidating"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceIntimidating",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceOrcBlood"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceOrcBlood",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceOrcFerocity"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceOrcFerocity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceLanguages"] == "true"
        end,
      },
      Variables={
        "HalfOrc_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Fearless",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceFearless"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Halfling Luck",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceHalflingLuck"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Keen Senses",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Sure-Footed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceSureFooted"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Weapon Familiarity",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Halfling_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalflingFearless") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Halfling_ReplaceFearless",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalflingLuck") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Halfling_ReplaceHalflingLuck",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalflingKeenSenses") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Halfling_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalflingSureFooted") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Halfling_ReplaceSureFooted",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalflingWeaponFamiliarity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Halfling_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HalflingRacialLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Halfling_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceSpeed"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceFearless"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceFearless",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceHalflingLuck"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceHalflingLuck",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceKeenSenses"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceKeenSenses",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceSureFooted"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceSureFooted",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceWeaponFamiliarity",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Halfling_ReplaceLanguages"] == "true"
        end,
      },
      Variables={
        "Halfling_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Ability Scores",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Human_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Size",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Human_ReplaceSize"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Speed",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Human_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Bonus Feat",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Human_ReplaceBonusFeat"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Skilled",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Human_ReplaceSkilled"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Languages",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Human_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HumanBonusFeat") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Human_ReplaceBonusFeat",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HumanSkilled") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Human_ReplaceSkilled",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HumanRacialLanguage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Human_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Human_ReplaceAbilityScores"] == "true"
        end,
      },
      Variables={
        "Human_ReplaceAbilityScores",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Human_ReplaceSize"] == "true"
        end,
      },
      Variables={
        "Human_ReplaceSize",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Human_ReplaceSpeed"] == "true"
        end,
      },
      Variables={
        "Human_ReplaceSpeed",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Human_ReplaceBonusFeat"] == "true"
        end,
      },
      Variables={
        "Human_ReplaceBonusFeat",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Human_ReplaceSkilled"] == "true"
        end,
      },
      Variables={
        "Human_ReplaceSkilled",
      },
    },
  },
})
ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Human_ReplaceLanguages"] == "true"
        end,
      },
      Variables={
        "Human_ReplaceLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_Proficiencies"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_ArmorProficiencies"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_Rage"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_Rage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_FastMovement"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_FastMovement",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePowers"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePowers",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower2"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower2",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower4"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower4",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower6"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower6",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower8"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower8",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower10"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower10",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower12"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower12",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower14"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower14",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower16"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower16",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower18"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower18",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower20"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_RagePower20",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense1"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense1",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense2"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense2",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense3"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense3",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense4"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense4",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense5"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense5",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense6"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense6",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction1"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction1",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction2"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction2",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction3"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction3",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction4"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction4",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction5"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction5",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_GreaterRage"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_GreaterRage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_IndomitableWill"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_IndomitableWill",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_TirelessRage"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_TirelessRage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_MightyRage"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_MightyRage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_UncannyDodge"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_UncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_ImprovedUncannyDodge"] == "TRUE"
        end,
      },
      Variables={
        "Barbarian_CF_ImprovedUncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Barbarian_CF_ArmorProficiencies"] == "True"
        end,
      },
      Variables={
        "Barbarian_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianArmorProficiencies", "BarbarianWeaponProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_Rage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianFastMovement") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_FastMovement",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePowers") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePowers",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower2",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower4",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower6") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower6",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower8") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower8",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower10") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower10",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower12") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower12",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower14") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower14",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower16") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower16",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower18") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower18",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianRagePower20") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_RagePower20",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense1") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense1",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense2",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense3") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense3",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense4",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense5") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense5",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTrapSense6") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TrapSense6",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianDamageReduction") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianDamageReduction1") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction1",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianDamageReduction2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction2",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianDamageReduction3") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction3",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianDamageReduction4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction4",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianDamageReduction5") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_DamageReduction5",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianGreaterRage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_GreaterRage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianIndomitableWill") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_IndomitableWill",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianTirelessRage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_TirelessRage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianMightyRage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_MightyRage",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianUncannyDodge") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_UncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianImprovedUncannyDodge") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_ImprovedUncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianClassSkills") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianWeaponProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Barbarian",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BarbarianArmorProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Barbarian_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Abilities={
    {
      Category="Bard Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Bard",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Bard_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Prof ~ Simple",
        "Weapon Proficiencies ~ Bard",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardWeaponProficiencies") then return true end
            return false
          end))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Armor Prof ~ Light",
        "Shield Prof",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardArmorProficiencies") then return true end
            return false
          end))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_BardicKnowledge"] == "True"
        end,
      },
      Variables={
        "Bard_CF_BardicKnowledge",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_CounterSong"] == "True"
        end,
      },
      Variables={
        "Bard_CF_CounterSong",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_BardicPerformance"] == "True"
        end,
      },
      Variables={
        "Bard_CF_BardicPerformance",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_ArmoredCasting"] == "True"
        end,
      },
      Variables={
        "Bard_CF_ArmoredCasting",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_Cantrips"] == "True"
        end,
      },
      Variables={
        "Bard_CF_Cantrips",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_VersatilePerformance"] == "True"
        end,
      },
      Variables={
        "Bard_CF_VersatilePerformance",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_WellVersed"] == "True"
        end,
      },
      Variables={
        "Bard_CF_WellVersed",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_LoreMaster"] == "True"
        end,
      },
      Variables={
        "Bard_CF_LoreMaster",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_JackOfAllTrades"] == "True"
        end,
      },
      Variables={
        "Bard_CF_JackOfAllTrades",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Bard_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_Proficiencies"] == "True"
        end,
      },
      Variables={
        "Bard_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_BardDistraction"] == "True"
        end,
      },
      Variables={
        "Bard_CF_BardDistraction",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_Fascinate"] == "True"
        end,
      },
      Variables={
        "Bard_CF_Fascinate",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCourage",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_Suggestion"] == "True"
        end,
      },
      Variables={
        "Bard_CF_Suggestion",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_DirgeOfDoom"] == "True"
        end,
      },
      Variables={
        "Bard_CF_DirgeOfDoom",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireGreatness"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireGreatness",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_SoothingPerformance"] == "True"
        end,
      },
      Variables={
        "Bard_CF_SoothingPerformance",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_FrighteningTune"] == "True"
        end,
      },
      Variables={
        "Bard_CF_FrighteningTune",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireHeroics"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireHeroics",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_MassSuggestion"] == "True"
        end,
      },
      Variables={
        "Bard_CF_MassSuggestion",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_DeadlyPerformance"] == "True"
        end,
      },
      Variables={
        "Bard_CF_DeadlyPerformance",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage1"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCourage1",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage2"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCourage2",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage3"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCourage3",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage4"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCourage4",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence1"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence1",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence2"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence2",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence3"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence3",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence4"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence4",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence5"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence5",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence6"] == "True"
        end,
      },
      Variables={
        "Bard_CF_InspireCompetence6",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardBardicKnowledge") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_BardicKnowledge",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardCounterSong") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_CounterSong",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardDistraction") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_BardDistraction",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardBardicPerformance") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_BardicPerformance",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardArmoredCasting") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_ArmoredCasting",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardCantrips") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_Cantrips",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardVersatilePerformance") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_VersatilePerformance",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardWellVersed") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_WellVersed",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardLoreMaster") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_LoreMaster",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardJackOfAllTrades") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_JackOfAllTrades",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardClassSkills") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Bard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("BardArmorProficiencies", "BardWeaponProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Bard_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_Proficiencies"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ArmorProficiencies"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_Orisons"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_Orisons",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_SpontaneousCasting"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_SpontaneousCasting",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_Domains"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_Domains",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ArmorProficiency"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ArmorProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_WeaponProficiency"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_WeaponProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_SkillRanks"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_SkillRanks",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_Spellcasting"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_Spellcasting",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy1"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy1",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy2"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy2",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy3"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy3",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy4"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy4",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy5"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy5",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy6"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy6",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy7"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy7",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy8"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy8",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy9"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy9",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy10"] == "True"
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy10",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("ClericChannelEnergy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Cleric_CF_ChannelEnergy",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("ClericOrisons") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Cleric_CF_Orisons",
      },
    },
  },
})
ModifyAbility({
  Name="Cleric",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("ClericSpontaneousCasting") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Cleric_CF_SpontaneousCasting",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Abilities={
    {
      Category="Druid Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Druid",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidArmorProficiencies") then return true end
            return false
          end))
        end,
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWeaponProficiencies") then return true end
            return false
          end))
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Prof",
      },
      Types={
        "ArmorProfMedium",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidArmorProficiencies") then return true end
            return false
          end))
        end,
        function (character, item, sources)
          return (character.Variables["Druid_CF_ArmorProficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Proficiencies ~ Druid",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWeaponProficiencies") then return true end
            return false
          end))
        end,
        function (character, item, sources)
          return (character.Variables["Druid_CF_WeaponProficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_ArmorProficiencies"] == "True"
        end,
      },
      Variables={
        "Druid_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_SpontaneousCasting"] == "True"
        end,
      },
      Variables={
        "Druid_CF_SpontaneousCasting",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_NatureSense"] == "True"
        end,
      },
      Variables={
        "Druid_CF_NatureSense",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildEmpathy"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildEmpathy",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WoodlandStride"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WoodlandStride",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_TracklessStep"] == "True"
        end,
      },
      Variables={
        "Druid_CF_TracklessStep",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShape"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShape",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_ResistNaturesLure"] == "True"
        end,
      },
      Variables={
        "Druid_CF_ResistNaturesLure",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_VenomImmunity"] == "True"
        end,
      },
      Variables={
        "Druid_CF_VenomImmunity",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_AThousandFaces"] == "True"
        end,
      },
      Variables={
        "Druid_CF_AThousandFaces",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_TimelessBody"] == "True"
        end,
      },
      Variables={
        "Druid_CF_TimelessBody",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_NatureBond"] == "True"
        end,
      },
      Variables={
        "Druid_CF_NatureBond",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Druid_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses4"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses4",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses8"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses8",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses10"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses10",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses12"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses12",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses14"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses14",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses16"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses16",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses18"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses18",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses20"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeUses20",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions4"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeOptions4",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions6"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeOptions6",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions8"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeOptions8",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions10"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeOptions10",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions12"] == "True"
        end,
      },
      Variables={
        "Druid_CF_WildShapeOptions12",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_DruidDomain"] == "True"
        end,
      },
      Variables={
        "Druid_CF_DruidDomain",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_AnimalCompanion"] == "True"
        end,
      },
      Variables={
        "Druid_CF_AnimalCompanion",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidSpontaneousCasting") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_SpontaneousCasting",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidNatureSense") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_NatureSense",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWildEmpathy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_WildEmpathy",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWoodlandStride") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_WoodlandStride",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidTracklessStep") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_TracklessStep",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWildShape") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_WildShape",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidResistNaturesLure") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_ResistNaturesLure",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidVenomImmunity") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_VenomImmunity",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidAThousandFaces") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_AThousandFaces",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidTimelessBody") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_TimelessBody",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Druid_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Druid_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWildShape6") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_WildShape6",
      },
    },
  },
})
ModifyAbility({
  Name="Druid",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("DruidWildShape8") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Druid_CF_WildShape8",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_TowerShieldProficiency"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_TowerShieldProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorProficiencies"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_Proficiencies"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_LightArmorProficiency"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_LightArmorProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_MediumArmorProficiency"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_MediumArmorProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_HeavyArmorProficiency"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_HeavyArmorProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ShieldProficiency"] == "true"
        end,
      },
      Variables={
        "Fighter_CF_ShieldProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeats"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_Bravery"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_Bravery",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_WeaponTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining1"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_WeaponTraining1",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining2"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_WeaponTraining2",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining3"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_WeaponTraining3",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining4"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_WeaponTraining4",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorMastery"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ArmorMastery",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponMastery"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_WeaponMastery",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining1"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining1",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining2"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining2",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining3"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining3",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining4"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining4",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat1"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat1",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat2"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat2",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat4"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat4",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat6"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat6",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat8"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat8",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat10"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat12"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat12",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat14"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat14",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat16"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat16",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat18"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat18",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat20"] == "True"
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat20",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeats") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBravery") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_Bravery",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterArmorTraining_ALL") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterWeaponTraining_ALL") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_WeaponTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterArmorMastery") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_ArmorMastery",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterWeaponMastery") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_WeaponMastery",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterArmorTraining1") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining1",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterArmorTraining2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining2",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterArmorTraining3") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining3",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterArmorTraining4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_ArmorTraining4",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat1") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat1",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat2",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat4",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat6") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat6",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat8") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat8",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat10") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat12") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat12",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat14") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat14",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat16") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat16",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat18") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat18",
      },
    },
  },
})
ModifyAbility({
  Name="Fighter",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("FighterBonusFeat20") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Fighter_CF_BonusFeat20",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities1"] == "True"
        end,
      },
      Variables={
        "Monk_CF_KiPoolAbilities1",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities7"] == "True"
        end,
      },
      Variables={
        "Monk_CF_KiPoolAbilities7",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities10"] == "True"
        end,
      },
      Variables={
        "Monk_CF_KiPoolAbilities10",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities16"] == "True"
        end,
      },
      Variables={
        "Monk_CF_KiPoolAbilities16",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall10"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall10",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall20"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall20",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall30"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall30",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall40"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall40",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall50"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall50",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall60"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall60",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall70"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall70",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall80"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall80",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall90"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall90",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Monk_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat18"] == "True"
        end,
      },
      Variables={
        "Monk_CF_BonusFeat18",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat10"] == "True"
        end,
      },
      Variables={
        "Monk_CF_BonusFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat6"] == "True"
        end,
      },
      Variables={
        "Monk_CF_BonusFeat6",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat2"] == "True"
        end,
      },
      Variables={
        "Monk_CF_BonusFeat2",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat1"] == "True"
        end,
      },
      Variables={
        "Monk_CF_BonusFeat1",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_Alignment"] == "True"
        end,
      },
      Variables={
        "Monk_CF_Alignment",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Monk",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Monk_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Proficiencies ~ Monk",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Monk_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_UnarmedStrike"] == "True"
        end,
      },
      Variables={
        "Monk_CF_UnarmedStrike",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_FlurryOfBlows"] == "True"
        end,
      },
      Variables={
        "Monk_CF_FlurryOfBlows",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeats"] == "True"
        end,
      },
      Variables={
        "Monk_CF_BonusFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_ACBonus"] == "True"
        end,
      },
      Variables={
        "Monk_CF_ACBonus",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_StunningFist"] == "True"
        end,
      },
      Variables={
        "Monk_CF_StunningFist",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_Evasion"] == "True"
        end,
      },
      Variables={
        "Monk_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_FastMovement"] == "True"
        end,
      },
      Variables={
        "Monk_CF_FastMovement",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_ManeuverTraining"] == "True"
        end,
      },
      Variables={
        "Monk_CF_ManeuverTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_StillMind"] == "True"
        end,
      },
      Variables={
        "Monk_CF_StillMind",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_KiPool"] == "True"
        end,
      },
      Variables={
        "Monk_CF_KiPool",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall"] == "True"
        end,
      },
      Variables={
        "Monk_CF_SlowFall",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_HighJump"] == "True"
        end,
      },
      Variables={
        "Monk_CF_HighJump",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_PurityOfBody"] == "True"
        end,
      },
      Variables={
        "Monk_CF_PurityOfBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_WholenessOfBody"] == "True"
        end,
      },
      Variables={
        "Monk_CF_WholenessOfBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_ImprovedEvasion"] == "True"
        end,
      },
      Variables={
        "Monk_CF_ImprovedEvasion",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_DiamondBody"] == "True"
        end,
      },
      Variables={
        "Monk_CF_DiamondBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_AbundantStep"] == "True"
        end,
      },
      Variables={
        "Monk_CF_AbundantStep",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_DiamondSoul"] == "True"
        end,
      },
      Variables={
        "Monk_CF_DiamondSoul",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_QuiveringPalm"] == "True"
        end,
      },
      Variables={
        "Monk_CF_QuiveringPalm",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_TongueOfTheSunAndMoon"] == "True"
        end,
      },
      Variables={
        "Monk_CF_TongueOfTheSunAndMoon",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_TimelessBody"] == "True"
        end,
      },
      Variables={
        "Monk_CF_TimelessBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_EmptyBody"] == "True"
        end,
      },
      Variables={
        "Monk_CF_EmptyBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_PerfectSelf"] == "True"
        end,
      },
      Variables={
        "Monk_CF_PerfectSelf",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Monk_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Monk_CF_Proficiencies"] == "True"
        end,
      },
      Variables={
        "Monk_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkFlurryOfBlows") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_FlurryOfBlows",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkBonusFeats") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_BonusFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkACBonus") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_ACBonus",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkStunningFist") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_StunningFist",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkEvasion") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkFastMovement") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_FastMovement",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkManeuverTraining") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_ManeuverTraining",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkStillMind") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_StillMind",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkKiPool") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_KiPool",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkSlowFall") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_SlowFall",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkHighJump") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_HighJump",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkPurityOfBody") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_PurityOfBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkWholenessOfBody") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_WholenessOfBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkImprovedEvasion") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_ImprovedEvasion",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkDiamondBody") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_DiamondBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkAbundantStep") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_AbundantStep",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkDiamondSoul") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_DiamondSoul",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkQuiveringPalm") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_QuiveringPalm",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkTongueOfTheSunAndMoon") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_TongueOfTheSunAndMoon",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkTimelessBody") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_TimelessBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkEmptyBody") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_EmptyBody",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkPerfectSelf") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_PerfectSelf",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkClassSkills") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Monk",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("MonkWeaponProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Monk_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("PaladinLVL"),
      Variables={
        "AlignmentAuraLVL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "AllowHolyAvenger",
      },
    },
    {
      Category="VAR",
      Formula=Formula("PaladinLVL"),
      Variables={
        "HolyAvengerCL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5+PaladinLVL"),
      Variables={
        "HolyAvengerSR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Type={
        Name="Base",
      },
      Variables={
        "Paladin_AuraRange",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Paladin_CF_WeaponProficiencies"] >= 1)
        end,
      },
      Variables={
        "Paladin_CF_WeaponProficiencySimple",
        "Paladin_CF_WeaponProficiencyMartial",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_WeaponProficiencySimple"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_WeaponProficiencySimple",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_WeaponProficiencyMartial"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_WeaponProficiencyMartial",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencies"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Paladin_CF_ArmorProficiencies"] >= 1)
        end,
      },
      Variables={
        "Paladin_CF_ArmorProficiencyHeavy",
        "Paladin_CF_ArmorProficiencyMedium",
        "Paladin_CF_ArmorProficiencyLight",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencyHeavy"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ArmorProficiencyHeavy",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencyMedium"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ArmorProficiencyMedium",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencyLight"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ArmorProficiencyLight",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ShieldProficiency"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ShieldProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfGood"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_AuraOfGood",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_DetectEvil"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_DetectEvil",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_SmiteEvil"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_SmiteEvil",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_DivineGrace"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_DivineGrace",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_LayOnHands"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_LayOnHands",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfCourage"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_AuraOfCourage",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_DivineHealth"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_DivineHealth",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy3"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy3",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy6"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy6",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy9"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy9",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy12"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy12",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy15"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy15",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy18"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Mercy18",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_ChannelPositiveEnergy"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_ChannelPositiveEnergy",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_Spells"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_Spells",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_DivineBond"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_DivineBond",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_BondedMount"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_BondedMount",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_BondedWeapon"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_BondedWeapon",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfResolve"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_AuraOfResolve",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfJustice"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_AuraOfJustice",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfFaith"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_AuraOfFaith",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfRighteousness"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_AuraOfRighteousness",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_HolyChampion"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_HolyChampion",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Paladin_CF_CodeOfConduct"] == "True"
        end,
      },
      Variables={
        "Paladin_CF_CodeOfConduct",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinAuraOfGood") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_AuraOfGood",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinDetectEvil") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_DetectEvil",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinSmiteEvil") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_SmiteEvil",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinDivineGrace") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_DivineGrace",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinLayOnHands") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_LayOnHands",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinAuraOfCourage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_AuraOfCourage",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinDivineHealth") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_DivineHealth",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinMercy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_Mercy",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinChannelPositiveEnergy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_ChannelPositiveEnergy",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinDivineBond") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_DivineBond",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinAuraOfResolve") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_AuraOfResolve",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinAuraOfJustice") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_AuraOfJustice",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinAuraOfFaith") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_AuraOfFaith",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinAuraOfRighteousness") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_AuraOfRighteousness",
      },
    },
  },
})
ModifyAbility({
  Name="Paladin",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("PaladinHolyChampion") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Paladin_CF_HolyChampion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Ranger",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Ranger_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Prof ~ Martial",
        "Weapon Prof ~ Simple",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Ranger_CF_WeaponProficiencies"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Armor Prof ~ Light",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Ranger_CF_LightArmorProficiency"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Armor Prof ~ Medium",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Ranger_CF_MediumArmorProficiency"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Prof",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["Ranger_CF_ShieldProficiency"] == 0)
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Proficiencies"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Proficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_LightArmorProficiency"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_LightArmorProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_MediumArmorProficiency"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_MediumArmorProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_ShieldProficiency"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_ShieldProficiency",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_ImprovedEvasion"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_ImprovedEvasion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_ImprovedQuarry"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_ImprovedQuarry",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat2"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat2",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat6"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat6",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat10"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat14"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat14",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat18"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat18",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy1"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy1",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy2"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy2",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy3"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy3",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy4"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy4",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_AnimalCompanion"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_AnimalCompanion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_HuntersBond"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_HuntersBond",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredTerrain"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_FavoredTerrain",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Track"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Track",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_WildEmpathy"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_WildEmpathy",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_WoodlandStride"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_WoodlandStride",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_SwiftTracker"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_SwiftTracker",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Evasion"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Quarry"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Quarry",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Camouflage"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Camouflage",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Evasion"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_HideInPlainSight"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_HideInPlainSight",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Quarry"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Quarry",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_MasterHunter"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_MasterHunter",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Ranger_CF_Endurance"] == "True"
        end,
      },
      Variables={
        "Ranger_CF_Endurance",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerHuntersBond") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_HuntersBond",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerFavoredEnemy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerFavoredTerrain") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_FavoredTerrain",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerTrack") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Track",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerWildEmpathy") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_WildEmpathy",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCombatStyle") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerWoodlandStride") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_WoodlandStride",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerSwiftTracker") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_SwiftTracker",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerEvasion") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerQuarry") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Quarry",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCamoflage", "RangerCamouflage") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Camouflage",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerEvasion") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerHideInPlainSight") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_HideInPlainSight",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerQuarry") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Quarry",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerMasterHunter") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_MasterHunter",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerEndurance") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_Endurance",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCombatStyleFeat2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat2",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCombatStyleFeat6") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat6",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCombatStyleFeat10") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCombatStyleFeat14") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat14",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerCombatStyleFeat18") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_CombatStyleFeat18",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerFavoredEnemy1") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy1",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerFavoredEnemy2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy2",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerFavoredEnemy3") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy3",
      },
    },
  },
})
ModifyAbility({
  Name="Ranger",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RangerFavoredEnemy4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Ranger_CF_FavoredEnemy4",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense1"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense1",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense2"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense2",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense3"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense3",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense4"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense4",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense5"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense5",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense6"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense6",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_AdvancedTalents"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_AdvancedTalents",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent2"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent2",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent4"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent4",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent6"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent6",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent8"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent8",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent10"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent10",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent12"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent12",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent14"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent14",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent16"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent16",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent18"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent18",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent20"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent20",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack1"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack1",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack3"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack3",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack5"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack5",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack7"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack7",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack9"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack9",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack11"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack11",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack13"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack13",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack15"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack15",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack17"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack17",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack19"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack19",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_UncannyDodge"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_UncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_ImprovedUncannyDodge"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_ImprovedUncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_Trapfinding"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_Trapfinding",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_Evasion"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalents"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_RogueTalents",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_TrapSense",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_MasterStrike"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_MasterStrike",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Rogue_CF_ArmorProficiencies"] == "True"
        end,
      },
      Variables={
        "Rogue_CF_ArmorProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueUncannyDodge") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_UncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueImprovedUncannyDodge") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_ImprovedUncannyDodge",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueSneakAttack") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_SneakAttack",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTrapfinding") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_Trapfinding",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueEvasion") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_Evasion",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalents") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalents",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTrapSense") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_TrapSense",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueMasterStrike") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_MasterStrike",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent2") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent2",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent4") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent4",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent6") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent6",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent8") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent8",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent10") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent10",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent12") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent12",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent14") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent14",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent16") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent16",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent18") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent18",
      },
    },
  },
})
ModifyAbility({
  Name="Rogue",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("RogueTalent20") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Rogue_CF_RogueTalent20",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineArcana"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineArcana",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePowers"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlinePowers",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower1"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlinePower1",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower3"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlinePower3",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower9"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlinePower9",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower15"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlinePower15",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower20"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlinePower20",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineFeats"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_EschewMaterials"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_EschewMaterials",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpells"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpells",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell1"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell1",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell2"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell2",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell3"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell3",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell4"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell4",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell5"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell5",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell6"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell6",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell7"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell7",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell8"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell8",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell9"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineSpell9",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_Bloodline"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_Bloodline",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineClassSkill"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_BloodlineClassSkill",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_Spells"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_Spells",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Sorcerer_CF_Cantrips"] == "True"
        end,
      },
      Variables={
        "Sorcerer_CF_Cantrips",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("SorcererWeaponProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Sorcerer_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("SorcererEschewMaterials") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Sorcerer_CF_EschewMaterials",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ClassSkills"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ClassSkills",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ArcaneSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ArcaneSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_WeaponProficiencies"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_Spells"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_Spells",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BonusLanguages"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BonusLanguages",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ScribeScroll"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ScribeScroll",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ArcaneBond"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ArcaneBond",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_Cantrips"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_Cantrips",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeats"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BonusFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_SpellBook"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_SpellBook",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_Familiar"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_Familiar",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BondedObject"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BondedObject",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat5"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat5",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat10"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat15"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat15",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat20"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat20",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardArcaneSchool") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_ArcaneSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardWeaponProficiencies") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_WeaponProficiencies",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardScribeScroll") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_ScribeScroll",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardArcaneBond") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_ArcaneBond",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardCantrips") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_Cantrips",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardBonusFeats") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_BonusFeats",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardSpellBook") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_SpellBook",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardBonusFeat5") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat5",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardBonusFeat10") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat10",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardBonusFeat15") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat15",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "Archetype" then return false end
            if ability.IsAnyType("WizardBonusFeat20") then return true end
            return false
          end)
        end,
      },
      Variables={
        "Wizard_CF_BonusFeat20",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_AbjurationOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_AbjurationOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ConjurationOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ConjurationOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_DivinationOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_DivinationOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_EnchantmentOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_EnchantmentOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_EvocationOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_EvocationOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_IllusionOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_IllusionOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_NecromancyOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_NecromancyOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_TransmutationOppositionSchool"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_TransmutationOppositionSchool",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_SchoolPower1"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_SchoolPower1",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_SchoolPower8"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_SchoolPower8",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_AcidDart"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_AcidDart",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_AuraOfDespair"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_AuraOfDespair",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_BlindingRay"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_BlindingRay",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ChangeShape"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ChangeShape",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_DazingTouch"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_DazingTouch",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_DimensionalSteps"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_DimensionalSteps",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_DivinersFortune"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_DivinersFortune",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ElementalWall"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ElementalWall",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_EnchantingSmile"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_EnchantingSmile",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_EnergyAbsorption"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_EnergyAbsorption",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ExtendedIllusion"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ExtendedIllusion",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ForceMissile"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ForceMissile",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_Forwarned"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_Forwarned",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_GraveTouch"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_GraveTouch",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_HandOfTheApprentice"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_HandOfTheApprentice",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_IntenseSpells"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_IntenseSpells",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_InvisibilityField"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_InvisibilityField",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_LifeSight"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_LifeSight",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_MetamagicMastery"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_MetamagicMastery",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_PhysicalEnhancement"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_PhysicalEnhancement",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_PowerOverUndead"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_PowerOverUndead",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ProtectiveWard"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ProtectiveWard",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_Resistance"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_Resistance",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_ScryingAdept"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_ScryingAdept",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_SummonersCharm"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_SummonersCharm",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Conditions={
        function (character, item, sources)
          return character.Facts["ABILITY"]["Wizard_CF_TelekineticFist"] == "True"
        end,
      },
      Variables={
        "Wizard_CF_TelekineticFist",
      },
    },
  },
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
ModifyAbility({
  Name="Wizard",
  Category="Class",
})
