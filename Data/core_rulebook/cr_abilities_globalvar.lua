-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_abilities_globalvar.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceVision",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceVision"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceDefensiveTraining",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Defensive Training",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceDefensiveTraining"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceGreed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Greed",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceGreed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceHatred",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Hatred",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceHatred"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceHardy",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Hardy",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceHardy"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceStability",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Stability",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceStability"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceStonecunning",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Stonecunning",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceStonecunning"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceWeaponFamiliarity",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Weapon Familiarity",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Dwarf_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Dwarf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Dwarf ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["Dwarf_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceDefensiveTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfDefensiveTraining")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceGreed",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfGreed")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceHatred",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfHatred")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceHardy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfHardy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceStability",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfStability")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceStonecunning",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfStonecunning")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfSteady")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfWeaponFamiliarity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfRacialVision")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "DwarfLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceSpeed"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceVision"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceDefensiveTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceDefensiveTraining"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceGreed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceGreed"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceHatred",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceHatred"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceHardy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceHardy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceStability",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceStability"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceStonecunning",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceStonecunning"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceWeaponFamiliarity"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Dwarf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Dwarf_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Dwarf_ReplaceLanguages"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceVision",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceVision"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceElvenImmunities",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Elven Immunities",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceElvenImmunities"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceElvenMagic",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Elven Magic",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceElvenMagic"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceKeenSenses",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Keen Senses",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceWeaponFamiliarity",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Weapon Familiarity",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Elf_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Elf ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["Elf_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "ElfRacialVision")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceElvenImmunities",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "ElfImmunities")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceElvenMagic",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "ElfMagic")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "ElfSenses" or ability.Type == "ElfKeenSenses")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "ElfWeaponFamiliarity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "ElfRacialLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceSpeed"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceVision"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceElvenImmunities",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceElvenImmunities"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceElvenMagic",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceElvenMagic"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceKeenSenses"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Elf_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Elf_ReplaceLanguages"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceVision",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceVision"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceDefensiveTraining",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Defensive Training",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceDefensiveTraining"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceGnomeMagic",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Gnome Magic",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceGnomeMagic"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceHatred",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Hatred",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceHatred"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceIllusionResistance",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Illusion Resistance",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceIllusionResistance"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceKeenSenses",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Keen Senses",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceObsessive",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Obsessive",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceObsessive"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceWeaponFamiliarity",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Weapon Familiarity",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Gnome_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Gnome Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Gnome ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["Gnome_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeRacialVision")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceDefensiveTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeDefensiveTraining")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceGnomeMagic",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeMagic")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceHatred",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeHatred")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceIllusionResistance",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeIllusionResistance")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeSenses")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceObsessive",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeObsessive")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeWeaponFamiliarity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "GnomeRacialLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceSpeed"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceVision"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceDefensiveTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceDefensiveTraining"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceGnomeMagic",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceGnomeMagic"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceHatred",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceHatred"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceIllusionResistance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceIllusionResistance"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceKeenSenses"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceObsessive",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceObsessive"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Gnome",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Gnome_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Gnome_ReplaceLanguages"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceVision",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceVision"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceAdaptability",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Adaptability",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceAdaptability"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceElfBlood",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Elf Blood",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceElfBlood"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceElvenImmunities",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Elven Immunities",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceElvenImmunities"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceKeenSenses",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Keen Senses",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceMultitalented",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Multitalented",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceMultitalented"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfElf_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Elf Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Elf ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfElf_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfElfRacialVision")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceAdaptability",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfElfAdaptability")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceElvenImmunities",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfElfImmunities")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfElfSenses")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceMultitalented",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfElfMultitalented")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfElfRacialLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceSpeed"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceVision"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceAdaptability",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceAdaptability"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceElfBlood",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceElfBlood"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceElvenImmunities",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceElvenImmunities"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceKeenSenses"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceMultitalented",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceMultitalented"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Elf",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfElf_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfElf_ReplaceLanguages"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceVision",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Vision",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceVision"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceIntimidating",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Intimidating",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceIntimidating"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceOrcBlood",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Orc Blood",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceOrcBlood"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceOrcFerocity",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Orc Ferocity",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceOrcFerocity"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceWeaponFamiliarity",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Weapon Familiarity",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="HalfOrc_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Half-Orc Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Half-Orc ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["HalfOrc_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfOrcRacialVision")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceIntimidating",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfOrcIntimidating")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceOrcFerocity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfOrcFerocity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfOrcWeaponFamiliarity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalfOrcRacialLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceSpeed"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceVision",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceVision"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceIntimidating",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceIntimidating"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceOrcBlood",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceOrcBlood"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceOrcFerocity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceOrcFerocity"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Half-Orc",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HalfOrc_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["HalfOrc_ReplaceLanguages"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceFearless",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Fearless",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceFearless"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceHalflingLuck",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Halfling Luck",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceHalflingLuck"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceKeenSenses",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Keen Senses",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceKeenSenses"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceSureFooted",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Sure-Footed",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceSureFooted"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceWeaponFamiliarity",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Weapon Familiarity",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceWeaponFamiliarity"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Halfling_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Halfling Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Halfling ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["Halfling_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceFearless",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalflingFearless")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceHalflingLuck",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalflingLuck")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalflingKeenSenses")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceSureFooted",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalflingSureFooted")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalflingWeaponFamiliarity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HalflingRacialLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceSpeed"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceFearless",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceFearless"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceHalflingLuck",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceHalflingLuck"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceKeenSenses",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceKeenSenses"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceSureFooted",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceSureFooted"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceWeaponFamiliarity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceWeaponFamiliarity"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Halfling",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Halfling_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Halfling_ReplaceLanguages"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Human_ReplaceAbilityScores",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Ability Scores",
      },
      Conditions={
        function (character)
          return (character.Variables["Human_ReplaceAbilityScores"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Human_ReplaceSize",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Size",
      },
      Conditions={
        function (character)
          return (character.Variables["Human_ReplaceSize"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Human_ReplaceSpeed",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Speed",
      },
      Conditions={
        function (character)
          return (character.Variables["Human_ReplaceSpeed"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Human_ReplaceBonusFeat",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Bonus Feat",
      },
      Conditions={
        function (character)
          return (character.Variables["Human_ReplaceBonusFeat"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Human_ReplaceSkilled",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Skilled",
      },
      Conditions={
        function (character)
          return (character.Variables["Human_ReplaceSkilled"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Human_ReplaceLanguages",
      InitialValue="0",
    },
  },
  Abilities={
    {
      Category="Human Racial Trait",
      Nature="AUTOMATIC",
      Names={
        "Human ~ Languages",
      },
      Conditions={
        function (character)
          return (character.Variables["Human_ReplaceLanguages"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceBonusFeat",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HumanBonusFeat")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceSkilled",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HumanSkilled")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Type == "HumanRacialLanguage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceAbilityScores",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Human_ReplaceAbilityScores"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceSize",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Human_ReplaceSize"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceSpeed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Human_ReplaceSpeed"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceBonusFeat",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Human_ReplaceBonusFeat"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceSkilled",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Human_ReplaceSkilled"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Racial Traits ~ Human",
  Category="Internal",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Human_ReplaceLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Human_ReplaceLanguages"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_Rage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_FastMovement",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePowers",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower12",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower14",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower16",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_RagePower20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TrapSense6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_DamageReduction",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_DamageReduction1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_DamageReduction2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_DamageReduction3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_DamageReduction4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_DamageReduction5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_GreaterRage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_IndomitableWill",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_TirelessRage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_MightyRage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_Proficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_UncannyDodge",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_ImprovedUncannyDodge",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Barbarian_CF_ArmorProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_Proficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_ArmorProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_Rage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_Rage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_FastMovement",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_FastMovement"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePowers",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePowers"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower12",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower12"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower14",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower14"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower16",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower16"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_RagePower20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TrapSense6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_DamageReduction5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_GreaterRage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_GreaterRage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_IndomitableWill",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_IndomitableWill"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TirelessRage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_TirelessRage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_MightyRage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_MightyRage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_UncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_UncannyDodge"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ImprovedUncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_ImprovedUncannyDodge"] == "TRUE"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Barbarian_CF_ArmorProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianArmorProficiencies" or ability.Type == "BarbarianWeaponProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_Rage",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_FastMovement",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianFastMovement")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePowers",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePowers")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower6",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower6")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower8",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower8")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower10",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower10")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower12",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower12")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower14",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower14")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower16",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower16")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower18",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower18")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_RagePower20",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianRagePower20")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense1",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense1")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense3",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense3")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense5",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense5")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TrapSense6",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTrapSense6")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianDamageReduction")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction1",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianDamageReduction1")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianDamageReduction2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction3",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianDamageReduction3")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianDamageReduction4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_DamageReduction5",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianDamageReduction5")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_GreaterRage",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianGreaterRage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_IndomitableWill",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianIndomitableWill")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_TirelessRage",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianTirelessRage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_MightyRage",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianMightyRage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_UncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianUncannyDodge")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ImprovedUncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianImprovedUncannyDodge")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianClassSkills")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianWeaponProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Barbarian",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Barbarian_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BarbarianArmorProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Bard Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Bard",
      },
      Conditions={
        function (character)
          return (character.Variables["Bard_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Prof ~ Simple",
        "Weapon Proficiencies ~ Bard",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardWeaponProficiencies")
          end))
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Armor Prof ~ Light",
        "Shield Prof",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardArmorProficiencies")
          end))
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_BardicKnowledge",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_CounterSong",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_BardicPerformance",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_ArmoredCasting",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_Cantrips",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_VersatilePerformance",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_WellVersed",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_LoreMaster",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_JackOfAllTrades",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_Proficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_BardDistraction",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_Fascinate",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCourage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_Suggestion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_DirgeOfDoom",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireGreatness",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_SoothingPerformance",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_FrighteningTune",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireHeroics",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_MassSuggestion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_DeadlyPerformance",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCourage1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCourage2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCourage3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCourage4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Bard_CF_InspireCompetence6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_BardicKnowledge",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_BardicKnowledge"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_CounterSong",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_CounterSong"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_BardicPerformance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_BardicPerformance"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_ArmoredCasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_ArmoredCasting"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_Cantrips",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_Cantrips"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_VersatilePerformance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_VersatilePerformance"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_WellVersed",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_WellVersed"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_LoreMaster",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_LoreMaster"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_JackOfAllTrades",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_JackOfAllTrades"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_Proficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_BardDistraction",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_BardDistraction"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_Fascinate",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_Fascinate"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCourage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_Suggestion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_Suggestion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_DirgeOfDoom",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_DirgeOfDoom"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireGreatness",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireGreatness"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_SoothingPerformance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_SoothingPerformance"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_FrighteningTune",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_FrighteningTune"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireHeroics",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireHeroics"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_MassSuggestion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_MassSuggestion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_DeadlyPerformance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_DeadlyPerformance"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCourage1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCourage2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCourage3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCourage4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCourage4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_InspireCompetence6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Bard_CF_InspireCompetence6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_BardicKnowledge",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardBardicKnowledge")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_CounterSong",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardCounterSong")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_BardDistraction",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardDistraction")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_BardicPerformance",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardBardicPerformance")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_ArmoredCasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardArmoredCasting")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_Cantrips",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardCantrips")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_VersatilePerformance",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardVersatilePerformance")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_WellVersed",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardWellVersed")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_LoreMaster",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardLoreMaster")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_JackOfAllTrades",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardJackOfAllTrades")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardClassSkills")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Bard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Bard_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "BardArmorProficiencies" or ability.Type == "BardWeaponProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_Orisons",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_SpontaneousCasting",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_Proficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ArmorProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_Domains",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ArmorProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_WeaponProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_SkillRanks",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_Spellcasting",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy7",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy9",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Cleric_CF_ChannelEnergy10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_Proficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ArmorProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_Orisons",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_Orisons"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_SpontaneousCasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_SpontaneousCasting"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_Domains",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_Domains"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ArmorProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ArmorProficiency"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_WeaponProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_WeaponProficiency"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_SkillRanks",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_SkillRanks"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_Spellcasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_Spellcasting"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy7",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy7"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy9",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy9"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Cleric_CF_ChannelEnergy10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_ChannelEnergy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "ClericChannelEnergy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_Orisons",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "ClericOrisons")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Cleric",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Cleric_CF_SpontaneousCasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "ClericSpontaneousCasting")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Druid Class Feature",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Druid",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidArmorProficiencies")
          end))
        end,
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWeaponProficiencies")
          end))
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
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
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidArmorProficiencies")
          end))
        end,
        function (character)
          return (character.Variables["Druid_CF_ArmorProficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Proficiencies ~ Druid",
      },
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWeaponProficiencies")
          end))
        end,
        function (character)
          return (character.Variables["Druid_CF_WeaponProficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_ArmorProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_SpontaneousCasting",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_NatureSense",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildEmpathy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WoodlandStride",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_TracklessStep",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShape",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_ResistNaturesLure",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_VenomImmunity",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_AThousandFaces",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_TimelessBody",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_NatureBond",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses12",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses14",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses16",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeUses20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeOptions4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeOptions6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeOptions8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeOptions10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_WildShapeOptions12",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_DruidDomain",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Druid_CF_AnimalCompanion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_ArmorProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_SpontaneousCasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_SpontaneousCasting"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_NatureSense",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_NatureSense"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildEmpathy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildEmpathy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WoodlandStride",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WoodlandStride"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_TracklessStep",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_TracklessStep"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShape",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShape"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_ResistNaturesLure",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_ResistNaturesLure"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_VenomImmunity",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_VenomImmunity"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_AThousandFaces",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_AThousandFaces"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_TimelessBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_TimelessBody"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_NatureBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_NatureBond"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses12",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses12"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses14",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses14"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses16",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses16"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeUses20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeUses20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeOptions4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeOptions6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeOptions8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeOptions10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShapeOptions12",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_WildShapeOptions12"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_DruidDomain",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_DruidDomain"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_AnimalCompanion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_AnimalCompanion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_SpontaneousCasting",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidSpontaneousCasting")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_NatureSense",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidNatureSense")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildEmpathy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWildEmpathy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WoodlandStride",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWoodlandStride")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_TracklessStep",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidTracklessStep")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShape",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWildShape")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_ResistNaturesLure",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidResistNaturesLure")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_VenomImmunity",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidVenomImmunity")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_AThousandFaces",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidAThousandFaces")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_TimelessBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidTimelessBody")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Druid_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShape6",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWildShape6")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Druid",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Druid_CF_WildShape8",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "DruidWildShape8")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeats",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_Bravery",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorTraining",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_WeaponTraining",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_WeaponTraining1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_WeaponTraining2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_WeaponTraining3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_WeaponTraining4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorMastery",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_WeaponMastery",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorTraining1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorTraining2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorTraining3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorTraining4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat12",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat14",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat16",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_BonusFeat20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_TowerShieldProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ArmorProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_Proficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_LightArmorProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_MediumArmorProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_HeavyArmorProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Fighter_CF_ShieldProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_TowerShieldProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_TowerShieldProficiency"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorProficiencies"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_Proficiencies"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_LightArmorProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_LightArmorProficiency"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_MediumArmorProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_MediumArmorProficiency"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_HeavyArmorProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_HeavyArmorProficiency"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ShieldProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ShieldProficiency"] == "true"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeats"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_Bravery",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_Bravery"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponTraining1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponTraining2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponTraining3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponTraining4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponTraining4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorMastery",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorMastery"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponMastery",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_WeaponMastery"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_ArmorTraining4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat12",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat12"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat14",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat14"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat16",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat16"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Fighter_CF_BonusFeat20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeats")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_Bravery",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBravery")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterArmorTraining_ALL")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterWeaponTraining_ALL")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorMastery",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterArmorMastery")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_WeaponMastery",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterWeaponMastery")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining1",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterArmorTraining1")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterArmorTraining2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining3",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterArmorTraining3")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_ArmorTraining4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterArmorTraining4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat1",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat1")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat6",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat6")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat8",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat8")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat10")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat12",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat12")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat14",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat14")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat16",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat16")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat18",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat18")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Fighter",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Fighter_CF_BonusFeat20",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "FighterBonusFeat20")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_UnarmedStrike",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_FlurryOfBlows",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_BonusFeats",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_ACBonus",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_StunningFist",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_Evasion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_FastMovement",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_ManeuverTraining",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_StillMind",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_KiPool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_HighJump",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_PurityOfBody",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_WholenessOfBody",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_ImprovedEvasion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_DiamondBody",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_AbundantStep",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_DiamondSoul",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_QuiveringPalm",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_TongueOfTheSunAndMoon",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_TimelessBody",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_EmptyBody",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_PerfectSelf",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_Proficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_BonusFeat18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_BonusFeat10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_BonusFeat6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_BonusFeat2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_BonusFeat1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_Alignment",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall30",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall40",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall50",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall60",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall70",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall80",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_SlowFall90",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_KiPoolAbilities1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_KiPoolAbilities7",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_KiPoolAbilities10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Monk_CF_KiPoolAbilities16",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_KiPoolAbilities1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_KiPoolAbilities7",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities7"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_KiPoolAbilities10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_KiPoolAbilities16",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_KiPoolAbilities16"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall30",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall30"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall40",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall40"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall50",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall50"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall60",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall60"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall70",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall70"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall80",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall80"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall90",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall90"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeat18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeat6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeat2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeat1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeat1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_Alignment",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_Alignment"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Monk",
      },
      Conditions={
        function (character)
          return (character.Variables["Monk_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Proficiencies ~ Monk",
      },
      Conditions={
        function (character)
          return (character.Variables["Monk_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_UnarmedStrike",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_UnarmedStrike"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_FlurryOfBlows",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_FlurryOfBlows"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_BonusFeats"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ACBonus",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_ACBonus"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_StunningFist",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_StunningFist"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_Evasion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_FastMovement",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_FastMovement"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ManeuverTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_ManeuverTraining"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_StillMind",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_StillMind"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_KiPool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_KiPool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_SlowFall"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_HighJump",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_HighJump"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_PurityOfBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_PurityOfBody"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_WholenessOfBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_WholenessOfBody"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ImprovedEvasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_ImprovedEvasion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_DiamondBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_DiamondBody"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_AbundantStep",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_AbundantStep"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_DiamondSoul",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_DiamondSoul"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_QuiveringPalm",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_QuiveringPalm"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_TongueOfTheSunAndMoon",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_TongueOfTheSunAndMoon"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_TimelessBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_TimelessBody"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_EmptyBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_EmptyBody"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_PerfectSelf",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_PerfectSelf"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Monk_CF_Proficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_FlurryOfBlows",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkFlurryOfBlows")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_BonusFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkBonusFeats")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ACBonus",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkACBonus")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_StunningFist",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkStunningFist")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkEvasion")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_FastMovement",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkFastMovement")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ManeuverTraining",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkManeuverTraining")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_StillMind",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkStillMind")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_KiPool",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkKiPool")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_SlowFall",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkSlowFall")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_HighJump",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkHighJump")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_PurityOfBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkPurityOfBody")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_WholenessOfBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkWholenessOfBody")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ImprovedEvasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkImprovedEvasion")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_DiamondBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkDiamondBody")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_AbundantStep",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkAbundantStep")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_DiamondSoul",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkDiamondSoul")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_QuiveringPalm",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkQuiveringPalm")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_TongueOfTheSunAndMoon",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkTongueOfTheSunAndMoon")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_TimelessBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkTimelessBody")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_EmptyBody",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkEmptyBody")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_PerfectSelf",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkPerfectSelf")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkClassSkills")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Monk",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Monk_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "MonkWeaponProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_WeaponProficiencySimple",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_WeaponProficiencyMartial",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ArmorProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ArmorProficiencyHeavy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ArmorProficiencyMedium",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ArmorProficiencyLight",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ShieldProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_AuraOfGood",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_DetectEvil",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_SmiteEvil",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_DivineGrace",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_LayOnHands",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_AuraOfCourage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_DivineHealth",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy9",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy12",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy15",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Mercy18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_ChannelPositiveEnergy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_Spells",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_DivineBond",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_BondedMount",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_BondedWeapon",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_AuraOfResolve",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_AuraOfJustice",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_AuraOfFaith",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_AuraOfRighteousness",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_HolyChampion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Paladin_CF_CodeOfConduct",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="AllowHolyAvenger",
      InitialValue="0",
    },
    {
      Name="HolyAvengerCL",
      InitialValue="0",
    },
    {
      Name="HolyAvengerSR",
      InitialValue="0",
    },
    {
      Name="Paladin_AuraRange",
      InitialValue="0",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "AlignmentAuraLVL",
      },
      Formula="PaladinLVL",
    },
    {
      Category="VAR",
      Variables={
        "AllowHolyAvenger",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "HolyAvengerCL",
      },
      Formula="PaladinLVL",
    },
    {
      Category="VAR",
      Variables={
        "HolyAvengerSR",
      },
      Formula="5+PaladinLVL",
    },
    {
      Category="VAR",
      Variables={
        "Paladin_AuraRange",
      },
      Formula="10",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_WeaponProficiencySimple",
        "Paladin_CF_WeaponProficiencyMartial",
      },
      Formula="1",
      Conditions={
        function (character)
          return (character.Variables["Paladin_CF_WeaponProficiencies"] >= 1)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_WeaponProficiencySimple",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_WeaponProficiencySimple"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_WeaponProficiencyMartial",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_WeaponProficiencyMartial"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ArmorProficiencyHeavy",
        "Paladin_CF_ArmorProficiencyMedium",
        "Paladin_CF_ArmorProficiencyLight",
      },
      Formula="1",
      Conditions={
        function (character)
          return (character.Variables["Paladin_CF_ArmorProficiencies"] >= 1)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ArmorProficiencyHeavy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencyHeavy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ArmorProficiencyMedium",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencyMedium"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ArmorProficiencyLight",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ArmorProficiencyLight"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ShieldProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ShieldProficiency"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfGood",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfGood"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DetectEvil",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_DetectEvil"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_SmiteEvil",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_SmiteEvil"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DivineGrace",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_DivineGrace"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_LayOnHands",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_LayOnHands"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfCourage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfCourage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DivineHealth",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_DivineHealth"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy9",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy9"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy12",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy12"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy15",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy15"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Mercy18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ChannelPositiveEnergy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_ChannelPositiveEnergy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Spells",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_Spells"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DivineBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_DivineBond"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_BondedMount",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_BondedMount"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_BondedWeapon",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_BondedWeapon"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfResolve",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfResolve"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfJustice",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfJustice"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfFaith",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfFaith"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfRighteousness",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_AuraOfRighteousness"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_HolyChampion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_HolyChampion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_CodeOfConduct",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Paladin_CF_CodeOfConduct"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfGood",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinAuraOfGood")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DetectEvil",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinDetectEvil")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_SmiteEvil",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinSmiteEvil")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DivineGrace",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinDivineGrace")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_LayOnHands",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinLayOnHands")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfCourage",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinAuraOfCourage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DivineHealth",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinDivineHealth")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_Mercy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinMercy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_ChannelPositiveEnergy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinChannelPositiveEnergy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_DivineBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinDivineBond")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfResolve",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinAuraOfResolve")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfJustice",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinAuraOfJustice")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfFaith",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinAuraOfFaith")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_AuraOfRighteousness",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinAuraOfRighteousness")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Paladin",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Paladin_CF_HolyChampion",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "PaladinHolyChampion")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Weapon and Armor Proficiency ~ Ranger",
      },
      Conditions={
        function (character)
          return (character.Variables["Ranger_CF_Proficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Prof ~ Martial",
        "Weapon Prof ~ Simple",
      },
      Conditions={
        function (character)
          return (character.Variables["Ranger_CF_WeaponProficiencies"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Armor Prof ~ Light",
      },
      Conditions={
        function (character)
          return (character.Variables["Ranger_CF_LightArmorProficiency"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Armor Prof ~ Medium",
      },
      Conditions={
        function (character)
          return (character.Variables["Ranger_CF_MediumArmorProficiency"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Shield Prof",
      },
      Conditions={
        function (character)
          return (character.Variables["Ranger_CF_ShieldProficiency"] == 0)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Proficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_LightArmorProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_MediumArmorProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_ShieldProficiency",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_HuntersBond",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_FavoredEnemy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_FavoredTerrain",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Track",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_WildEmpathy",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_CombatStyleFeat",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_WoodlandStride",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_SwiftTracker",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Evasion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Quarry",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Camouflage",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Evasion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_HideInPlainSight",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Quarry",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_MasterHunter",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_Endurance",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_ImprovedEvasion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_ImprovedQuarry",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_CombatStyleFeat2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_CombatStyleFeat6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_CombatStyleFeat10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_CombatStyleFeat14",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_CombatStyleFeat18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_FavoredEnemy1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_FavoredEnemy2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_FavoredEnemy3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_FavoredEnemy4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_AnimalCompanion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Ranger_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Proficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Proficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_LightArmorProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_LightArmorProficiency"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_MediumArmorProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_MediumArmorProficiency"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_ShieldProficiency",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_ShieldProficiency"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_ImprovedEvasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_ImprovedEvasion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_ImprovedQuarry",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_ImprovedQuarry"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat14",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat14"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_AnimalCompanion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_AnimalCompanion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_HuntersBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_HuntersBond"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredEnemy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredTerrain",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_FavoredTerrain"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Track",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Track"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_WildEmpathy",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_WildEmpathy"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_CombatStyleFeat"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_WoodlandStride",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_WoodlandStride"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_SwiftTracker",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_SwiftTracker"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Evasion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Quarry",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Quarry"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Camouflage",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Camouflage"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Evasion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_HideInPlainSight",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_HideInPlainSight"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Quarry",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Quarry"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_MasterHunter",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_MasterHunter"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Endurance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Ranger_CF_Endurance"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_HuntersBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerHuntersBond")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerFavoredEnemy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredTerrain",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerFavoredTerrain")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Track",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerTrack")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_WildEmpathy",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerWildEmpathy")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCombatStyle")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_WoodlandStride",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerWoodlandStride")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_SwiftTracker",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerSwiftTracker")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerEvasion")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Quarry",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerQuarry")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Camouflage",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCamoflage" or ability.Type == "RangerCamouflage")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerEvasion")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_HideInPlainSight",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerHideInPlainSight")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Quarry",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerQuarry")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_MasterHunter",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerMasterHunter")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_Endurance",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerEndurance")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCombatStyleFeat2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat6",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCombatStyleFeat6")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCombatStyleFeat10")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat14",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCombatStyleFeat14")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_CombatStyleFeat18",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerCombatStyleFeat18")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy1",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerFavoredEnemy1")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerFavoredEnemy2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy3",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerFavoredEnemy3")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Ranger",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Ranger_CF_FavoredEnemy4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerFavoredEnemy4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_UncannyDodge",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_ImprovedUncannyDodge",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_Trapfinding",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_Evasion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalents",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_MasterStrike",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_ArmorProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_TrapSense6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_AdvancedTalents",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent12",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent14",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent16",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent18",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_RogueTalent20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack7",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack9",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack11",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack13",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack15",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack17",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Rogue_CF_SneakAttack19",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_AdvancedTalents",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_AdvancedTalents"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent12",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent12"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent14",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent14"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent16",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent16"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent18",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent18"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalent20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack7",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack7"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack9",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack9"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack11",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack11"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack13",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack13"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack15",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack15"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack17",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack17"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack19",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack19"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_UncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_UncannyDodge"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_ImprovedUncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_ImprovedUncannyDodge"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_SneakAttack"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_Trapfinding",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_Trapfinding"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_Evasion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalents",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_RogueTalents"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_TrapSense"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_MasterStrike",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_MasterStrike"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_ArmorProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Rogue_CF_ArmorProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_UncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueUncannyDodge")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_ImprovedUncannyDodge",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueImprovedUncannyDodge")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_SneakAttack",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueSneakAttack")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_Trapfinding",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTrapfinding")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_Evasion",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueEvasion")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalents",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalents")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_TrapSense",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTrapSense")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_MasterStrike",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueMasterStrike")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent2",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent2")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent4",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent4")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent6",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent6")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent8",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent8")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent10",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent10")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent12",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent12")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent14",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent14")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent16",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent16")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent18",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent18")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Rogue",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Rogue_CF_RogueTalent20",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RogueTalent20")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_Spells",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_Bloodline",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_Cantrips",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_EschewMaterials",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineClassSkill",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineArcana",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlinePowers",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlinePower1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlinePower3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlinePower9",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlinePower15",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlinePower20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineFeats",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpells",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell2",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell3",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell4",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell6",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell7",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Sorcerer_CF_BloodlineSpell9",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineArcana",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineArcana"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlinePowers",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePowers"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlinePower1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlinePower3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlinePower9",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower9"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlinePower15",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower15"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlinePower20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlinePower20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineFeats"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_EschewMaterials",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_EschewMaterials"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpells",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpells"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell2",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell2"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell3",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell3"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell4",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell4"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell6",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell6"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell7",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell7"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineSpell9",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineSpell9"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_Bloodline",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_Bloodline"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_BloodlineClassSkill",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_BloodlineClassSkill"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_Spells",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_Spells"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_Cantrips",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Sorcerer_CF_Cantrips"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "SorcererWeaponProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Sorcerer",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Sorcerer_CF_EschewMaterials",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "SorcererEschewMaterials")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ClassSkills",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ArcaneSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_WeaponProficiencies",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_Spells",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BonusLanguages",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ScribeScroll",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ArcaneBond",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_Cantrips",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BonusFeats",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_SpellBook",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_Familiar",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BondedObject",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BonusFeat5",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BonusFeat10",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BonusFeat15",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BonusFeat20",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ClassSkills",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ClassSkills"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ArcaneSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ArcaneSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_WeaponProficiencies"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_Spells",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_Spells"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusLanguages",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BonusLanguages"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ScribeScroll",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ScribeScroll"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ArcaneBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ArcaneBond"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_Cantrips",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_Cantrips"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeats"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_SpellBook",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_SpellBook"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_Familiar",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_Familiar"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BondedObject",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BondedObject"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat5",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat5"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat10"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat15",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat15"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat20",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BonusFeat20"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ArcaneSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardArcaneSchool")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_WeaponProficiencies",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardWeaponProficiencies")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ScribeScroll",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardScribeScroll")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ArcaneBond",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardArcaneBond")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_Cantrips",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardCantrips")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeats",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardBonusFeats")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_SpellBook",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardSpellBook")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat5",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardBonusFeat5")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat10",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardBonusFeat10")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat15",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardBonusFeat15")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BonusFeat20",
      },
      Formula="1",
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "WizardBonusFeat20")
          end)
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_AbjurationOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_AbjurationOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ConjurationOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ConjurationOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_DivinationOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_DivinationOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_EnchantmentOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_EnchantmentOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_EvocationOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_EvocationOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_IllusionOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_IllusionOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_NecromancyOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_NecromancyOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_TransmutationOppositionSchool",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_TransmutationOppositionSchool"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_SchoolPower1",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_SchoolPower1"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_SchoolPower8",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_SchoolPower8"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_AcidDart",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_AcidDart"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_AuraOfDespair",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_AuraOfDespair"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_BlindingRay",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_BlindingRay"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ChangeShape",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ChangeShape"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_DazingTouch",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_DazingTouch"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_DimensionalSteps",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_DimensionalSteps"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_DivinersFortune",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_DivinersFortune"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ElementalWall",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ElementalWall"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_EnchantingSmile",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_EnchantingSmile"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_EnergyAbsorption",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_EnergyAbsorption"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ExtendedIllusion",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ExtendedIllusion"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ForceMissile",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ForceMissile"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_Forwarned",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_Forwarned"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_GraveTouch",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_GraveTouch"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_HandOfTheApprentice",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_HandOfTheApprentice"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_IntenseSpells",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_IntenseSpells"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_InvisibilityField",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_InvisibilityField"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_LifeSight",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_LifeSight"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_MetamagicMastery",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_MetamagicMastery"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_PhysicalEnhancement",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_PhysicalEnhancement"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_PowerOverUndead",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_PowerOverUndead"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ProtectiveWard",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ProtectiveWard"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_Resistance",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_Resistance"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_ScryingAdept",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_ScryingAdept"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_SummonersCharm",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_SummonersCharm"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Wizard_CF_TelekineticFist",
      },
      Formula="1",
      Conditions={
        function (character)
          return character.Facts["ABILITY"]["Wizard_CF_TelekineticFist"] == "True"
        end,
      },
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_AbjurationOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ConjurationOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_DivinationOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_EnchantmentOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_EvocationOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_IllusionOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_NecromancyOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_TransmutationOppositionSchool",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_SchoolPower1",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_SchoolPower8",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_AcidDart",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_AuraOfDespair",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_BlindingRay",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ChangeShape",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_DazingTouch",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_DimensionalSteps",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_DivinersFortune",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ElementalWall",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_EnchantingSmile",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_EnergyAbsorption",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ExtendedIllusion",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ForceMissile",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_Forwarned",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_GraveTouch",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_HandOfTheApprentice",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_IntenseSpells",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_InvisibilityField",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_LifeSight",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_MetamagicMastery",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_PhysicalEnhancement",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_PowerOverUndead",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ProtectiveWard",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_Resistance",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_ScryingAdept",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_SummonersCharm",
      InitialValue="0",
    },
  },
})

ModifyAbility({
  Name="Wizard",
  Category="Class",
  AllowMultiple=false,
  Stackable=false,
  Definitions={
    {
      Name="Wizard_CF_TelekineticFist",
      InitialValue="0",
    },
  },
})

