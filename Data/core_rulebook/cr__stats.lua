-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr__stats.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
DefineStat({
  Name="Strength",
  Key="STR",
  SortKey="1",
  Abbreviation="STR",
  StatMod=Formula("floor(SCORE/2)-5"),
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Default",
      },
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("STR"),
      Type={
        Name="Ability",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableToHitMeleeStr"] == 0)
        end,
      },
      Variables={
        "TOHIT.Melee",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("STR"),
      Type={
        Name="Ability",
      },
      Variables={
        "DAMAGE.Melee",
        "DAMAGE.Thrown",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("if(STR>0,0.5,1)"),
      Variables={
        "DAMAGEMULT:0",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Variables={
        "DAMAGEMULT:1",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("if(STR>0,1.5,1)"),
      Variables={
        "DAMAGEMULT:2",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("-STR"),
      Type={
        Name="Ability",
      },
      Variables={
        "DAMAGE.Splash",
      },
    },
    {
      Category="VAR",
      Formula=Formula("max(STRSCORE,AltSTRSCORE)"),
      Type={
        Name="Base",
      },
      Variables={
        "PreStatScore_STR",
      },
    },
    {
      Category="VAR",
      Formula=Formula("STRSCORE"),
      Variables={
        "LOADSCORE",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "TWOHANDDAMAGEDIVISOR",
        "OFFHANDLIGHTBONUS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("Racial Vision") then return true end
            return false
          end))
        end,
      },
      Variables={
        "RacialVision",
      },
    },
  },
  Definitions={
    {
      Name="MAXLEVELSTAT=STR",
      InitialValue=Formula("STRSCORE-10"),
    },
  },
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value=Formula("input(\"STATSCORE\")"),
    },
    {
      Target="Mod",
      Action="SET",
      Value=Formula("d20Mod(Score)"),
    },
    {
      Target="STR",
      Action="SET",
      Value=Formula("Mod"),
    },
    {
      Target="STRSCORE",
      Action="SET",
      Value=Formula("Score"),
    },
  },
})
DefineStat({
  Name="Dexterity",
  Key="DEX",
  SortKey="2",
  Abbreviation="DEX",
  StatMod=Formula("floor(SCORE/2)-5"),
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("DEX"),
      Type={
        Name="Ability",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableToHitRangedDex"] == 0)
        end,
      },
      Variables={
        "TOHIT.Ranged",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("10"),
      Type={
        Name="Base",
      },
      Variables={
        "AC",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("min(ACAbilityStat, min(MXDXEN,MODEQUIPMAXDEX))"),
      Type={
        Name="Ability",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ACStatNotDex"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("max(FightingDefensivelyAC,TotalDefenseAC)"),
      Type={
        Name="Dodge",
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("max(DEXSCORE,AltDEXSCORE)"),
      Type={
        Name="Base",
      },
      Variables={
        "PreStatScore_DEX",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DEX"),
      Variables={
        "INITCOMP",
      },
    },
    {
      Category="VAR",
      Formula=Formula("DEX"),
      Variables={
        "ACAbilityStat",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1000"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["ENCUMBERANCE"] == 0)
        end,
      },
      Variables={
        "MXDXEN",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["ENCUMBERANCE"] == 1)
        end,
      },
      Variables={
        "MXDXEN",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["ENCUMBERANCE"] == 2)
        end,
      },
      Variables={
        "MXDXEN",
      },
    },
  },
  Definitions={
    {
      Name="MAXLEVELSTAT=DEX",
      InitialValue=Formula("DEXSCORE-10"),
    },
  },
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value=Formula("input(\"STATSCORE\")"),
    },
    {
      Target="Mod",
      Action="SET",
      Value=Formula("d20Mod(Score)"),
    },
    {
      Target="DEX",
      Action="SET",
      Value=Formula("Mod"),
    },
    {
      Target="DEXSCORE",
      Action="SET",
      Value=Formula("Score"),
    },
  },
})
DefineStat({
  Name="Constitution",
  Key="CON",
  SortKey="3",
  Abbreviation="CON",
  StatMod=Formula("floor(SCORE/2)-5"),
  Bonuses={
    {
      Category="HP",
      Formula=Formula("CON"),
      Variables={
        "WOUNDPOINTS",
      },
    },
    {
      Category="HP",
      Formula=Formula("CON"),
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DAMAGE_HP"))
        end,
      },
      Variables={
        "BONUS",
      },
    },
    {
      Category="HP",
      Formula=Formula("CONSCORE*2"),
      Variables={
        "ALTHP",
      },
    },
    {
      Category="VAR",
      Formula=Formula("max(CONSCORE,AltCONSCORE)"),
      Type={
        Name="Base",
      },
      Variables={
        "PreStatScore_CON",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("DAMAGE_VW"))
        end,
      },
      Variables={
        "UseAlternateDamage",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (IsRuleEnabled("USE_CMB"))
        end,
      },
      Variables={
        "UseCombatManueverBonus",
      },
    },
  },
  Definitions={
    {
      Name="MAXLEVELSTAT=CON",
      InitialValue=Formula("CONSCORE-10"),
    },
  },
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value=Formula("input(\"STATSCORE\")"),
    },
    {
      Target="Mod",
      Action="SET",
      Value=Formula("d20Mod(Score)"),
    },
    {
      Target="CON",
      Action="SET",
      Value=Formula("Mod"),
    },
    {
      Target="CONSCORE",
      Action="SET",
      Value=Formula("Score"),
    },
  },
})
DefineStat({
  Name="Intelligence",
  Key="INT",
  SortKey="4",
  Abbreviation="INT",
  StatMod=Formula("floor(SCORE/2)-5"),
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("max(INTSCORE,AltINTSCORE)"),
      Type={
        Name="Base",
      },
      Variables={
        "PreStatScore_INT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("INTSCORE-10"),
      Variables={
        "MaxLevelStat_Int",
      },
    },
    {
      Category="LANG",
      Formula=Formula("max(INT,0)+var(\"AdditionalLanguage\")"),
      Variables={
        "BONUS",
      },
    },
    {
      Category="MODSKILLPOINTS",
      Formula=Formula("var(\"STAT.3.MOD.NOEQUIP.NOTEMP\")+BonusRetroSkillPoints"),
      Variables={
        "NUMBER",
      },
    },
  },
  Definitions={
    {
      Name="MAXLEVELSTAT=INT",
      InitialValue=Formula("MaxLevelStat_Int"),
    },
  },
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value=Formula("input(\"STATSCORE\")"),
    },
    {
      Target="Mod",
      Action="SET",
      Value=Formula("d20Mod(Score)"),
    },
    {
      Target="INT",
      Action="SET",
      Value=Formula("Mod"),
    },
    {
      Target="INTSCORE",
      Action="SET",
      Value=Formula("Score"),
    },
  },
})
DefineStat({
  Name="Wisdom",
  Key="WIS",
  SortKey="5",
  Abbreviation="WIS",
  StatMod=Formula("floor(SCORE/2)-5"),
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("max(WISSCORE,AltWISSCORE)"),
      Type={
        Name="Base",
      },
      Variables={
        "PreStatScore_WIS",
      },
    },
  },
  Definitions={
    {
      Name="MAXLEVELSTAT=WIS",
      InitialValue=Formula("WISSCORE-10"),
    },
  },
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value=Formula("input(\"STATSCORE\")"),
    },
    {
      Target="Mod",
      Action="SET",
      Value=Formula("d20Mod(Score)"),
    },
    {
      Target="WIS",
      Action="SET",
      Value=Formula("Mod"),
    },
    {
      Target="WISSCORE",
      Action="SET",
      Value=Formula("Score"),
    },
  },
})
DefineStat({
  Name="Charisma",
  Key="CHA",
  SortKey="6",
  Abbreviation="CHA",
  StatMod=Formula("floor(SCORE/2)-5"),
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("min(CHA, min(MXDXEN,MODEQUIPMAXDEX))"),
      Type={
        Name="Ability",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["ACStatIsCha"] == 1)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("max(CHASCORE,AltCHASCORE)"),
      Type={
        Name="Base",
      },
      Variables={
        "PreStatScore_CHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "NormalMount",
        "NormalFollower",
      },
    },
  },
  Definitions={
    {
      Name="MAXLEVELSTAT=CHA",
      InitialValue=Formula("CHASCORE-10"),
    },
  },
  Modifications={
    {
      Target="Score",
      Action="SET",
      Value=Formula("input(\"STATSCORE\")"),
    },
    {
      Target="Mod",
      Action="SET",
      Value=Formula("d20Mod(Score)"),
    },
    {
      Target="CHA",
      Action="SET",
      Value=Formula("Mod"),
    },
    {
      Target="CHASCORE",
      Action="SET",
      Value=Formula("Score"),
    },
  },
})
