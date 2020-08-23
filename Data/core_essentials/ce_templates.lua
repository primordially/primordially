-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_templates.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineTemplate({
  Name="Bite ~ Claw (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite ~ Claw (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("3d6"),
    },
  },
})
DefineTemplate({
  Name="Bite 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Fine)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gore 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 1 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 2 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 3 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 4 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 5 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Fine)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Diminutive)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Tiny)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Small)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Medium)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Large)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Huge)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Gargantuan)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 6 (Colossal)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Fine)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Diminutive)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Tiny)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Small)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Medium)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Large)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Huge)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Gargantuan)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Pincers 7 (Colossal)",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Pincers",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 1 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 2 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 3 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 4 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 5 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 6 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Fine)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "F"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Slap 7 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Claw 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Slam 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Sting 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Sting",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Talons 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Talons",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 1 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 2 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 3 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 4 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 5 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 6 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hoof 7 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hoof",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 1 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 2 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 3 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 4 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 5 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 6 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 7 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tentacle 8 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tentacle",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*8",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 1 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 2 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 3 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 4 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 5 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 6 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Wing 7 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "NaturalSecondary",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Rake 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Rake",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hair 1 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hair 2 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hair 3 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Hair 4 (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Hair",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 1 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 2 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 3 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*3",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 4 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*4",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 5 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*5",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 6 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*6",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Diminutive)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Tiny)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Small)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Large)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Ranged Slam 7 (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Type={
        Name="Base",
      },
      Variables={
        "PrimaryAttackDamageSize",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Ranged Slam",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*7",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d2"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Tail Sweep (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Tail Sweep",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Crush (Diminutive)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "D"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Crush (Tiny)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "T"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Crush (Small)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "S"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
  },
})
DefineTemplate({
  Name="Crush (Medium)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "M"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Crush (Large)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "L"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Crush (Huge)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "H"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Crush (Gargantuan)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "G"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
DefineTemplate({
  Name="Crush (Colossal)",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return character.Size == "C"
    end,
  },
  NaturalAttacks={
    {
      Name="Crush",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("4d8"),
    },
  },
})
DefineTemplate({
  Name="Sorcerer Cleric Spells",
  Visible=false,
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=9,
          Spells={
            "Astral Projection",
            "Energy Drain",
            "Etherealness",
            "Gate",
            "Heal (Mass)",
            "Implosion",
            "Miracle",
            "Soul Bind",
            "Storm of Vengeance",
            "Summon Monster IX",
            "True Resurrection",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=8,
          Spells={
            "Antimagic Field",
            "Cloak of Chaos",
            "Create Greater Undead",
            "Cure Critical Wounds (Mass)",
            "Dimensional Lock",
            "Discern Location",
            "Earthquake",
            "Fire Storm",
            "Holy Aura",
            "Inflict Critical Wounds (Mass)",
            "Planar Ally (Greater)",
            "Shield of Law",
            "Spell Immunity (Greater)",
            "Summon Monster VIII",
            "Symbol of Death",
            "Symbol of Insanity",
            "Unholy Aura",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=7,
          Spells={
            "Blasphemy",
            "Control Weather",
            "Cure Serious Wounds (Mass)",
            "Destruction",
            "Dictum",
            "Ethereal Jaunt",
            "Holy Word",
            "Inflict Serious Wounds (Mass)",
            "Refuge",
            "Regenerate",
            "Repulsion",
            "Restoration (Greater)",
            "Resurrection",
            "Scrying (Greater)",
            "Summon Monster VII",
            "Symbol of Stunning",
            "Symbol of Weakness",
            "Word of Chaos",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=6,
          Spells={
            "Animate Objects",
            "Antilife Shell",
            "Banishment",
            "Bear's Endurance (Mass)",
            "Blade Barrier",
            "Bull's Strength (Mass)",
            "Create Undead",
            "Cure Moderate Wounds (Mass)",
            "Dispel Magic (Greater)",
            "Eagle's Splendor (Mass)",
            "Find the Path",
            "Forbiddance",
            "Geas/Quest",
            "Glyph of Warding (Greater)",
            "Harm",
            "Heal",
            "Heroes' Feast",
            "Inflict Moderate Wounds (Mass)",
            "Owl's Wisdom (Mass)",
            "Planar Ally",
            "Summon Monster VI",
            "Symbol of Fear",
            "Symbol of Persuasion",
            "Undeath to Death",
            "Wind Walk",
            "Word of Recall",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=5,
          Spells={
            "Atonement",
            "Break Enchantment",
            "Breath of Life",
            "Command (Greater)",
            "Commune",
            "Cure Light Wounds (Mass)",
            "Dispel Chaos",
            "Dispel Evil",
            "Dispel Good",
            "Dispel Law",
            "Disrupting Weapon",
            "Flame Strike",
            "Hallow",
            "Inflict Light Wounds (Mass)",
            "Insect Plague",
            "Mark of Justice",
            "Plane Shift",
            "Raise Dead",
            "Righteous Might",
            "Scrying",
            "Slay Living",
            "Spell Resistance",
            "Summon Monster V",
            "Symbol of Pain",
            "Symbol of Sleep",
            "True Seeing",
            "Unhallow",
            "Wall of Stone",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=4,
          Spells={
            "Air Walk",
            "Chaos Hammer",
            "Control Water",
            "Cure Critical Wounds",
            "Death Ward",
            "Dimensional Anchor",
            "Discern Lies",
            "Dismissal",
            "Divination",
            "Divine Power",
            "Freedom of Movement",
            "Giant Vermin",
            "Holy Smite",
            "Imbue with Spell Ability",
            "Inflict Critical Wounds",
            "Magic Weapon (Greater)",
            "Neutralize Poison",
            "Order's Wrath",
            "Planar Ally (Lesser)",
            "Poison",
            "Repel Vermin",
            "Restoration",
            "Sending",
            "Spell Immunity",
            "Summon Monster IV",
            "Tongues",
            "Unholy Blight",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=3,
          Spells={
            "Animate Dead",
            "Bestow Curse",
            "Blindness/Deafness",
            "Contagion",
            "Continual Flame",
            "Create Food and Water",
            "Cure Serious Wounds",
            "Daylight",
            "Deeper Darkness",
            "Dispel Magic",
            "Gentle Repose",
            "Glyph of Warding",
            "Helping Hand",
            "Inflict Serious Wounds",
            "Invisibility Purge",
            "Locate Object",
            "Magic Circle against Chaos",
            "Magic Circle against Evil",
            "Magic Circle against Good",
            "Magic Circle against Law",
            "Magic Vestment",
            "Meld into Stone",
            "Obscure Object",
            "Prayer",
            "Protection from Energy",
            "Remove Blindness/Deafness",
            "Remove Curse",
            "Remove Disease",
            "Searing Light",
            "Speak with Dead",
            "Stone Shape",
            "Summon Monster III",
            "Water Breathing",
            "Water Walk",
            "Wind Wall",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=2,
          Spells={
            "Aid",
            "Align Weapon",
            "Augury",
            "Bear's Endurance",
            "Bull's Strength",
            "Calm Emotions",
            "Consecrate",
            "Cure Moderate Wounds",
            "Darkness",
            "Death Knell",
            "Delay Poison",
            "Desecrate",
            "Eagle's Splendor",
            "Enthrall",
            "Find Traps",
            "Hold Person",
            "Inflict Moderate Wounds",
            "Make Whole",
            "Owl's Wisdom",
            "Remove Paralysis",
            "Resist Energy",
            "Restoration (Lesser)",
            "Shatter",
            "Shield Other",
            "Silence",
            "Sound Burst",
            "Spiritual Weapon",
            "Status",
            "Summon Monster II",
            "Undetectable Alignment",
            "Zone of Truth",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Bane",
            "Bless",
            "Bless Water",
            "Cause Fear",
            "Command",
            "Comprehend Languages",
            "Cure Light Wounds",
            "Curse Water",
            "Deathwatch",
            "Detect Chaos",
            "Detect Evil",
            "Detect Good",
            "Detect Law",
            "Detect Undead",
            "Divine Favor",
            "Doom",
            "Endure Elements",
            "Entropic Shield",
            "Hide from Undead",
            "Inflict Light Wounds",
            "Magic Stone",
            "Magic Weapon",
            "Obscuring Mist",
            "Protection from Chaos",
            "Protection from Evil",
            "Protection from Good",
            "Protection from Law",
            "Remove Fear",
            "Sanctuary",
            "Shield of Faith",
            "Summon Monster I",
          },
        },
      },
    },
  },
})
ModifyTemplate({
  Name="Sorcerer Cleric Spells",
  SpellLists={
    {
      Kind="Class",
      Name="Sorcerer",
      Levels={
        {
          SpellLevel=0,
          Spells={
            "Bleed",
            "Create Water",
            "Detect Magic",
            "Detect Poison",
            "Guidance",
            "Light",
            "Mending",
            "Purify Food and Drink",
            "Read Magic",
            "Resistance",
            "Stabilize",
            "Virtue",
          },
        },
      },
    },
  },
})
DefineTemplate({
  Name="REACH_0",
  Reach=0,
  Visible=false,
})
DefineTemplate({
  Name="REACH_5",
  Reach=5,
  Visible=false,
})
DefineTemplate({
  Name="REACH_10",
  Reach=10,
  Visible=false,
})
DefineTemplate({
  Name="REACH_15",
  Reach=15,
  Visible=false,
})
DefineTemplate({
  Name="REACH_20",
  Reach=20,
  Visible=false,
})
DefineTemplate({
  Name="REACH_30",
  Reach=30,
  Visible=false,
})
DefineTemplate({
  Name="Dragon Size Tracker",
  Size="DragonSizeTracker",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_F",
  Size="F",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_D",
  Size="D",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_T",
  Size="T",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_S",
  Size="S",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_M",
  Size="M",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_L",
  Size="L",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_H",
  Size="H",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_G",
  Size="G",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_C",
  Size="C",
  Visible=false,
})
DefineTemplate({
  Name="SIZE_C+",
  Size="P",
  Visible=false,
})
DefineTemplate({
  Name="Wyrmling",
  Removable=false,
  SubRace="Wyrmling",
  Visible=false,
})
DefineTemplate({
  Name="Very Young",
  Removable=false,
  SubRace="Very Young",
  Visible=false,
})
DefineTemplate({
  Name="Young",
  Removable=false,
  SubRace="Young",
  Visible=false,
})
DefineTemplate({
  Name="Juvenile",
  Removable=false,
  SubRace="Juvenile",
  Visible=false,
})
DefineTemplate({
  Name="Young Adult",
  Removable=false,
  SubRace="Young Adult",
  Visible=false,
})
DefineTemplate({
  Name="Adult",
  Removable=false,
  SubRace="Adult",
  Visible=false,
})
DefineTemplate({
  Name="Mature Adult",
  Removable=false,
  SubRace="Mature Adult",
  Visible=false,
})
DefineTemplate({
  Name="Old",
  Removable=false,
  SubRace="Old",
  Visible=false,
})
DefineTemplate({
  Name="Very Old",
  Removable=false,
  SubRace="Very Old",
  Visible=false,
})
DefineTemplate({
  Name="Ancient",
  Removable=false,
  SubRace="Ancient",
  Visible=false,
})
DefineTemplate({
  Name="Wyrm",
  Removable=false,
  SubRace="Wyrm",
  Visible=false,
})
DefineTemplate({
  Name="Great Wyrm",
  Removable=false,
  SubRace="Great Wyrm",
  Visible=false,
})
DefineTemplate({
  Name="Base Dragon HD (3)",
  Additions={
    {
      WhenHitDieIs=Formula("3-4"),
      Templates={
        "Wyrmling",
      },
    },
    {
      WhenHitDieIs=Formula("5-6"),
      Templates={
        "Very Young",
      },
    },
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Young",
      },
    },
    {
      WhenHitDieIs=Formula("9-10"),
      Templates={
        "Juvenile",
      },
    },
    {
      WhenHitDieIs=Formula("11-12"),
      Templates={
        "Young Adult",
      },
    },
    {
      WhenHitDieIs=Formula("13-14"),
      Templates={
        "Adult",
      },
    },
    {
      WhenHitDieIs=Formula("15-16"),
      Templates={
        "Mature Adult",
      },
    },
    {
      WhenHitDieIs=Formula("17-18"),
      Templates={
        "Old",
      },
    },
    {
      WhenHitDieIs=Formula("19-20"),
      Templates={
        "Very Old",
      },
    },
    {
      WhenHitDieIs=Formula("21-22"),
      Templates={
        "Ancient",
      },
    },
    {
      WhenHitDieIs=Formula("23-24"),
      Templates={
        "Wyrm",
      },
    },
    {
      WhenHitDieIs=Formula("25+"),
      Templates={
        "Great Wyrm",
      },
    },
  },
  Templates={
    "Dragon Size HD (3)",
  },
})
DefineTemplate({
  Name="Base Dragon HD (4)",
  Additions={
    {
      WhenHitDieIs=Formula("4-5"),
      Templates={
        "Wyrmling",
      },
    },
    {
      WhenHitDieIs=Formula("6-7"),
      Templates={
        "Very Young",
      },
    },
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Young",
      },
    },
    {
      WhenHitDieIs=Formula("10-11"),
      Templates={
        "Juvenile",
      },
    },
    {
      WhenHitDieIs=Formula("12-13"),
      Templates={
        "Young Adult",
      },
    },
    {
      WhenHitDieIs=Formula("14-15"),
      Templates={
        "Adult",
      },
    },
    {
      WhenHitDieIs=Formula("16-17"),
      Templates={
        "Mature Adult",
      },
    },
    {
      WhenHitDieIs=Formula("18-19"),
      Templates={
        "Old",
      },
    },
    {
      WhenHitDieIs=Formula("20-21"),
      Templates={
        "Very Old",
      },
    },
    {
      WhenHitDieIs=Formula("22-23"),
      Templates={
        "Ancient",
      },
    },
    {
      WhenHitDieIs=Formula("24-25"),
      Templates={
        "Wyrm",
      },
    },
    {
      WhenHitDieIs=Formula("26+"),
      Templates={
        "Great Wyrm",
      },
    },
  },
  Templates={
    "Dragon Size HD (4)",
  },
})
DefineTemplate({
  Name="Base Dragon HD (5)",
  Additions={
    {
      WhenHitDieIs=Formula("5-6"),
      Templates={
        "Wyrmling",
      },
    },
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Very Young",
      },
    },
    {
      WhenHitDieIs=Formula("9-10"),
      Templates={
        "Young",
      },
    },
    {
      WhenHitDieIs=Formula("11-12"),
      Templates={
        "Juvenile",
      },
    },
    {
      WhenHitDieIs=Formula("13-14"),
      Templates={
        "Young Adult",
      },
    },
    {
      WhenHitDieIs=Formula("15-16"),
      Templates={
        "Adult",
      },
    },
    {
      WhenHitDieIs=Formula("17-18"),
      Templates={
        "Mature Adult",
      },
    },
    {
      WhenHitDieIs=Formula("19-20"),
      Templates={
        "Old",
      },
    },
    {
      WhenHitDieIs=Formula("21-22"),
      Templates={
        "Very Old",
      },
    },
    {
      WhenHitDieIs=Formula("23-24"),
      Templates={
        "Ancient",
      },
    },
    {
      WhenHitDieIs=Formula("25-26"),
      Templates={
        "Wyrm",
      },
    },
    {
      WhenHitDieIs=Formula("27+"),
      Templates={
        "Great Wyrm",
      },
    },
  },
  Templates={
    "Dragon Size HD (5)",
  },
})
DefineTemplate({
  Name="Base Dragon HD (6)",
  Additions={
    {
      WhenHitDieIs=Formula("6-7"),
      Templates={
        "Wyrmling",
      },
    },
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Very Young",
      },
    },
    {
      WhenHitDieIs=Formula("10-11"),
      Templates={
        "Young",
      },
    },
    {
      WhenHitDieIs=Formula("12-13"),
      Templates={
        "Juvenile",
      },
    },
    {
      WhenHitDieIs=Formula("14-15"),
      Templates={
        "Young Adult",
      },
    },
    {
      WhenHitDieIs=Formula("16-17"),
      Templates={
        "Adult",
      },
    },
    {
      WhenHitDieIs=Formula("18-19"),
      Templates={
        "Mature Adult",
      },
    },
    {
      WhenHitDieIs=Formula("20-21"),
      Templates={
        "Old",
      },
    },
    {
      WhenHitDieIs=Formula("22-23"),
      Templates={
        "Very Old",
      },
    },
    {
      WhenHitDieIs=Formula("24-25"),
      Templates={
        "Ancient",
      },
    },
    {
      WhenHitDieIs=Formula("26-27"),
      Templates={
        "Wyrm",
      },
    },
    {
      WhenHitDieIs=Formula("28+"),
      Templates={
        "Great Wyrm",
      },
    },
  },
  Templates={
    "Dragon Size HD (6)",
  },
})
DefineTemplate({
  Name="Base Dragon HD (7)",
  Additions={
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Wyrmling",
      },
    },
    {
      WhenHitDieIs=Formula("9-10"),
      Templates={
        "Very Young",
      },
    },
    {
      WhenHitDieIs=Formula("11-12"),
      Templates={
        "Young",
      },
    },
    {
      WhenHitDieIs=Formula("13-14"),
      Templates={
        "Juvenile",
      },
    },
    {
      WhenHitDieIs=Formula("15-16"),
      Templates={
        "Young Adult",
      },
    },
    {
      WhenHitDieIs=Formula("17-18"),
      Templates={
        "Adult",
      },
    },
    {
      WhenHitDieIs=Formula("19-20"),
      Templates={
        "Mature Adult",
      },
    },
    {
      WhenHitDieIs=Formula("21-22"),
      Templates={
        "Old",
      },
    },
    {
      WhenHitDieIs=Formula("23-24"),
      Templates={
        "Very Old",
      },
    },
    {
      WhenHitDieIs=Formula("25-26"),
      Templates={
        "Ancient",
      },
    },
    {
      WhenHitDieIs=Formula("27-28"),
      Templates={
        "Wyrm",
      },
    },
    {
      WhenHitDieIs=Formula("29+"),
      Templates={
        "Great Wyrm",
      },
    },
  },
  Templates={
    "Dragon Size HD (7)",
  },
})
DefineTemplate({
  Name="Base Dragon HD (8)",
  Additions={
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Wyrmling",
      },
    },
    {
      WhenHitDieIs=Formula("10-11"),
      Templates={
        "Very Young",
      },
    },
    {
      WhenHitDieIs=Formula("12-13"),
      Templates={
        "Young",
      },
    },
    {
      WhenHitDieIs=Formula("14-15"),
      Templates={
        "Juvenile",
      },
    },
    {
      WhenHitDieIs=Formula("16-17"),
      Templates={
        "Young Adult",
      },
    },
    {
      WhenHitDieIs=Formula("18-19"),
      Templates={
        "Adult",
      },
    },
    {
      WhenHitDieIs=Formula("20-21"),
      Templates={
        "Mature Adult",
      },
    },
    {
      WhenHitDieIs=Formula("22-23"),
      Templates={
        "Old",
      },
    },
    {
      WhenHitDieIs=Formula("24-25"),
      Templates={
        "Very Old",
      },
    },
    {
      WhenHitDieIs=Formula("26-27"),
      Templates={
        "Ancient",
      },
    },
    {
      WhenHitDieIs=Formula("28-29"),
      Templates={
        "Wyrm",
      },
    },
    {
      WhenHitDieIs=Formula("30+"),
      Templates={
        "Great Wyrm",
      },
    },
  },
  Templates={
    "Dragon Size HD (8)",
  },
})
DefineTemplate({
  Name="Dragon Size HD (3)",
  Additions={
    {
      WhenHitDieIs=Formula("3-4"),
      Templates={
        "Dragon (Tiny)",
      },
    },
    {
      WhenHitDieIs=Formula("5-6"),
      Templates={
        "Dragon (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("7-10"),
      Templates={
        "Dragon (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("11-16"),
      Templates={
        "Dragon (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("17-24"),
      Templates={
        "Dragon (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("25+"),
      Templates={
        "Dragon (Gargantuan)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Size HD (4)",
  Additions={
    {
      WhenHitDieIs=Formula("4-5"),
      Templates={
        "Dragon (Tiny)",
      },
    },
    {
      WhenHitDieIs=Formula("6-7"),
      Templates={
        "Dragon (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("8-11"),
      Templates={
        "Dragon (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("12-17"),
      Templates={
        "Dragon (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("18-25"),
      Templates={
        "Dragon (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("26+"),
      Templates={
        "Dragon (Gargantuan)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Size HD (5)",
  Additions={
    {
      WhenHitDieIs=Formula("5-6"),
      Templates={
        "Dragon (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Dragon (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("9-12"),
      Templates={
        "Dragon (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("13-18"),
      Templates={
        "Dragon (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("19-26"),
      Templates={
        "Dragon (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("27+"),
      Templates={
        "Dragon (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Size HD (6)",
  Additions={
    {
      WhenHitDieIs=Formula("6-7"),
      Templates={
        "Dragon (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Dragon (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("10-13"),
      Templates={
        "Dragon (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("14-19"),
      Templates={
        "Dragon (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("20-27"),
      Templates={
        "Dragon (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("28+"),
      Templates={
        "Dragon (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Size HD (7)",
  Additions={
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Dragon (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("9-10"),
      Templates={
        "Dragon (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("11-14"),
      Templates={
        "Dragon (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("15-20"),
      Templates={
        "Dragon (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("21-28"),
      Templates={
        "Dragon (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("29+"),
      Templates={
        "Dragon (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Size HD (8)",
  Additions={
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Dragon (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("10-11"),
      Templates={
        "Dragon (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("12-15"),
      Templates={
        "Dragon (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("16-21"),
      Templates={
        "Dragon (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("22-29"),
      Templates={
        "Dragon (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("30+"),
      Templates={
        "Dragon (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks HD (3)",
  Additions={
    {
      WhenHitDieIs=Formula("3-4"),
      Templates={
        "Dragon Attacks (Tiny)",
      },
    },
    {
      WhenHitDieIs=Formula("5-6"),
      Templates={
        "Dragon Attacks (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("7-10"),
      Templates={
        "Dragon Attacks (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("11-16"),
      Templates={
        "Dragon Attacks (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("17-24"),
      Templates={
        "Dragon Attacks (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("25+"),
      Templates={
        "Dragon Attacks (Gargantuan)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks HD (4)",
  Additions={
    {
      WhenHitDieIs=Formula("4-5"),
      Templates={
        "Dragon Attacks (Tiny)",
      },
    },
    {
      WhenHitDieIs=Formula("6-7"),
      Templates={
        "Dragon Attacks (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("8-11"),
      Templates={
        "Dragon Attacks (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("12-17"),
      Templates={
        "Dragon Attacks (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("18-25"),
      Templates={
        "Dragon Attacks (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("26+"),
      Templates={
        "Dragon Attacks (Gargantuan)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks HD (5)",
  Additions={
    {
      WhenHitDieIs=Formula("5-6"),
      Templates={
        "Dragon Attacks (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Dragon Attacks (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("9-12"),
      Templates={
        "Dragon Attacks (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("13-18"),
      Templates={
        "Dragon Attacks (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("19-26"),
      Templates={
        "Dragon Attacks (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("27+"),
      Templates={
        "Dragon Attacks (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks HD (6)",
  Additions={
    {
      WhenHitDieIs=Formula("6-7"),
      Templates={
        "Dragon Attacks (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Dragon Attacks (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("10-13"),
      Templates={
        "Dragon Attacks (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("14-19"),
      Templates={
        "Dragon Attacks (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("20-27"),
      Templates={
        "Dragon Attacks (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("28+"),
      Templates={
        "Dragon Attacks (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks HD (7)",
  Additions={
    {
      WhenHitDieIs=Formula("7-8"),
      Templates={
        "Dragon Attacks (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("9-10"),
      Templates={
        "Dragon Attacks (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("11-14"),
      Templates={
        "Dragon Attacks (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("15-20"),
      Templates={
        "Dragon Attacks (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("21-28"),
      Templates={
        "Dragon Attacks (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("29+"),
      Templates={
        "Dragon Attacks (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks HD (8)",
  Additions={
    {
      WhenHitDieIs=Formula("8-9"),
      Templates={
        "Dragon Attacks (Small)",
      },
    },
    {
      WhenHitDieIs=Formula("10-11"),
      Templates={
        "Dragon Attacks (Medium)",
      },
    },
    {
      WhenHitDieIs=Formula("12-15"),
      Templates={
        "Dragon Attacks (Large)",
      },
    },
    {
      WhenHitDieIs=Formula("16-21"),
      Templates={
        "Dragon Attacks (Huge)",
      },
    },
    {
      WhenHitDieIs=Formula("22-29"),
      Templates={
        "Dragon Attacks (Gargantuan)",
      },
    },
    {
      WhenHitDieIs=Formula("30+"),
      Templates={
        "Dragon Attacks (Colossal)",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon (Tiny)",
  Reach=0,
})
DefineTemplate({
  Name="Dragon (Small)",
  Reach=5,
})
DefineTemplate({
  Name="Dragon (Medium)",
  Reach=5,
})
DefineTemplate({
  Name="Dragon (Large)",
  Reach=5,
})
DefineTemplate({
  Name="Dragon (Huge)",
  Reach=10,
})
DefineTemplate({
  Name="Dragon (Gargantuan)",
  Reach=15,
})
DefineTemplate({
  Name="Dragon (Colossal)",
  Reach=20,
})
DefineTemplate({
  Name="Dragon Attacks (Tiny)",
  Visible=false,
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d3"),
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks (Small)",
  Visible=false,
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d6"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks (Medium)",
  Visible=false,
  Bonuses={
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d4"),
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks (Large)",
  Visible=false,
  Bonuses={
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d6"),
    },
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("1d8"),
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks (Huge)",
  Visible=false,
  Bonuses={
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("1d8"),
    },
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d6"),
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks (Gargantuan)",
  Visible=false,
  Bonuses={
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d6"),
    },
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Dragon Attacks (Colossal)",
  Visible=false,
  Bonuses={
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Wing",
      Formula=Formula("-(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Tail Slap",
      Formula=Formula("(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
        "Piercing",
        "Slashing",
      },
      Count="*1",
      Damage=DiceFormula("4d8"),
    },
    {
      Name="Claws",
      Types={
        "Weapon",
        "Natural",
        "NaturalPrimary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("4d6"),
    },
    {
      Name="Wing",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*2",
      Damage=DiceFormula("2d8"),
    },
    {
      Name="Tail Slap",
      Types={
        "Weapon",
        "Natural",
        "NaturalSecondary",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Bludgeoning",
      },
      Count="*1",
      Damage=DiceFormula("4d6"),
    },
  },
})
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineTemplate({
  Name="Dragon Age Category (Wyrmling)",
  Visible=false,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "DragonAgeCategory",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Very Young)",
  ChallengeRating="2",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=2,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
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
      Formula=Formula("2"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Young)",
  ChallengeRating="4",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=4,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
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
      Formula=Formula("2"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Juvenile)",
  ChallengeRating="5",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=6,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
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
      Formula=Formula("4"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("9"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Young Adult)",
  ChallengeRating="7",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=8,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("12"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
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
      Formula=Formula("4"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("12"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Adult)",
  ChallengeRating="8",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=10,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("14"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("15"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Mature Adult)",
  ChallengeRating="9",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=12,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("16"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("6"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("18"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Old)",
  ChallengeRating="11",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=14,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("18"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("21"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Very Old)",
  ChallengeRating="12",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=16,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("20"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("24"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("9"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Ancient)",
  ChallengeRating="13",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=18,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("22"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-6"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("12"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("27"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Wyrm)",
  ChallengeRating="14",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=20,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("24"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("12"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("10"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("30"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("11"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
DefineTemplate({
  Name="Dragon Age Category (Great Wyrm)",
  ChallengeRating="16",
  Visible=false,
  AddedLevels={
    {
      Class="Dragon",
      Levels=22,
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("26"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-8"),
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("14"),
      Variables={
        "CON",
      },
    },
    {
      Category="STAT",
      Formula=Formula("12"),
      Variables={
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("33"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("12"),
      Variables={
        "DragonAgeCategory",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DragonAgeCategory*30"),
      Variables={
        "FrightfulPresenceRange",
      },
    },
  },
  TemplateChoices={
    "Dragon (Tiny)",
    "Dragon (Small)",
    "Dragon (Medium)",
    "Dragon (Large)",
    "Dragon (Huge)",
    "Dragon (Gargantuan)",
    "Dragon (Colossal)",
  },
  Visions={
    {
      Kind={
        "Blindsense (60')",
        "Darkvision (120')",
      },
    },
  },
})
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineTemplate({
  Name="Advanced Creature",
  ChallengeRating="1",
  SourcePage="p.294",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
        "DEX",
        "CON",
        "WIS",
        "CHA",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Conditions={
        function (character, item, sources)
          return (character.Stats["INT"] >= 3)
        end,
      },
      Variables={
        "INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Facts={
    AppliedName="Advanced",
  },
})
DefineTemplate({
  Name="Celestial Creature",
  DamageReduction={
    Value="5/Evil",
    Conditions={
      function (character, item, sources)
        return (character.Variables["CompanionHD"] >= 5) or character.Level >= 5
      end,
    },
  },
  SourcePage="p.294",
  SpellResistance=Formula("CR+5"),
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Celestial Creature ~ Smite Evil",
      },
    },
  },
  Bonuses={
    {
      Category="DR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 11) or character.Level >= 11
        end,
      },
      Variables={
        "Evil",
      },
    },
    {
      Category="MISC",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 5) or character.Level >= 5
        end,
      },
      Variables={
        "CR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "CelestialResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("CelestialResistanceBonus"),
      Type={
        Name="Resistance",
      },
      Variables={
        "AcidResistanceBonus",
        "ColdResistanceBonus",
        "ElectricityResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 5) or character.Level >= 5
        end,
      },
      Variables={
        "CelestialResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 11) or character.Level >= 11
        end,
      },
      Variables={
        "CelestialResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
  Facts={
    AppliedName="Celestial",
  },
})
DefineTemplate({
  Name="Fiendish Creature",
  DamageReduction={
    Value="5/Good",
    Conditions={
      function (character, item, sources)
        return (character.Variables["CompanionHD"] >= 5) or character.Level >= 5
      end,
    },
  },
  SourcePage="p.294",
  SpellResistance=Formula("CR+5"),
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Fiendish Creature ~ Smite Good",
      },
    },
  },
  Bonuses={
    {
      Category="DR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 11) or character.Level >= 11
        end,
      },
      Variables={
        "Good",
      },
    },
    {
      Category="MISC",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 5) or character.Level >= 5
        end,
      },
      Variables={
        "CR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "FiendishResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("FiendishResistanceBonus"),
      Type={
        Name="Resistance",
      },
      Variables={
        "ColdResistanceBonus",
        "FireResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 5) or character.Level >= 5
        end,
      },
      Variables={
        "FiendishResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["CompanionHD"] >= 11) or character.Level >= 11
        end,
      },
      Variables={
        "FiendishResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
  Facts={
    AppliedName="Fiendish",
  },
})
DefineTemplate({
  Name="Giant Creature",
  ChallengeRating="1",
  SourcePage="p.295",
  Visible=true,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Giant Creature Option",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.Size < "C"
    end,
  },
  Facts={
    AppliedName="Giant",
  },
})
DefineTemplate({
  Name="Young Creature",
  ChallengeRating="-1",
  SourcePage="p.295",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("-1"),
      Variables={
        "NUMBER",
      },
    },
    {
      Category="STAT",
      Formula=Formula("4"),
      Type={
        Name="Size",
      },
      Variables={
        "DEX",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-4"),
      Variables={
        "STR",
        "CON",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-2"),
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "SizeDecrease",
      },
    },
  },
  Facts={
    AppliedName="Young",
  },
})
DefineTemplate({
  Name="Size Change (Increase by 1)",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("1"),
      Variables={
        "NUMBER",
      },
    },
  },
})
DefineTemplate({
  Name="Size Change (Increase by 2)",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("2"),
      Variables={
        "NUMBER",
      },
    },
  },
})
DefineTemplate({
  Name="Size Change (Decrease by 1)",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("-1"),
      Variables={
        "NUMBER",
      },
    },
  },
})
DefineTemplate({
  Name="Size Change (Decrease by 2)",
  Visible=true,
  Bonuses={
    {
      Category="SIZEMOD",
      Formula=Formula("-2"),
      Variables={
        "NUMBER",
      },
    },
  },
})
DefineTemplate({
  Name="Creature with Class Levels",
  Visible=false,
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return ((character.CountSpellCastingClasses(1, "Monster"))) >= 1 and ((character.CountSpellCastingClasses(1, "PC"))) >= 1
        end,
      },
      Variables={
        "Class Level +4 Ability Adjustment",
      },
    },
    {
      Category="ABILITYPOOL",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return ((character.CountSpellCastingClasses(1, "Monster"))) >= 1 and ((character.CountSpellCastingClasses(1, "PC"))) >= 1
        end,
      },
      Variables={
        "Class Level +2 Ability Adjustment",
      },
    },
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return ((character.CountSpellCastingClasses(1, "Monster"))) >= 1 and ((character.CountSpellCastingClasses(1, "PC"))) >= 1
        end,
      },
      Variables={
        "Class Level -2 Ability Adjustment",
      },
    },
  },
})
DefineTemplate({
  Name="Advanced Creature (Heavy Horse)",
  ChallengeRating="1",
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("4"),
      Variables={
        "STR",
        "DEX",
        "CON",
        "WIS",
        "CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="WEAPONPROF=Hoof",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("-5"),
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("-ceil(STR/2)"),
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Race.Name == "Companion (Horse)") or (character.Race.Name == "Horse")
    end,
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Slashing",
        "Bludgeoning",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("1d4"),
    },
  },
  Facts={
    AppliedName="Advanced",
  },
})
SetSource({
  SourceLong="Bestiary 2",
  SourceShort="B2",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/pathfinderRPG/v5748btpy8ddb",
  SourceDate="2010-12",
})
DefineTemplate({
  Name="Entropic Creature",
  DamageReduction={
    Value="5/Lawful",
    Conditions={
      function (character, item, sources)
        return character.Level >= 5
      end,
    },
  },
  SourcePage="p.292",
  SpellResistance=Formula("CR+5"),
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Entropic Creature ~ Smite Law",
        "Resistance to Acid",
        "Resistance to Fire",
      },
    },
  },
  Bonuses={
    {
      Category="DR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 11
        end,
      },
      Variables={
        "Lawful",
      },
    },
    {
      Category="MISC",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 5
        end,
      },
      Variables={
        "CR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "EntropicResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("EntropicResistanceBonus"),
      Type={
        Name="Resistance",
      },
      Variables={
        "AcidResistanceBonus",
        "FireResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 5
        end,
      },
      Variables={
        "EntropicResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 11
        end,
      },
      Variables={
        "EntropicResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
  Facts={
    AppliedName="Entropic",
  },
})
DefineTemplate({
  Name="Resolute Creature",
  DamageReduction={
    Value="5/Chaotic",
    Conditions={
      function (character, item, sources)
        return character.Level >= 5
      end,
    },
  },
  SourcePage="p.292",
  SpellResistance=Formula("CR+5"),
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Resistance to Acid",
        "Resistance to Cold",
        "Resistance to Fire",
        "Resolute Creature ~ Smite Chaos",
      },
    },
  },
  Bonuses={
    {
      Category="DR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 11
        end,
      },
      Variables={
        "Chaotic",
      },
    },
    {
      Category="MISC",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 5
        end,
      },
      Variables={
        "CR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "ResoluteResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("ResoluteResistanceBonus"),
      Type={
        Name="Resistance",
      },
      Variables={
        "AcidResistanceBonus",
        "ColdResistanceBonus",
        "FireResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 5
        end,
      },
      Variables={
        "ResoluteResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Conditions={
        function (character, item, sources)
          return character.Level >= 11
        end,
      },
      Variables={
        "ResoluteResistanceBonus",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "DarkvisionRange",
      },
    },
  },
  Facts={
    AppliedName="Resolute",
  },
})
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineTemplate({
  Name="Aberration",
  RaceType="Aberration",
  Visible=false,
})
DefineTemplate({
  Name="Dragon",
  RaceType="Dragon",
  Visible=false,
})
DefineTemplate({
  Name="Fey",
  RaceType="Fey",
  Visible=false,
})
DefineTemplate({
  Name="Half-Construct",
  RaceSubType="Half-Construct",
  Visible=false,
})
DefineTemplate({
  Name="Half-Undead",
  RaceSubType="Half-Undead",
  Visible=false,
})
DefineTemplate({
  Name="Humanoid",
  RaceType="Humanoid",
  Visible=false,
})
DefineTemplate({
  Name="Monstrous Humanoid",
  RaceType="Monstrous Humanoid",
  Visible=false,
})
DefineTemplate({
  Name="Outsider",
  RaceType="Outsider",
  Visible=false,
})
DefineTemplate({
  Name="Plant",
  RaceType="Plant",
  Visible=false,
})
DefineTemplate({
  Name="Air",
  RaceSubType="Air",
  Visible=false,
})
DefineTemplate({
  Name="Angel",
  RaceSubType="Angel",
  Visible=false,
})
DefineTemplate({
  Name="Aquatic",
  RaceSubType="Aquatic",
  Visible=false,
  Abilities={
    {
      Category="Class Skill",
      Nature="AUTOMATIC",
      Names={
        "Swim",
      },
    },
  },
})
DefineTemplate({
  Name="Archon",
  RaceSubType="Archon",
  Visible=false,
})
DefineTemplate({
  Name="Azata",
  RaceSubType="Azata",
  Visible=false,
})
DefineTemplate({
  Name="Chaotic",
  RaceSubType="Chaotic",
  Visible=false,
})
DefineTemplate({
  Name="Cold",
  RaceSubType="Cold",
  Visible=false,
})
DefineTemplate({
  Name="Demon",
  RaceSubType="Demon",
  Visible=false,
})
DefineTemplate({
  Name="Devil",
  RaceSubType="Devil",
  Visible=false,
})
DefineTemplate({
  Name="Dwarf",
  RaceSubType="Dwarf",
  Visible=false,
  Types={
    "Racial Heritage",
  },
})
DefineTemplate({
  Name="Earth",
  RaceSubType="Earth",
  Visible=false,
})
DefineTemplate({
  Name="Elemental",
  RaceSubType="Elemental",
  Visible=false,
})
DefineTemplate({
  Name="Elf",
  RaceSubType="Elf",
  Visible=false,
  Types={
    "Racial Heritage",
  },
})
DefineTemplate({
  Name="Evil",
  RaceSubType="Evil",
  Visible=false,
})
DefineTemplate({
  Name="Extraplanar",
  RaceSubType="Extraplanar",
  Visible=false,
})
DefineTemplate({
  Name="Fire",
  RaceSubType="Fire",
  Visible=false,
})
DefineTemplate({
  Name="Giant",
  RaceSubType="Giant",
  Visible=false,
})
DefineTemplate({
  Name="Gnome",
  RaceSubType="Gnome",
  Visible=false,
  Types={
    "Racial Heritage",
  },
})
DefineTemplate({
  Name="Gnoll",
  RaceSubType="Gnoll",
  Visible=false,
})
DefineTemplate({
  Name="Goblinoid",
  RaceSubType="Goblinoid",
  Visible=false,
})
DefineTemplate({
  Name="Good",
  RaceSubType="Good",
  Visible=false,
})
DefineTemplate({
  Name="Halfling",
  RaceSubType="Halfling",
  Visible=false,
  Types={
    "Racial Heritage",
  },
})
DefineTemplate({
  Name="Human",
  RaceSubType="Human",
  Visible=false,
})
DefineTemplate({
  Name="Lawful",
  RaceSubType="Lawful",
  Visible=false,
})
DefineTemplate({
  Name="Native",
  RaceSubType="Native",
  Visible=false,
})
DefineTemplate({
  Name="Oni",
  RaceSubType="Oni",
  Visible=false,
})
DefineTemplate({
  Name="Orc",
  RaceSubType="Orc",
  Visible=false,
  Types={
    "Racial Heritage",
  },
})
DefineTemplate({
  Name="Reptilian",
  RaceSubType="Reptilian",
  Visible=false,
})
DefineTemplate({
  Name="Shapechanger",
  RaceSubType="Shapechanger",
  Visible=false,
})
DefineTemplate({
  Name="Swarm",
  RaceSubType="Swarm",
  Visible=false,
})
DefineTemplate({
  Name="Water",
  RaceSubType="Water",
  Visible=false,
})
DefineTemplate({
  Name="Construct",
  Visible=false,
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="Undead",
  RaceType="Undead",
  Visible=false,
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="Mindless",
  Visible=false,
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="Incorporeal",
  Visible=false,
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="No Strength Score",
  Visible=false,
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="No Constitution Score",
  Visible=false,
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="No Intelligence Score",
  Visible=false,
  StatModifications={
    {
    },
  },
})
SetSource({
  SourceLong="Bestiary 2",
  SourceShort="B2",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/pathfinderRPG/v5748btpy8ddb",
  SourceDate="2010-12",
})
DefineTemplate({
  Name="Aeon",
  RaceSubType="Aeon",
  SourcePage="p.305",
  Visible=false,
})
DefineTemplate({
  Name="Agathion",
  RaceSubType="Agathion",
  SourcePage="p.306",
  Visible=false,
})
DefineTemplate({
  Name="Angel ~ Cassisian",
  RaceSubType="Angel",
  SourcePage="p.310",
  Visible=false,
})
DefineTemplate({
  Name="Daemon",
  RaceSubType="Daemon",
  SourcePage="p.306",
  Visible=false,
})
DefineTemplate({
  Name="Dark Folk",
  RaceSubType="Dark Folk",
  SourcePage="p.307",
  Visible=false,
})
DefineTemplate({
  Name="Dhampir",
  RaceSubType="Dhampir",
  SourcePage="p.89",
  Visible=false,
})
DefineTemplate({
  Name="Grippli",
  RaceSubType="Grippli",
  SourcePage="p.149",
  Visible=false,
})
DefineTemplate({
  Name="Inevitable",
  RaceSubType="Inevitable",
  SourcePage="p.307",
  Visible=false,
})
DefineTemplate({
  Name="Nightshade",
  RaceSubType="Nightshade",
  SourcePage="p.308",
  Visible=false,
})
DefineTemplate({
  Name="Protean",
  RaceSubType="Protean",
  SourcePage="p.308",
  Visible=false,
})
DefineTemplate({
  Name="Protean ~ Voidworm",
  RaceSubType="Protean",
  SourcePage="p.308",
  Visible=false,
})
DefineTemplate({
  Name="Qlippoth",
  RaceSubType="Qlippoth",
  SourcePage="p.309",
  Visible=false,
})
DefineTemplate({
  Name="Qlippoth ~ Cythnigot",
  RaceSubType="Qlippoth",
  SourcePage="p.309",
  Visible=false,
})
DefineTemplate({
  Name="Arsinoitherium Companion Advancement",
  Size="L",
  SourcePage="p.186",
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Trample",
      },
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
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
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Gore",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Gylptodon Companion Advancement",
  Size="L",
  SourcePage="p.186",
  Visible=false,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
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
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Claw",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Slashing",
      },
      Count="*2",
      Damage=DiceFormula("1d10"),
    },
  },
})
DefineTemplate({
  Name="Hippopotamus Companion Advancement",
  Size="L",
  SourcePage="p.157",
  Visible=false,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Trample",
      },
    },
  },
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("8"),
      Variables={
        "STR",
      },
    },
    {
      Category="STAT",
      Formula=Formula("-2"),
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
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "TrampleDamageDieSize",
      },
    },
  },
  NaturalAttacks={
    {
      Name="Bite",
      Types={
        "Weapon",
        "Natural",
        "Weapon Group Natural",
        "Melee",
        "Finesseable",
        "Piercing",
      },
      Count="*1",
      Damage=DiceFormula("2d8"),
    },
  },
})
DefineTemplate({
  Name="Awakened Animal",
  RaceType="Magical Beast",
  StartingKitCount=1,
  SubRace="Awakened",
  Add={
    AddLanguage({
      Types={
        "Spoken",
      },
    }),
  },
  AddedLevels={
    {
      Class="Animal",
      Levels=2,
    },
  },
  BonusLanguages={
    {
      Type="Spoken",
    },
  },
  Conditions={
    function (character, item, sources)
      return (any(character.Race.RaceTypes, function (type) stringMatch(type, "Animal") end)) or (any(character.Race.Types, function (type) stringMatch(type, "Animal") end))
    end,
    function (character, item, sources)
      return not ((character.Stats["INT"] >= 3))
    end,
  },
  StartingKitChoices={
    "Awakened Animal",
  },
})
DefineTemplate({
  Name="Awakened Vermin",
  RaceType="Magical Beast",
  StartingKitCount=1,
  SubRace="Awakened",
  Add={
    AddLanguage({
      Types={
        "Spoken",
      },
    }),
  },
  AddedLevels={
    {
      Class="Vermin",
      Levels=2,
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "Mindless",
      },
    },
  },
  BonusLanguages={
    {
      Type="Spoken",
    },
  },
  Conditions={
    function (character, item, sources)
      return (any(character.Race.RaceTypes, function (type) stringMatch(type, "Vermin") end)) or (any(character.Race.Types, function (type) stringMatch(type, "Vermin") end))
    end,
  },
  StartingKitChoices={
    "Awakened Vermin",
  },
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="Awakened Tree",
  ExtraCondition="Inanimate Tree",
  RaceType="Plant",
  StartingKitCount=1,
  SubRace="Awakened",
  Add={
    AddLanguage({
      Types={
        "Spoken",
      },
    }),
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "Mindless",
      },
    },
  },
  BonusLanguages={
    {
      Type="Spoken",
    },
  },
  StartingKitChoices={
    "Awakened Tree",
  },
  StatModifications={
    {
    },
  },
})
DefineTemplate({
  Name="Monster is a PC",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IsPC",
      },
    },
  },
})
DefineTemplate({
  Name="Assign RaceType ~ Aberration",
  RaceType="Aberration",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Construct",
  RaceType="Construct",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Dragon",
  RaceType="Dragon",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Outsider",
  RaceType="Outsider",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Fey",
  RaceType="Fey",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Plant",
  RaceType="Plant",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Humanoid",
  RaceType="Humanoid",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Monstrous Humanoid",
  RaceType="Monstrous Humanoid",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceType ~ Undead",
  RaceType="Undead",
  Visible=false,
})
DefineTemplate({
  Name="Assign RaceSubType ~ Extraplanar",
  RaceSubType="Extraplanar",
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 1",
  HandCount=1,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 2",
  HandCount=2,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 3",
  HandCount=3,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 4",
  HandCount=4,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 5",
  HandCount=5,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 6",
  HandCount=6,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 7",
  HandCount=7,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 8",
  HandCount=8,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 9",
  HandCount=9,
  Visible=false,
})
DefineTemplate({
  Name="Arms ~ 10",
  HandCount=10,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 1",
  LegCount=1,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 2",
  LegCount=2,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 3",
  LegCount=3,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 4",
  LegCount=4,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 5",
  LegCount=5,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 6",
  LegCount=6,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 7",
  LegCount=7,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 8",
  LegCount=8,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 9",
  LegCount=9,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 10",
  LegCount=10,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 11",
  LegCount=11,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 12",
  LegCount=12,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 13",
  LegCount=13,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 14",
  LegCount=14,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 15",
  LegCount=15,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 16",
  LegCount=16,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 17",
  LegCount=17,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 18",
  LegCount=18,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 19",
  LegCount=19,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 20",
  LegCount=20,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 21",
  LegCount=21,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 22",
  LegCount=22,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 23",
  LegCount=23,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 24",
  LegCount=24,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 25",
  LegCount=25,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 26",
  LegCount=26,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 27",
  LegCount=27,
  Visible=false,
})
DefineTemplate({
  Name="Legs ~ 28",
  LegCount=28,
  Visible=false,
})
DefineTemplate({
  Name="Race Bonus Language ~ Aboleth",
  Visible=false,
  BonusLanguages={
    {
      Name="Aboleth",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Boggard",
  Visible=false,
  BonusLanguages={
    {
      Name="Boggard",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Cyclops",
  Visible=false,
  BonusLanguages={
    {
      Name="Cyclops",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Dark Folk",
  Visible=false,
  BonusLanguages={
    {
      Name="Dark Folk",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Drow",
  Visible=false,
  BonusLanguages={
    {
      Name="Drow",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Drow Sign Language",
  Visible=false,
  BonusLanguages={
    {
      Name="Drow Sign Language",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Pidgin of Giant",
  Visible=false,
  BonusLanguages={
    {
      Name="Pidgin of Giant",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Sahuagin",
  Visible=false,
  BonusLanguages={
    {
      Name="Sahuagin",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Sphinx",
  Visible=false,
  BonusLanguages={
    {
      Name="Sphinx",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Tengu",
  Visible=false,
  BonusLanguages={
    {
      Name="Tengu",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Treant",
  Visible=false,
  BonusLanguages={
    {
      Name="Treant",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Vegepygmy",
  Visible=false,
  BonusLanguages={
    {
      Name="Vegepygmy",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Worg",
  Visible=false,
  BonusLanguages={
    {
      Name="Worg",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Daemon",
  Visible=false,
  BonusLanguages={
    {
      Name="Daemon",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ D'ziriak",
  Visible=false,
  BonusLanguages={
    {
      Name="D'ziriak",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Grippli",
  Visible=false,
  BonusLanguages={
    {
      Name="Grippli",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Protean",
  Visible=false,
  BonusLanguages={
    {
      Name="Protean",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Catfolk",
  Visible=false,
  BonusLanguages={
    {
      Name="Catfolk",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Samsaran",
  Visible=false,
  BonusLanguages={
    {
      Name="Samsaran",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Strix",
  Visible=false,
  BonusLanguages={
    {
      Name="Strix",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Vanaran",
  Visible=false,
  BonusLanguages={
    {
      Name="Vanaran",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Vishkanya",
  Visible=false,
  BonusLanguages={
    {
      Name="Vishkanya",
    },
  },
})
DefineTemplate({
  Name="Race Bonus Language ~ Wayang",
  Visible=false,
  BonusLanguages={
    {
      Name="Wayang",
    },
  },
})
