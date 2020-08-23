-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_abilities_familiar_apg.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Advanced Player's Guide",
  SourceShort="APG",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8fo1",
  SourceDate="2010-08",
})
ModifyAbility({
  Name="Standard Familiar List",
  Category="Internal",
  FollowerTypes={
    {
      Type="Familiar",
      IsValidFollower=function (follower)
        return follower.Name == "Familiar (Octopus)" or follower.Name == "Familiar (Centipede (House))" or follower.Name == "Familiar (Crab (Giant King))" or follower.Name == "Familiar (Fox)" or follower.Name == "Familiar (Scorpion (Greensting))" or follower.Name == "Familiar (Spider (Scarlet))"
      end,
      FollowerLevelAdjustment=0,
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Centipede (House))",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Stealth",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Crab (Giant King))",
  Category="Internal",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("FamiliarGrantedBonus_2"),
      Type={
        Name="Familiar",
      },
      Variables={
        "CMB Grapple",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Fox)",
  Category="Internal",
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("FamiliarGrantedBonus_2"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Reflex",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Octopus)",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Swim",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Scorpion (Greensting))",
  Category="Internal",
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("FamiliarGrantedBonus_4"),
      Type={
        Name="Familiar",
      },
      Variables={
        "INITIATIVE",
      },
    },
  },
})
DefineAbility({
  Name="Familiar Granted Bonus (Spider (Scarlet))",
  Category="Internal",
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("FamiliarGrantedBonus_3"),
      Type={
        Name="Familiar",
      },
      Variables={
        "Climb",
      },
    },
  },
})
