-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_feats.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineAbility({
  Name="Acrobatic",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Acrobatics and Fly skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.113",
  Description={
    Format="You are skilled at leaping, jumping, and flying.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Acrobatics",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Acrobatics\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Fly",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Fly\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Acrobatic Steps",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you move, you may move through up to 15 feet of difficult terrain each round as if it were normal terrain. The effects of this feat stack with those provided by Nimble Moves (allowing you to move normally through a total of 20 feet of difficult terrain each round).",
    },
  },
  SourcePage="p.113",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Nimble Moves")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can easily move over and through obstacles.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Feat_NimbleMoves_Squares",
      },
      Formula=Formula("15"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Agile Maneuvers",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You add your Dexterity bonus to your base attack bonus and size bonus when determining your Combat Maneuver Bonus (see Chapter 8) instead of your Strength bonus.",
    },
  },
  SourcePage="p.117",
  Description={
    Format="You learned to use your quickness in place of brute force when performing combat maneuvers.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_STAT",
      },
      Formula=Formula("DEX-STR"),
      Conditions={
        function (character)
          return character.Size > "T"
        end,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Alertness",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on Perception and Sense Motive skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.117",
  Description={
    Format="You often notice things that others might miss.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Perception",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Perception\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Sense Motive",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Sense Motive\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Alignment Channel",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="Instead of its normal effect, you can choose to have your ability to channel energy heal or harm outsiders of the chosen alignment subtype. You must make this choice each time you channel energy. If you choose to heal or harm creatures of the chosen alignment subtype, your channel energy has no effect on other creatures. The amount of damage healed or dealt and the DC to halve the damage is otherwise unchanged.",
    },
  },
  Choice={
    Choose=ChooseString({"Chaos", "Evil", "Good", "Law"}),
  },
  SourcePage="p.117",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Energy")
      end)
    end,
  },
  Description={
    Format="You can channel your divine energy to harm or heal outsiders that possess your chosen alignment subtype.",
  },
  Types={
    "General",
    "AttackOption",
  },
})

DefineAbility({
  Name="Animal Affinity",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Handle Animal and Ride skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.118",
  Description={
    Format="You are skilled at working with animals and mounts.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Handle Animal",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Handle Animal\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Ride",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Ride\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Arcane Armor Mastery",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 20%% for any spells you cast this round. This bonus replaces, and does not stack with, the bonus granted by Arcane Armor Training.",
    },
  },
  SourcePage="p.118",
  TemporaryBonuses={
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="MISC",
          Variables={
            "SPELLFAILURE",
          },
          Formula=Formula("-20"),
          Type={
            Name="ArmorFailure",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Arcane Armor Training")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 7)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 7)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithArmorType("Medium"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Armor Proficiency (Medium)")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You have mastered the ability to cast spells while wearing armor.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Arcane Armor Training",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a swift action, reduce the arcane spell failure chance due to the armor you are wearing by 10%% for any spells you cast this round.",
    },
  },
  SourcePage="p.118",
  TemporaryBonuses={
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="MISC",
          Variables={
            "SPELLFAILURE",
          },
          Formula=Formula("-10"),
          Type={
            Name="ArmorFailure",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 3)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 3)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithArmorType("Light"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Armor Proficiency (Light)")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You have learned how to cast spells while wearing armor.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Arcane Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a swift action, you can imbue your weapons with a fraction of your power. For 1 round, your weapons deal +1 damage and are treated as magic for the purpose of overcoming damage reduction. For every five caster levels you possess, this bonus increases by +1, to a maximum of +5 at 20th level.",
    },
  },
  SourcePage="p.118",
  TemporaryBonuses={
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="COMBAT",
          Variables={
            "DAMAGE.Weapon",
          },
          Formula=Formula("ArcaneStrikeDamageBonus"),
        },
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (GetSpellCastingType(class) == "Arcane" and level >= 1)
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return (character.Variables["Caster_Level_Highest__Arcane"] >= 1)
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "Special Ability" and (ability.Type == "SpellLike")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="As a swift action, you can imbue your weapons with a fraction of your power. For 1 round, you gain a +%1 damage bonus and your weapons are treated as magic for the purpose of overcoming damage reduction.",
    Arguments={
      Formula("ArcaneStrikeDamageBonus"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArcaneStrikeDamageBonus",
      },
      Formula=Formula("min(1+ArcaneStrikeLVL/5,5)"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Armor Proficiency (Heavy)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
    },
  },
  AutomaticProficiencies={
    {
      Kind="Armor",
      Types={
        "ArmorProfHeavy",
      },
    },
  },
  DisplayName="Armor Proficiency, Heavy",
  SourcePage="p.118",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithArmorType("Medium"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Armor Proficiency (Medium)")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at wearing heavy armor.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Armor Proficiency (Light)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
    },
  },
  AutomaticProficiencies={
    {
      Kind="Armor",
      Types={
        "ArmorProfLight",
      },
    },
  },
  DisplayName="Armor Proficiency, Light",
  SourcePage="p.118",
  Description={
    Format="You are skilled at wearing light armor.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Armor Proficiency (Medium)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you wear a type of armor with which you are proficient, the armor check penalty for that armor applies only to Dexterity- and Strength-based skill checks.",
    },
  },
  AutomaticProficiencies={
    {
      Kind="Armor",
      Types={
        "ArmorProfMedium",
      },
    },
  },
  DisplayName="Armor Proficiency, Medium",
  SourcePage="p.118",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithArmorType("Light"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Armor Proficiency (Light)")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at wearing medium armor.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Athletic",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on Climb and Swim skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.118",
  Description={
    Format="You possess inherent physical prowess.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Climb",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Climb\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Swim",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Swim\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Augment Summoning",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Each creature you conjure with any summon spell gains a +4 enhancement bonus to Strength and Constitution for the duration of the spell that summoned it.",
    },
  },
  SourcePage="p.118",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Spell Focus (Conjuration)")
      end)
    end,
  },
  Description={
    Format="Your summoned creatures are more powerful and robust than most.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Bleeding Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit with a slashing or piercing weapon, your opponent takes 2d6 points of bleed damage (see Appendix 2) each round on his turn, in addition to the damage dealt by the critical hit. Bleed damage can be stopped by a DC 15 Heal skill check or through any magical healing. The effects of this feat stack.",
    },
  },
  SourcePage="p.118",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 11
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 11)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause opponents to bleed profusely.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Blind-Fight",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="In melee, every time you miss because of concealment (see Chapter 8), you can reroll your miss chance percentile roll one time to see if you actually hit. An invisible attacker gets no advantages related to hitting you in melee. That is, you don't lose your Dexterity bonus to Armor Class, and the attacker doesn't get the usual +2 bonus for being invisible. The invisible attacker's bonuses do still apply for ranged attacks, however. You do not need to make Acrobatics skill checks to move at full speed while blinded.",
    },
  },
  SourcePage="p.118",
  Description={
    Format="You are skillled at attacking opponents that you cannot clearly perceive.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Blinding Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit, your opponent is permanently blinded. A successful Fortitude save reduces this to dazzled for 1d4 rounds. The DC of this Fortitude save is equal to %1. This feat has no effect on creatures that do not rely on eyes for sight or creatures with more than two eyes (although multiple critical hits might cause blindness, at the GM's discretion). Blindness can be cured by heal, regeneration, remove blindness, or similar abilities.",
      Arguments={
        "10+BAB",
      },
    },
  },
  SourcePage="p.119",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 15
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits blind your opponents.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Brew Potion",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create a potion of any 3rd-level or lower spell that you know and that targets one or more creatures or objects. Brewing a potion takes 2 hours if its base price is 250 gp or less, otherwise brewing a potion takes 1 day for each 1,000 gp in its base price. When you create a potion, you set the caster level, which must be sufficient to cast the spell in question and no higher than your own level. To brew a potion, you must use up raw materials costing one half this base price. See the magic item creation rules in Chapter 15 for more information. When you create a potion, you make any choices that you would normally make when casting the spell. Whoever drinks the potion is the target of the spell.",
    },
  },
  SourcePage="p.119",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 3)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 3)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic potions.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Catch Off-Guard",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not suffer any penalties for using an improvised melee weapon. Unarmed opponents are flat-footed against any attacks you make with an improvised melee weapon.",
    },
  },
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Types={
        "Improvised",
      },
    },
  },
  SourcePage="p.119",
  Description={
    Format="Foes are surprised by your skilled use of unorthodox and improvised weapons.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Channel Smite",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Before you make a melee attack roll, you can choose to spend one use of your channel energy ability as a swift action. If you channel positive energy and you hit an undead creature, that creature takes an amount of additional damage equal to the damage dealt by your channel positive energy ability. If you channel negative energy and you hit a living creature, that creature takes an amount of additional damage equal to the damage dealt by your channel negative energy ability. Your target can make a Will save, as normal, to halve this additional damage. If your attack misses, the channel energy ability is still expended with no effect.",
    },
  },
  SourcePage="p.119",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Energy")
      end)
    end,
  },
  Description={
    Format="You can channel your divine energy through your weapon.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Cleave",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a standard action, you can make a single attack at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against a foe that is adjacent to the first and also within reach. You can only make one additional attack per round with this feat. When you use this feat, you take a -2 penalty to your Armor Class until your next turn.",
    },
  },
  SourcePage="p.119",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You can strike two adjacent foes with a single swing.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Combat Casting",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +4 bonus on concentration checks made to cast a spell or use a spell-like ability when casting on the defensive or while grappled.",
    },
  },
  SourcePage="p.119",
  Description={
    Format="You are adept at spellcasting when threatened or distracted.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Combat Expertise",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can choose to take a %1 penalty on melee attack rolls and combat maneuver checks to gain a +%2 dodge bonus to your Armor Class. You can only choose to use this feat when you declare that you are making an attack or a full-attack action with a melee weapon. The effects of this feat last until your next turn.",
      Arguments={
        "CombatExpertiseModifierAttack",
        "CombatExpertiseModifierAC",
      },
    },
  },
  SourcePage="p.119",
  TemporaryBonuses={
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="COMBAT",
          Variables={
            "AC",
          },
          Formula=Formula("CombatExpertiseModifierAC"),
          Type={
            Name="Dodge",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="PC",
        Bonus={
          Category="COMBAT",
          Variables={
            "TOHIT",
            "MELEE",
          },
          Formula=Formula("CombatExpertiseModifierAttack"),
          Type={
            Name="Base",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="PC",
        Bonus={
          Category="VAR",
          Variables={
            "CMB",
          },
          Formula=Formula("CombatExpertiseModifierAttack"),
          Type={
            Name="Base",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="PC",
        Bonus={
          Category="VAR",
          Variables={
            "CMD",
          },
          Formula=Formula("CombatExpertiseModifierAC"),
          Type={
            Name="Base",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can increase your defense at the expense of your accuracy.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CombatExpertiseModifier",
      },
      Formula=Formula("((BAB+(FlurryLVL-MonkBAB))/4)+1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "CombatExpertiseModifierAttack",
      },
      Formula=Formula("-CombatExpertiseModifier"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "CombatExpertiseModifierAC",
      },
      Formula=Formula("CombatExpertiseModifier"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
    "AttackOption",
    "ModifyAC",
  },
})

DefineAbility({
  Name="Combat Expertise",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can choose to take a %1 penalty on melee attack rolls and combat maneuver checks to gain a +%2 dodge bonus to your Armor Class. You can only choose to use this feat when you declare that you are making an attack or a full-attack action with a melee weapon. The effects of this feat last until your next turn.",
      Arguments={
        "CombatExpertiseModifierAttack",
        "CombatExpertiseModifierAC",
      },
    },
  },
  SourcePage="p.119",
  TemporaryBonuses={
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="COMBAT",
          Variables={
            "AC",
          },
          Formula=Formula("CombatExpertiseModifierAC"),
          Type={
            Name="Dodge",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="PC",
        Bonus={
          Category="COMBAT",
          Variables={
            "TOHIT",
            "MELEE",
          },
          Formula=Formula("CombatExpertiseModifierAttack"),
        },
      },
      {
        Target="PC",
        Bonus={
          Category="VAR",
          Variables={
            "CMB",
          },
          Formula=Formula("CombatExpertiseModifierAttack"),
        },
      },
      {
        Target="PC",
        Bonus={
          Category="VAR",
          Variables={
            "CMD",
          },
          Formula=Formula("CombatExpertiseModifierAC"),
        },
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["DirtyTricksterIntQualify"] >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can increase your defense at the expense of your accuracy.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CombatExpertiseModifier",
      },
      Formula=Formula("floor(BAB/4)+1"),
    },
    {
      Category="VAR",
      Variables={
        "CombatExpertiseModifierAttack",
      },
      Formula=Formula("-CombatExpertiseModifier"),
    },
    {
      Category="VAR",
      Variables={
        "CombatExpertiseModifierAC",
      },
      Formula=Formula("CombatExpertiseModifier"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
    "ModifyAC",
  },
})

DefineAbility({
  Name="Combat Reflexes",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You may make %1 additional attacks of opportunity per round. With this feat, you may also make attacks of opportunity while flat-footed.",
      Arguments={
        "CombatReflexesAttacks",
      },
    },
  },
  SourcePage="p.119",
  Description={
    Format="You can make additional attacks of opportunity.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CombatReflexesAttacks",
      },
      Formula=Formula("DEX"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Command Undead",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a standard action, you can use one of your uses of channel negative energy to enslave undead within 30 feet. Undead receive a Will save %1 to negate the effect.  Undead that fail their saves fall under your control, obeying your commands to the best of their ability, as if under the effects of control undead. Intelligent undead receive a new saving throw each day to resist your command. You can control up to your effective cleric level in Hit Dice of undead. If you use channel energy in this way, it has no other effect (it does not heal or harm nearby creatures). If an undead creature is under the control of another creature, you must make an opposed Charisma check whenever your orders conflict.",
      Arguments={
        "ClericChannelNegativeEnergyDC",
      },
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Negative Energy")
      end)
    end,
  },
  Description={
    Format="Using foul powers of necromancy, you can command undead creatures, making them into your servants.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Craft Magic Arms and Armor",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create magic weapons, armor, or shields. Enhancing a weapon, suit of armor, or shield takes 1 day for each 1,000 gp in the price of its magical features. To enhance a weapon, suit of armor, or shield, you must use up raw materials costing half of this total price. See the magic item creation rules in Chapter 15 for more information. The weapon, armor, or shield to be enhanced must be a masterwork item that you provide. Its cost is not included in the above cost. You can also mend a broken magic weapon, suit of armor, or shield if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item in the first place.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (GetSpellCastingType(class) == "" and level >= 5)
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return (character.Variables["CasterLevel_Highest"] >= 5)
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["MasterCraftsmanRanks"] >= 5)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic armor, shields, or weapons.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Craft Rod",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create magic rods. Crafting a rod takes 1 day for each 1,000 gp in its base price. To craft a rod, you must use up raw materials costing half of its base price. See the magic",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 9)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 9)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic rods.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Craft Staff",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create any staff whose prerequisites you meet. Crafting a staff takes 1 day for each 1,000 gp in its base price. To craft a staff, you must use up raw materials costing half of its base price. A newly created staff has 10 charges. See the magic item creation rules in Chapter 15 for more information.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 11)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 11)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic staves.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Craft Wand",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create a wand of any 4th-level or lower spell that you know. Crafting a wand takes 1 day for each 1,000 gp in its base price. To craft a wand, you must use up raw materials costing half of this base price. A newly created wand has 50 charges. See the magic item creation rules in Chapter 15 for more information.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 5)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 5)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic wands.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Craft Wondrous Item",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create a wide variety of magic wondrous items. Crafting a wondrous item takes 1 day for each 1,000 gp in its price. To create a wondrous item, you must use up raw materials costing half of its base price. See the magic item creation rules in Chapter 15 for more information. You can also mend a broken wondrous item if it is one that you could make. Doing so costs half the raw materials and half the time it would take to craft that item.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (GetSpellCastingType(class) == "" and level >= 3)
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return (character.Variables["CasterLevel_Highest"] >= 3)
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["MasterCraftsmanRanks"] >= 3)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create wondrous items, a type of magic item.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Critical Focus",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +4 circumstance bonus on attack rolls made to confirm critical hits.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 9
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 9)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are trained in the arts of causing pain.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Critical Mastery",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you score a critical hit, you can apply the effects of two critical feats in addition to the damage dealt.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Type == "Critical")
      end)
    end,
    function (character)
      return (character.Variables["CriticalMasteryQualify"] >= 1)
    end,
  },
  Description={
    Format="Your critical hits cause two additional effects.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Dazzling Display",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="While wielding the weapon in which you have Weapon Focus, you can perform a bewildering show of prowess as a full-round action. Make an Intimidate check to demoralize all foes within 30 feet who can see your display.",
    },
  },
  SourcePage="p.120",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus")
      end)
    end,
  },
  Description={
    Format="Your skill with your favored weapon can frighten enemies.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Deadly Aim",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can choose to take a -%1 penalty on all ranged attack rolls to gain a +%2 bonus on all ranged damage rolls. You must choose to use this feat before making an attack roll and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
      Arguments={
        "DeadlyAimModifier",
        "2*DeadlyAimModifier",
      },
    },
  },
  SourcePage="p.121",
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Ranged",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("2*DeadlyAimModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Ranged",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-DeadlyAimModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
  },
  Description={
    Format="You can make exceptionally deadly ranged attacks by pinpointing a foe's weak spot, at the expense of making the attack less likely to succeed.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "DeadlyAimModifier",
      },
      Formula=Formula("floor(BAB/4)+1"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Deadly Stroke",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a standard action, make a single attack with the weapon for which you have Greater Weapon Focus against a stunned or flat-footed opponent. If you hit, you deal double the normal damage and the target takes 1 point of Constitution bleed (see Appendix 2). The additional damage and bleed is not multiplied on a critical hit.",
    },
  },
  SourcePage="p.121",
  Conditions={
    function (character)
      return 4 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dazzling Display" or ability.Name == "Greater Weapon Focus" or ability.Name == "Shatter Defenses" or ability.Name == "Weapon Focus")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="With a well-placed strike, you can bring a swift and painful end to most foes.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Deafening Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit against an opponent, the victim is permanently deafened. A successful Fortitude save reduces the deafness to 1 round. The DC of this Fortitude save is equal to 10 + your base attack bonus. This feat has no effect on deaf creatures. This deafness can be cured by heal, regeneration, remove deafness, or a similar ability.",
    },
  },
  SourcePage="p.121",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 13
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause enemies to lose their hearing.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Deceitful",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Bluff and Disguise skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.121",
  Description={
    Format="You are skilled at deceiving others, both with the spoken word ans with physical disguises.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Bluff",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Bluff\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Disguise",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Disguise\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Defensive Combat Training",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You treat your total Hit Dice as your base attack bonus when calculating your Combat Maneuver Defense (see Chapter 8).",
    },
  },
  SourcePage="p.121",
  Description={
    Format="You excel at defending yourself from all manner of combat maneuvers.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMD_BAB",
      },
      Formula=Formula("TL-BAB"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Deflect Arrows",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You must have at least one hand free (holding nothing) to use this feat. Once per round when you would normally be hit with an attack from a ranged weapon, you may deflect it so that you take no damage from it. You must be aware of the attack and not flat-footed. Attempting to deflect a ranged attack doesn't count as an action. Unusually massive ranged weapons (such as boulders or ballista bolts) and ranged attacks generated by natural attacks or spell effects can't be deflected.",
    },
  },
  SourcePage="p.121",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Unarmed Strike")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can know arrows and other projectiles off course, preventing them from hitting you.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Deft Hands",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on Disable Device and Sleight of Hand skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.121",
  Description={
    Format="You have exceptional manual dexterity.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Disable Device",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Disable Device\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Sleight of Hand",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Sleight of Hand\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Diehard",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When your hit point total is below 0, but you are not dead, you automatically stabilize. You do not need to make a Constitution check each round to avoid losing additional hit points. You may choose to act as if you were disabled, rather than dying. You must make this decision as soon as you are reduced to negative hit points (even if it isn't your turn). If you do not choose to act as if you were disabled, you immediately fall unconscious. When using this feat, you are staggered. You can take a move action without further injuring yourself, but if you perform any standard action (or any other action deemed as strenuous, including some free actions, such as casting a quickened spell) you take 1 point of damage after completing the act. If your negative hit points are equal to or greater than your Constitution score, you immediately die.",
    },
  },
  SourcePage="p.122",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Endurance")
      end)
    end,
  },
  Description={
    Format="You are especially hard to kill. Not only do your wounds automatically stabilize when grievously injured, but you can remain conscious and continue to act even at death's door.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Disruptive",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="The DC to cast spells defensively increases by +4 for all enemies that are within your threatened area. This increase to casting spells defensively only applies if you are aware of the enemy's location and are capable of taking an attack of opportunity. If you can only take one attack of opportunity per round and have already used that attack, this increase does not apply.",
    },
  },
  SourcePage="p.122",
  Conditions={
    function (character)
      return (character.Variables["DisruptiveQualify"] >= 1)
    end,
  },
  Description={
    Format="Your training makes it difficult for enemy spellcasters to safely cast spells near you.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Dodge",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You gain a +1 dodge bonus to your AC. A condition that makes you lose your Dex bonus to AC also makes you lose the benefits of this feat.",
    },
  },
  SourcePage="p.122",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your training and reflexes allow you to react swiftly to avoid an opponent's attack.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Dodge",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Double Slice",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Add your Strength bonus to damage rolls made with your off-hand weapon.",
    },
  },
  SourcePage="p.122",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your off-hand weapon while dual-wielding strikes with greater power.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "DAMAGEMULT:0",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Elemental Channel",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="Instead of its normal effect, you can choose to have your ability to channel energy heal or harm outsiders of your chosen elemental subtype. You must make this choice each time you channel energy. If you choose to heal or harm creatures of your elemental subtype, your channel energy has no affect on other creatures. The amount of damage healed or dealt and the DC to halve the damage is otherwise unchanged.",
    },
  },
  Choice={
    Choose=ChooseString({"Air", "Earth", "Fire", "Water"}),
  },
  SourcePage="p.122",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Energy")
      end)
    end,
  },
  Description={
    Format="You can channel your divine energy to harm or heal outsiders that possess your chosen elemental subtype.",
  },
  Types={
    "General",
    "AttackOption",
  },
})

DefineAbility({
  Name="Empower Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=2,
  Benefits={
    {
      FormatString="All variable, numeric effects of an empowered spell are increased by half including bonuses to those dice rolls. Saving throws and opposed rolls are not affected, nor are spells without random variables. An empowered spell uses up a spell slot two levels higher than the spell's actual level.",
    },
  },
  Facts={
    AppliedName="Empowered",
  },
  SourcePage="p.122",
  Description={
    Format="You can increase the power of your spells, causing them to deal more damage.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Endurance",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="SkillBonus",
      FormatString="+%1 bonus on Swim checks made to resist nonlethal damage from exhaustion; Constitution checks made to continue running, to avoid nonlethal damage from a forced march, to hold your breath, and to avoid nonlethal damage from starvation or thirst; Fortitude saves made to avoid nonlethal damage from hot or cold environments and to resist damage from suffocation.",
      Arguments={
        "Feat_Endurance_SaveBonus",
      },
    },
  },
  Benefits={
    {
      FormatString="You gain a +%1 bonus on the following checks and saves: Swim checks made to resist nonlethal damage from exhaustion; Constitution checks made to continue running; Constitution checks made to avoid nonlethal damage from a forced march; Constitution checks made to hold your breath; Constitution checks made to avoid nonlethal damage from starvation or thirst; Fortitude saves made to avoid nonlethal damage from hot or cold environments; and Fortitude saves made to resist damage from suffocation. You may sleep in light or medium armor without becoming fatigued.",
      Arguments={
        "Feat_Endurance_SaveBonus",
      },
    },
  },
  SourcePage="p.112",
  Description={
    Format="Harsh conditions or long exertions do not easily tire you.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Feat_Endurance_SaveBonus",
      },
      Formula=Formula("4"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Enlarge Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=1,
  Benefits={
    {
      FormatString="You can alter a spell with a range of close, medium, or long to increase its range by 100%%. An enlarged spell uses up a spell slot one level higher than the spell's actual level. Spells whose ranges are not defined by distance, as well as spells whose ranges are not close, medium, or long, do not benefit from this feat.",
    },
  },
  Facts={
    AppliedName="Enlarged",
  },
  SourcePage="p.122",
  Description={
    Format="You can increase the range of your spells.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Eschew Materials",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can cast any spell with a material component costing 1 gp or less without needing that component. The casting of the spell still provokes attacks of opportunity as normal. If the spell requires a material component that costs more than 1 gp, you must have the material component on hand to cast the spell, as normal.",
    },
  },
  SourcePage="p.123",
  Description={
    Format="You can cast many spells without needing to utilize minor material components.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Exhausting Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you score a critical hit on a foe, your target immediately becomes exhausted. This feat has no effect on exhausted creatures.",
    },
  },
  SourcePage="p.123",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus" or ability.Name == "Tiring Critical")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 15
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause opponents to become exhausted.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Exotic Weapon Proficiency",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You make attack rolls with the weapon normally.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((true and (((weapon.IsType("Exotic"))))))
    end),
  },
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "%LIST",
      },
    },
  },
  SourcePage="p.123",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 1
    end,
  },
  Description={
    Format="You understand how to use your chosen exotic weapon in combat, and can utilize any special tricks or qualities that exotic weapon might allow.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Extend Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=1,
  Benefits={
    {
      FormatString="An extended spell lasts twice as long as normal. A spell with a duration of concentration, instantaneous, or permanent is not affected by this feat. An extended spell uses up a spell slot one level higher than the spell's actual level.",
    },
  },
  Facts={
    AppliedName="Extended",
  },
  SourcePage="p.123",
  Description={
    Format="You can make your spells last twice as long.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Extra Channel",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can channel energy two additional times per day.",
    },
  },
  SourcePage="p.123",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Positive Energy" or ability.Type == "Channel Negative Energy")
      end)
    end,
  },
  Description={
    Format="You can channel divine energy more often.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Extra Channel",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Extra Ki",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=true,
  Benefits={
    {
      FormatString="Your ki pool increases by 2.",
    },
  },
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Ki Pool")
      end)
    end,
  },
  Description={
    Format="You can use your ki pool more times per day than most.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "KiPoints",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Extra Lay On Hands",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=true,
  Benefits={
    {
      FormatString="You can use your lay on hands ability two additional times per day.",
    },
  },
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Lay on Hands")
      end)
    end,
  },
  Description={
    Format="You can use your lay on hands ability more often.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "LayOnHandsTimes",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Extra Mercy",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=true,
  Benefits={
    {
      FormatString="Select one additional mercy for which you qualify. When you use lay on hands to heal damage to one target, it also receives the additional effects of this mercy.",
    },
  },
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Lay on Hands" or ability.Type == "Mercy")
      end)
    end,
  },
  Description={
    Format="Your lay on hands ability adds an additional mercy.",
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Variables={
        "Mercy",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Extra Performance",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=true,
  Benefits={
    {
      FormatString="You can use bardic performance for 6 additional rounds per day.",
    },
  },
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Bardic Performance")
      end)
    end,
  },
  Description={
    Format="You can use your bardic performance ability more often than normal",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "BardicPerformanceDuration",
      },
      Formula=Formula("6"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Extra Rage",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=true,
  Benefits={
    {
      FormatString="You can rage for 6 additional rounds per day.",
    },
  },
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Rage")
      end)
    end,
  },
  Description={
    Format="You can use your rage ability more than narmal.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "RageDuration",
      },
      Formula=Formula("6"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Far Shot",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You only suffer a -1 penalty per full range increment between you and your target when using a ranged weapon.",
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Tracker ~ Range Penalty",
      },
    },
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot")
      end)
    end,
  },
  Description={
    Format="You are more accurate at longer ranges.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "RangePenaltyValue",
      },
      Formula=Formula("1"),
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Fleet",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=true,
  Benefits={
    {
      FormatString="While you are wearing light or no armor, your base speed increases by 5 feet. You lose the benefits of this feat if you carry a medium or heavy load.",
    },
  },
  Choice={
    Choose=ChooseNothing(),
  },
  SourcePage="p.124",
  Description={
    Format="You are faster than most.",
  },
  Bonuses={
    {
      Category="MOVEADD",
      Variables={
        "TYPE.Walk",
      },
      Formula=Formula("5"),
      Conditions={
        function (character)
          return (character.Variables["ENCUMBERANCE"] < 1) and (character.Variables["var(\"COUNT[EQTYPE.ARMOR.EQUIPPED.IS.MEDIUM]\")"] < 1) and (character.Variables["var(\"COUNT[EQTYPE.ARMOR.EQUIPPED.IS.HEAVY]\")"] < 1)
        end,
      },
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Forge Ring",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create magic rings. Crafting a ring takes 1 day for each 1,000 gp in its base price. To craft a ring, you must use up raw materials costing half of the base price. See the magic item creation rules in Chapter 15 for more information. You can also mend a broken ring if it is one that you could make. Doing so costs half the raw materials and half the time it would take to forge that ring in the first place.",
    },
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 7)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 7)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic rings.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Gorgon's Fist",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a standard action, make a single unarmed melee attack against a foe whose speed is reduced (such as from Scorpion Style). If the attack hits, you deal damage normally and the target is staggered until the end of your next turn unless it makes a Fortitude saving throw (DC 10 + 1/2 your character level + your Wis modifier). This feat has no effect on targets that are staggered.",
    },
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Unarmed Strike" or ability.Name == "Scorpion Style")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="With one well-placed blow, you leave your target reeling.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Great Cleave",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a standard action, you can make a single attack at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against a foe that is adjacent to the previous foe and also within reach. If you hit, you can continue to make attacks against foes adjacent to the previous foe, so long as they are within your reach. You cannot attack an individual foe more than once during this attack action. When you use this feat, you take a -2 penalty to your Armor Class until your next turn.",
    },
  },
  SourcePage="p.124",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Cleave" or ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 4
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You can strike many adjacent foes with a single blow.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Great Fortitude",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Fortitude saving throws.",
    },
  },
  SourcePage="p.124",
  Description={
    Format="You are resistant to poisons, diseases, and other deadly maladies.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Fortitude",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Greater Bull Rush",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +2 bonus on checks made to bull rush a foe. This bonus stacks with the bonus granted by Improved Bull Rush. Whenever you bull rush an opponent, his movement provokes attacks of opportunity from all of your allies (but not you).",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Bull Rush" or ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="Your bull rush attacks throw enemies off balance.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_BullRush",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Disarm",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +2 bonus on checks made to disarm a foe. This bonus stacks with the bonus granted by Improved Disarm. Whenever you successfully disarm an opponent, the weapon lands 15 feet away from its previous wielder, in a random direction.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise" or ability.Name == "Improved Disarm")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You can knock weapons far from an enemy's grasp.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Disarm",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Feint",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you use feint to cause an opponent to lose his Dexterity bonus, he loses that bonus until the beginning of your next turn, in addition to losing his Dexterity bonus against your next attack.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise" or ability.Name == "Improved Feint")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You are skilled at making foes overreact to your attacks.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Grapple",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +2 bonus on checks made to grapple a foe. This bonus stacks with the bonus granted by Improved Grapple. Once you have grappled a creature, maintaining the grapple is a move action. This feat allows you to make two grapple checks each round (to move, harm, or pin your opponent), but you are not required to make two checks. You only need to succeed at one of these checks to maintain the grapple.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Grapple" or ability.Name == "Improved Unarmed Strike")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="Maintaining a grapple is second nature to you.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Grapple",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Overrun",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +2 bonus on checks made to overrun a foe. This bonus stacks with the bonus granted by Improved Overrun. Whenever you overrun opponents, they provoke attacks of opportunity if they are knocked prone by your overrun.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Overrun" or ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="Enemies must dive to avoid your dangerous move.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Overrun",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Penetrating Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Your attacks made with weapons selected with Weapon Focus ignore up to 10 points of damage reduction. This amount is reduced to 5 points for damage reduction without a type (such as DR 10/-).",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Penetrating Strike" or ability.Name == "Weapon Focus")
      end)
    end,
    function (character)
      return (character.Variables["GreatPenetratingStrikeQualify"] >= 1)
    end,
  },
  Description={
    Format="Your attacks with your chosen weapon penetrate the defenses of most creatures.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Shield Focus",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Increase the AC bonus granted by any shield you are using by 1. This bonus stacks with the bonus granted by Shield Focus.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Shield Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithShieldType("Buckler")) + (character.IsProficientWithShieldType("Light")) + (character.IsProficientWithShieldType("Heavy"))) >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Shield Proficiency")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return (character.Variables["GreatShieldFocusQualify"] >= 1)
    end,
  },
  Description={
    Format="You are skilled at deflecting blows with your shield.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return ((character.HasEquipped(function (item) return item.IsType("Shield") end))) >= 1
        end,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Spell Focus",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select. This bonus stacks with the bonus from Spell Focus.",
    },
  },
  Choice={
    Choose=ChooseSchool(function (character, school)
      return (((stringMatch(school.Name, "ABILITY=FEAT") or stringMatch(school.Key, "ABILITY=FEAT")) and ((((stringMatch(school.Name, "Spell Focus") or stringMatch(school.Key, "Spell Focus")))))))
    end),
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Spell Focus")
      end)
    end,
  },
  Description={
    Format="Any spells you cast from your chosen school of magic are very hard to resist.",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "SCHOOL.%LIST",
      },
      Formula=Formula("2"),
      Type={
        Name="SpellFocus",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Greater Spell Penetration",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on caster level checks (1d20 + caster level) made to overcome a creature's spell resistance. This bonus stacks with the one from Spell Penetration.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Spell Penetration")
      end)
    end,
  },
  Description={
    Format="Your spells break through spell resistance much more easily than most.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Greater Sunder",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +2 bonus on checks made to sunder an item. This bonus stacks with the bonus granted by Improved Sunder. Whenever you sunder to destroy a weapon, shield, or suit of armor, any excess damage is applied to the item's wielder. No damage is transferred if you decide to leave the item with 1 hit point.",
    },
  },
  SourcePage="p.125",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Sunder" or ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="Your devastating strikes cleave through weapons and into their wielders, damaging both item and wielder alike in a single terrific strike.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Sunder",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Trip",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You receive a +2 bonus on checks made to trip a foe. This bonus stacks with the bonus granted by Improved Trip. Whenever you successfully trip an opponent, that opponent provokes attacks of opportunity.",
    },
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise" or ability.Name == "Improved Trip")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You can make free attacks on foes that you knock down.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Trip",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Two-Weapon Fighting",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a third attack with your off-hand weapon, albeit at a -10 penalty.",
    },
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Two-Weapon Fighting" or ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 19)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 19)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="You are incredibly skilled at fighting with two weapons at the same time.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "SECONDARYATTACKS",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Vital Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage. Roll the weapon's damage dice for the attack four times and add the results together before adding bonuses from Strength, weapon abilities (such as flaming), precision-based damage, and other damage bonuses. These extra damage dice are not multiplied on a critical hit, but are added to the total.",
    },
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Vital Strike" or ability.Name == "Vital Strike")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 16
    end,
  },
  Description={
    Format="You can make a single attack that deals a tremendous amount of damage.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Weapon Focus",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You gain a +1 bonus on attack rolls you make using the selected weapon. This bonus stacks with other bonuses on attack rolls, including those from Weapon Focus.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return (((stringMatch(weapon.Name, "ABILITY=FEAT") or stringMatch(weapon.Key, "ABILITY=FEAT")) and ((((stringMatch(weapon.Name, "Weapon Focus") or stringMatch(weapon.Key, "Weapon Focus")))))))
    end),
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["GreatWeapFocusQualify"] >= 1)
    end,
  },
  Description={
    Format="You are a master at your chosen weapon.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=%LIST",
      Variables={
        "TOHIT",
      },
      Formula=Formula("GreaterWeaponFocusToHit"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Greater Weapon Specialization",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You gain a +2 bonus on all damage rolls you make using the selected weapon. This bonus to damage stacks with other damage roll bonuses, including any you gain from Weapon Specialization.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return (((stringMatch(weapon.Name, "ABILITY=FEAT") or stringMatch(weapon.Key, "ABILITY=FEAT")) and ((((stringMatch(weapon.Name, "Weapon Specialization") or stringMatch(weapon.Key, "Weapon Specialization")))))))
    end),
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Greater Weapon Focus" or ability.Name == "Weapon Focus" or ability.Name == "Weapon Specialization")
      end)
    end,
    function (character)
      return (character.Variables["GreatWeapSpecQualify"] >= 1)
    end,
  },
  Description={
    Format="You deal extra damage when using your chosen weapon.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=%LIST",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Heighten Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=1,
  Benefits={
    {
      FormatString="A heightened spell has a higher spell level than normal (up to a maximum of 9th level). Unlike other metamagic feats, Heighten Spell actually increases the effective level of the spell that it modifies. All effects dependent on spell level (such as saving throw DCs and ability to penetrate a lesser globe of invulnerability) are calculated according to the heightened level. The heightened spell is as difficult to prepare and cast as a spell of its effective level.",
    },
  },
  Abilities={
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Types={
        "Heighten Spell",
      },
    },
  },
  Facts={
    AppliedName="Heightened +1",
  },
  SourcePage="p.126",
  Description={
    Format="You can cast spells as if they were a higher level.",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Improved Bull Rush",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not provoke an attack of opportunity when performing a bull rush combat maneuver. In addition, you receive a +2 bonus on checks made to bull rush a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to bull rush you.",
    },
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You are skilled at pushing your foes around.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_BullRush",
        "CMD_BullRush",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Channel",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Add 2 to the DC of saving throws made to resist the effects of your channel energy ability.",
    },
  },
  SourcePage="p.126",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Positive Energy" or ability.Type == "Channel Negative Energy")
      end)
    end,
  },
  Description={
    Format="Your channeled energy is harder to resist.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ClericChannelPositiveEnergyDC",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "PaladinChannelPositiveEnergyDC",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "ClericChannelNegativeEnergyDC",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "PowerOverUndeadCommandDC",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "PowerOverUndeadTurnDC",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Improved Counterspell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When counterspelling, you may use a spell of the same school that is one or more spell levels higher than the target spell.",
    },
  },
  SourcePage="p.126",
  Description={
    Format="You are skilled at countering the spells of others using similar spells.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Improved Critical",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="When using the weapon you selected, your threat range is doubled.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((character.IsProficientWith(weapon)))
    end),
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 8
    end,
  },
  Description={
    Format="Attacks made with your chosen weapon are quite deadly.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=%LIST",
      Variables={
        "CRITRANGEDOUBLE",
      },
      Formula=Formula("1"),
      Type={
        Name="NonStackingCrit",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Improved Disarm",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not provoke an attack of opportunity when performing a disarm combat maneuver. In addition, you receive a +2 bonus on checks made to disarm a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to disarm you.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at knocking weapons from a foe's grasp.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Disarm",
        "CMD_Disarm",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Familiar",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When choosing a familiar, the creatures listed below are also available to you (see the Pathfinder RPG Bestiary for statistics on these creatures). You may choose a familiar with an alignment up to one step away on each alignment axis (lawful through chaotic, good through evil).",
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Improved Familiar List",
      },
    },
  },
  SourcePage="p.127",
  Description={
    Format="This feat allows you to acquire a powerful familiar, but only when they could normally acquire a new familiar.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Improved Feint",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can make a Bluff check to feint in combat as a move action.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at fooling your opponents in combat.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Grapple",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not provoke an attack of opportunity when performing a grapple combat maneuver. In addition, you receive a +2 bonus on checks made to grapple a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to grapple you.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Unarmed Strike")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at grappling opponents.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Grapple",
        "CMD_Grapple",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Great Fortitude",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Once per day, you may reroll a Fortitude save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Great Fortitude")
      end)
    end,
  },
  Description={
    Format="You can draw upon an inner reserve to resist diseases, poisons, and other grievous harm.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Improved Initiative",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +4 bonus on initiative checks.",
    },
  },
  SourcePage="p.127",
  Description={
    Format="Your quick reflexes allow you to react quickly to danger.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "INITIATIVE",
      },
      Formula=Formula("4"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Improved Iron Will",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Once per day, you may reroll a Will save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Iron Will")
      end)
    end,
  },
  Description={
    Format="Your clarity of thought allows you to resist mental attacks.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Improved Lightning Reflexes",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Once per day, you may reroll a Reflex save. You must decide to use this ability before the results are revealed. You must take the second roll, even if it is worse.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Lightning Reflexes")
      end)
    end,
  },
  Description={
    Format="You have a knack for avoiding danger all around you.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Improved Overrun",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not provoke an attack of opportunity when performing an overrun combat maneuver. In addition, you receive a +2 bonus on checks made to overrrun a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to overrun you. Targets of your overrun attempt may not chose to avoid you.",
    },
  },
  SourcePage="p.127",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You are skilled at running down your foes.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Overrun",
        "CMD_Overrun",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Precise Shot",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Your ranged attacks ignore the AC bonus granted to targets by anything less than total cover, and the miss chance granted to targets by anything less than total concealment. Total cover and total concealment provide their normal benefits against your ranged attacks.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot" or ability.Name == "Precise Shot")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 19)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 19)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="Your ranged attacks ignore anything but total concealment and cover.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Improved Shield Bash",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you perform a shield bash, you may still apply the shield's shield bonus to your AC.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithShieldType("Buckler")) + (character.IsProficientWithShieldType("Light")) + (character.IsProficientWithShieldType("Heavy"))) >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Shield Proficiency")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can protect yourself with your shield, even if you use it to attack.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Sunder",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not provoke an attack of opportunity when performing a sunder combat maneuver. In addition, you receive a +2 bonus on checks made to sunder an item. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to sunder your gear.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Power Attack")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You are skilled at damaging your foes' weapons and armor.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Sunder",
        "CMD_Sunder",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Trip",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not provoke an attack of opportunity when performing a trip combat maneuver. In addition, you receive a +2 bonus on checks made to trip a foe. You also receive a +2 bonus to your Combat Maneuver Defense whenever an opponent tries to trip you.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at sending your opponents to the ground.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "CMB_Trip",
        "CMD_Trip",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Improved Two-Weapon Fighting",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="In addition to the standard single extra attack you get with an off-hand weapon, you get a second attack with it, albeit at a -5 penalty.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You are skilled at fighting with two weapons.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "SECONDARYATTACKS",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Improved Unarmed Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You are considered to be armed even when unarmed-you do not provoke attacks of opportunity when you attack foes while unarmed. Your unarmed strikes can deal lethal or nonlethal damage, at your choice.",
    },
  },
  SourcePage="p.128",
  Description={
    Format="You are skilled while fighting unarmed.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Improved Vital Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage. Roll the weapon's damage dice for the attack three times and add the results together before adding bonuses from Strength, weapon abilities (such as flaming), precision-based damage, and other damage bonuses. These extra damage dice are not multiplied on a critical hit, but are added to the total.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Vital Strike")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="You can make a single attack that deals a large amount of damage.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Improvised Weapon Mastery",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not suffer any penalties for using an improvised weapon. Increase the amount of damage dealt by the improvised weapon by one step (for example, 1d4 becomes 1d6) to a maximum of 1d8 (2d6 if the improvised weapon is two-handed). The improvised weapon has a critical threat range of 19-20, with a critical multiplier of W2.",
    },
  },
  SourcePage="p.128",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Catch Off-Guard" or ability.Name == "Throw Anything")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 8
    end,
  },
  Description={
    Format="You can turn nearly any object into a deadly weapon, from a razor sharp chair leg to a sack of flour.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Intimidating Prowess",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Add your Strength modifier to Intimidate skill checks in addition to your Charisma modifier.",
    },
  },
  SourcePage="p.128",
  Description={
    Format="Your physical might is intimidating to others.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Intimidate",
      },
      Formula=Formula("STR"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Iron Will",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Will saving throws.",
    },
  },
  SourcePage="p.129",
  Description={
    Format="You are more resistant to mental effects.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Will",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Leadership",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="This feat enables you to attract a loyal cohort and a number of devoted subordinates who assist you. A cohort is generally an NPC with class levels, while followers are typically lower level NPCs. See Table 5-2 for what level of cohort and how many followers you can recruit.",
    },
  },
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Leadership Score",
      },
    },
  },
  SourcePage="p.129",
  Conditions={
    function (character)
      return character.Level >= 7
    end,
  },
  Description={
    Format="You attract followers to your cause and a companion to join you on your adventure.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "LeadershipMaxCohortLvl",
      },
      Formula=Formula("min((TL-2),(((LeadershipScore+6)*7)/10)-4)"),
    },
    {
      Category="VAR",
      Variables={
        "LeadershipScore",
      },
      Formula=Formula("(TL+LeadershipAbilityScoreMod)"),
    },
    {
      Category="VAR",
      Variables={
        "LeadershipAbilityScoreMod",
      },
      Formula=Formula("CHA"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Lightning Reflexes",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Reflex saving throws.",
    },
  },
  SourcePage="p.130",
  Description={
    Format="You have faster reflexes than normal.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Reflex",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Lightning Stance",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="If you take two actions to move or a withdraw action in a turn, you gain 50%% concealment for 1 round.",
    },
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge" or ability.Name == "Wind Stance")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="The speed at which you move makes it nearly impossible for opponents to strike you.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Lunge",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can increase the reach of your melee attacks by 5 feet until the end of your turn by taking a -2 penalty to your AC until your next turn. You must decide to use this ability before any attacks are made.",
    },
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You can strike foes that would normally be out of reach.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Magical Aptitude",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Spellcraft checks and Use Magic Device checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.130",
  Description={
    Format="You are skilled at spellcasting and using magic items.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Spellcraft",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Spellcraft\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Use Magic Device",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Use Magic Device\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Manyshot",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When making a full-attack action with a bow, your first attack fires two arrows. If the attack hits, both arrows hit. Apply precision-based damage (such as sneak attack) and critical hit damage only once for this attack. Damage bonuses from using a composite bow with a high Strength bonus apply to each arrow, as do other damage bonuses, such as a ranger's favored enemy bonus. Damage reduction and resistances apply separately to each arrow.",
    },
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot" or ability.Name == "Rapid Shot")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You can fire multiple arrows at a single target.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Martial Weapon Proficiency",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You make attack rolls with the selected weapon normally (without the non-proficient penalty).",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((not (character.IsProficientWith(weapon)) and (((weapon.IsType("Martial"))))))
    end),
  },
  AutomaticProficiencies={
    {
      Kind="Weapon",
      Names={
        "%LIST",
      },
    },
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return not (1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Martial Weapon Proficiency Output")
      end))
    end,
  },
  Description={
    Format="You understand how to use your chosen martial weapon in combat.",
  },
  Types={
    "Combat",
    "MartialWeaponProficiency",
  },
})

DefineAbility({
  Name="Master Craftsman",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="Choose one Craft or Profession skill in which you possess at least 5 ranks. You receive a +2 bonus on your chosen Craft or Profession skill. Ranks in your chosen skill count as your caster level for the purposes of qualifying for the Craft Magic Arms and Armor and Craft Wondrous Item feats. You can create magic items using these feats, substituting your ranks in the chosen skill for your total caster level. You must use the chosen skill for the check to create the item. The DC to create the item still increases for any necessary spell requirements (see the magic item creation rules in Chapter 15). You cannot use this feat to create any spell-trigger or spell-activation item.",
    },
  },
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((character.Ranks(skill) >= 5)) or ((skill.IsType("Craft"))) or ((skill.IsType("Profession")))
    end),
    MaxTimes=1,
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return ((character.Skill("(122,133): Craft").ranks >= 5 and 1 or 0) + (character.Skill("(122,146): Profession").ranks >= 5 and 1 or 0)) >= 1
    end,
  },
  Description={
    Format="Your superior crafting skills allow you to create simple magic items.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "LIST",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "MasterCraftsmanRanks",
      },
      Formula=Formula("var(\"SKILLRANK=%LIST\")"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Maximize Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=3,
  Benefits={
    {
      FormatString="All variable, numeric effects of a spell modified by this feat are maximized. Saving throws and opposed rolls are not affected, nor are spells without random variables. A maximized spell uses up a spell slot three levels higher than the spell's actual level. An empowered, maximized spell gains the separate benefits of each feat: the maximum result plus half the normally rolled result.",
    },
  },
  Facts={
    AppliedName="Maximized",
  },
  SourcePage="p.130",
  Description={
    Format="Your spells have the maximum possible effect.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Medusa's Wrath",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you use the full-attack action and make at least one unarmed strike, you can make two additional unarmed strikes at your highest base attack bonus. These bonus attacks must be made against a dazed, flat-footed, paralyzed, staggered, stunned, or unconscious foe.",
    },
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Unarmed Strike" or ability.Name == "Gorgon's Fist" or ability.Name == "Scorpion Style")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="You can take advantage of your opponent's confusion, delivering multiple blows.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Mobility",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +4 dodge bonus to Armor Class against attacks of opportunity caused when you move out of or within a threatened area. A condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses. Dodge bonuses stack with each other, unlike most types of bonuses.",
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Aspect Combat Bonus ~ Mobility",
      },
    },
  },
  SourcePage="p.130",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can easily move through a dangerous melee.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Mounted Archery",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="The penalty you take when using a ranged weapon while mounted is halved: -2 instead of -4 if your mount is taking a double move, and -4 instead of -8 if your mount is running.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Mounted Combat")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Ride").ranks >= 1 and 1 or 0)) >= 1
    end,
  },
  Description={
    Format="You are skilled at making ranged attacks while mounted.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Mounted Combat",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Once per round when your mount is hit in combat, you may attempt a Ride check (as an immediate action) to negate the hit. The hit is negated if your Ride check result is greater than the opponent's attack roll.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return ((character.BestSkillOfType("Ride").ranks >= 1 and 1 or 0)) >= 1
    end,
  },
  Description={
    Format="You are adept at guiding your mount through combat.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Natural Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can complete the verbal and somatic components of spells while using wild shape. You substitute various noises and gestures for the normal verbal and somatic components of a spell. You can also use any material components or focuses you possess, even if such items are melded within your current form. This feat does not permit the use of magic items while you are in a form that could not ordinarily use them, and you do not gain the ability to speak while using wild shape.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["WildShapeProgression"] >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["ShamanWildShapeProgression"] >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_WIS"] >= 13)
    end,
  },
  Description={
    Format="You can cast spells even while in a form that cannot normally cast spells.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Nimble Moves",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Aspects={
    {
      Name="CombatBonus",
      FormatString="You may move through %1 feet of difficult terrain as normal.",
      Arguments={
        "Feat_NimbleMoves_Squares",
      },
    },
  },
  Benefits={
    {
      FormatString="Whenever you move, you may move through 5 feet of difficult terrain each round as if it were normal terrain. This feat allows you to take a 5-foot step into difficult terrain.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can move across a single obstacle with ease.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "Feat_NimbleMoves_Squares",
      },
      Formula=Formula("5"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Penetrating Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Your attacks made with weapons selected with Weapon Focus ignore up to 5 points of damage reduction. This feat does not apply to damage reduction without a type (such as DR 10/-).",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PenetratingStrikeQualify"] >= 1)
    end,
  },
  Description={
    Format="Your attacks with your chosen weapon are capable of penetrating the defenses of some creatures.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Persuasive",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on Diplomacy and Intimidate skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.131",
  Description={
    Format="You are skilled at swaying attitudes and intimidating others into your way of thinking.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Diplomacy",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Diplomacy\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Intimidate",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Intimidate\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Pinpoint Targeting",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a standard action, make a single ranged attack. The target does not gain any armor, natural armor, or shield bonuses to its Armor Class. You do not gain the benefit of this feat if you move this round.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Precise Shot" or ability.Name == "Point-Blank Shot" or ability.Name == "Precise Shot")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 19)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 19)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 16
    end,
  },
  Description={
    Format="You can target the weak points in your opponent's armor.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Point-Blank Shot",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +1 bonus on attack and damage rolls with ranged weapons at ranges of up to 30 feet.",
    },
  },
  SourcePage="p.131",
  Description={
    Format="You are especially accurate when making ranged attacks against close target.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT-SHORTRANGE",
        "DAMAGE-SHORTRANGE",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Power Attack",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can choose to take a -%1 penalty on all melee attack rolls and combat maneuver checks to gain a +%2 bonus on all melee damage rolls. This bonus to damage is increased by half (+50%%) if you are making an attack with a two-handed weapon, a one handed weapon using two hands, or a primary natural weapon that adds 1-1/2 times your Strength modifier on damage rolls. This bonus to damage is halved (-50%%) if you are making an attack with an off-hand weapon or secondary natural weapon. You must choose to use this feat before making an attack roll, and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.",
      Arguments={
        "PowerAttackModifier",
        "PowerAttackDamageModifier",
      },
    },
  },
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Power Attack (Light)",
        "Power Attack (Off-Hand)",
        "Power Attack (One-Handed)",
        "Power Attack (Two-Handed)",
      },
    },
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Power Attack (Flurry)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Monk" and level >= 1)
          end)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Power Attack (Natural Secondary)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Internal" and (ability.Type == "NaturalAttackSecondary")
          end)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Power Attack (Natural Primary)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Internal" and (ability.Type == "NaturalAttackPrimary")
          end)
        end,
      },
    },
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Power Attack (Natural Primary - Single)",
      },
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Internal" and (ability.Type == "NaturalAttackPrimarySingle")
          end)
        end,
      },
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You can make exceptionally deadly melee attacks by sacrificing accuracy for strength.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "PowerAttackModifier",
      },
      Formula=Formula("(BAB/4)+1"),
    },
    {
      Category="VAR",
      Variables={
        "PowerAttackDamageBase",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "PowerAttackDamageModifier",
      },
      Formula=Formula("PowerAttackDamageBase*floor(PowerAttackModifier)"),
    },
    {
      Category="VAR",
      Variables={
        "MonkFlurryPowerAttackModifier",
      },
      Formula=Formula("BAB+(FlurryLVL-MonkBAB)"),
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Precise Shot",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can shoot or throw ranged weapons at an opponent engaged in melee without taking the standard -4 penalty on your attack roll.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot")
      end)
    end,
  },
  Description={
    Format="You are adept at firing ranged attacks into melee.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Quick Draw",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can draw a weapon as a free action instead of as a move action. You can draw a hidden weapon (see the Sleight of Hand skill) as a move action. A character who has selected this feat may throw weapons at his full normal rate of attacks (much like a character with a bow). Alchemical items, potions, scrolls, and wands cannot be drawn quickly using this feat.",
    },
  },
  SourcePage="p.131",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 1
    end,
  },
  Description={
    Format="You can draw weapons faster than most.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Quicken Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=4,
  Benefits={
    {
      FormatString="Casting a quickened spell is a swift action. You can perform another action, even casting another spell, in the same round as you cast a quickened spell. A spell whose casting time is more than 1 round or 1 full-round action cannot be quickened. A quickened spell uses up a spell slot four levels higher than the spell's actual level. Casting a quickened spell doesn't provoke an attack of opportunity.",
    },
  },
  Facts={
    AppliedName="Quickened",
  },
  SourcePage="p.132",
  Description={
    Format="You can cast spells in the fraction of the normal time.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Rapid Reload",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="The time required for you to reload your chosen type of crossbow is reduced to a free action (for a hand or light crossbow) or a move action (for a heavy crossbow). Reloading a crossbow still provokes an attack of opportunity.&nl;If you have selected this feat for hand crossbow or light crossbow, you may fire that weapon as many times in a full-attack action as you could attack if you were using a bow.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return (((stringMatch(weapon.Name, "Crossbow (Hand)") or stringMatch(weapon.Key, "Crossbow (Hand)")))) or (((stringMatch(weapon.Name, "Crossbow (Heavy)") or stringMatch(weapon.Key, "Crossbow (Heavy)")))) or (((stringMatch(weapon.Name, "Crossbow (Light)") or stringMatch(weapon.Key, "Crossbow (Light)"))))
    end),
  },
  AdditionalRequirementText=":Weapon Proficiency (crossbow type chosen).",
  SourcePage="p.132",
  Info={
    Prerequisite="Weapon Proficiency (crossbow type chosen).",
    Normal="A character without this feat needs a move action to reload a hand or light crossbow, or a full-round action to reload a heavy crossbow.",
    Special="You can gain Rapid Reload multiple times. Each time you take the feat, it applies to a new type of crossbow.",
  },
  Conditions={
    function (character)
      return ((character.IsProficientWithWeaponType("Crossbow"))) >= 1
    end,
  },
  Description={
    Format="Choose a type of crossbow (hand, light, or heavy). You can reload such weapons quickly.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Rapid Shot",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When making a full-attack action with a ranged weapon, you can fire one additional time this round. All of your attack rolls take a -2 penalty when using Rapid Shot.",
    },
  },
  SourcePage="p.132",
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Ranged",
        Bonus={
          Category="WEAPON",
          Variables={
            "ATTACKS",
          },
          Formula=Formula("1"),
        },
      },
      {
        Target="EQ|Weapon,Ranged",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-2"),
        },
      },
    },
  },
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can make an additional ranged attack.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Ride-By Attack",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you are mounted and use the charge action, you may move and attack as if with a standard charge and then move again (continuing the straight line of the charge). Your total movement for the round can't exceed double your mounted speed. You and your mount do not provoke an attack of opportunity from the opponent that you attack.",
    },
  },
  SourcePage="p.132",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Mounted Combat")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Ride").ranks >= 1 and 1 or 0)) >= 1
    end,
  },
  Description={
    Format="While mounted, you can move, strike at a foe, and then continue moving.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Run",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When running, you move five times your normal speed (if wearing medium, light, or no armor and carrying no more than a medium load) or four times your speed (if wearing heavy armor or carrying a heavy load). If you make a jump after a running start (see the Acrobatics skill description), you gain a +4 bonus on your Acrobatics check. While running, you retain your Dexterity bonus to your Armor Class.",
    },
  },
  SourcePage="p.132",
  Description={
    Format="You are swift of foot.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Scorpion Style",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="To use this feat, you must make a single unarmed attack as a standard action. If this unarmed attack hits, you deal damage normally, and the target's base land speed is reduced to 5 feet for a number of rounds equal to your Wisdom modifier unless it makes a Fortitude saving throw (DC %1).",
      Arguments={
        "10+(TL/2)+WIS",
      },
    },
  },
  SourcePage="p.132",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Unarmed Strike")
      end)
    end,
  },
  Description={
    Format="You can perform an unarmed strike that greatly hampers your target's movement.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Scribe Scroll",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can create a scroll of any spell that you know. Scribing a scroll takes 2 hours if its base price is 250 gp or less, otherwise scribing a scroll takes 1 day for each 1,000 gp in its base price. To scribe a scroll, you must use up raw materials costing half of this base price. See the magic item creation rules in Chapter 15 for more information.",
    },
  },
  SourcePage="p.132",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return 1 <= #filter(ipairs(character.ClassLevels),
        function (class, level)
          return (GetSpellCastingType(class) == "" and level >= 1)
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CasterLevel_Highest"] >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can create magic scrolls.",
  },
  Types={
    "ItemCreation",
  },
})

DefineAbility({
  Name="Selective Channeling",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you channel energy, you can choose %1 targets in the area. These targets are not affected by your channeled energy.",
      Arguments={
        "CHA",
      },
    },
  },
  SourcePage="p.132",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Positive Energy" or ability.Type == "Channel Negative Energy")
      end)
    end,
    function (character)
      return (character.Variables["PreStatScore_CHA"] >= 13)
    end,
  },
  Description={
    Format="You can choose whom to affect when you channel energy.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Self-Sufficient",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Heal checks and Survival checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.133",
  Description={
    Format="You know how to get along in the wild and how to effectively treat wounds.:",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Heal",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Heal\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Survival",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Survival\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Shatter Defenses",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Any shaken, frightened, or panicked opponent hit by you this round is flat-footed to your attacks until the end of your next turn. This includes any additional attacks you make this round.",
    },
  },
  SourcePage="p.133",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus" or ability.Name == "Dazzling Display")
      end)
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="Your skill with your chosen weapon leaves opponents unable to defend themselves if you strike them when their defenses are already compromised.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Shield Focus",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Increase the AC bonus granted by any shield you are using by 1.",
    },
  },
  SourcePage="p.133",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithShieldType("Buckler")) + (character.IsProficientWithShieldType("Light")) + (character.IsProficientWithShieldType("Heavy"))) >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Shield Proficiency")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
  },
  Description={
    Format="You are skilled at deflecting blows with your shield.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return ((character.HasEquipped(function (item) return item.IsType("Shield") end))) >= 1
        end,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Shield Master",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not suffer any penalties on attack rolls made with a shield while you are wielding another weapon. Add your shield's shield bonus to attacks and damage rolls made with the shield as if it was an enhancement bonus.",
    },
  },
  SourcePage="p.133",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Shield Bash" or ability.Name == "Shield Slam" or ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithShieldType("Buckler")) + (character.IsProficientWithShieldType("Light")) + (character.IsProficientWithShieldType("Heavy"))) >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Shield Proficiency")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="Your mastery of the shield allows you to fight with it without hindrance.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.ShieldBash",
      },
      Formula=Formula("var(\"ARMOR.SHIELD.EQUIPPED.0.ACBONUS\")-var(\"ARMOR.SHIELD.EQUIPPED.0.BASEAC\")"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "DAMAGE.ShieldBash",
      },
      Formula=Formula("var(\"ARMOR.SHIELD.EQUIPPED.0.ACBONUS\")-var(\"ARMOR.SHIELD.EQUIPPED.0.BASEAC\")"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShieldBashAttackBonus",
        "ShieldBashDamageBonus",
      },
      Formula=Formula("var(\"ARMOR.SHIELD.EQUIPPED.0.ACBONUS\")-var(\"ARMOR.SHIELD.EQUIPPED.0.BASEAC\")"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Shield Proficiency",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you use a shield (except a tower shield), the shield's armor check penalty only applies to Strength- and Dexterity-based skills.",
    },
  },
  AutomaticProficiencies={
    {
      Kind="Shield",
      Types={
        "Buckler",
        "Heavy",
        "Light",
      },
    },
  },
  SourcePage="p.133",
  Description={
    Format="You are trained in how to properly use a shield.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Shield Slam",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Any opponents hit by your shield bash are also hit with a free bull rush attack, substituting your attack roll for the combat maneuver check (see Chapter 8). This bull rush does not provoke an attack of opportunity. Opponents who cannot move back due to a wall or other surface are knocked prone after moving the maximum possible distance. You may choose to move with your target if you are able to take a 5-foot step or to spend an action to move this turn.",
    },
  },
  SourcePage="p.133",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Shield Bash" or ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithShieldType("Buckler")) + (character.IsProficientWithShieldType("Light")) + (character.IsProficientWithShieldType("Heavy"))) >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Shield Proficiency")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="In the right position, your shield can be used to send opponents flying.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Shot on the Run",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a full-round action, you can move up to your speed and make a single ranged attack at any point during your movement.",
    },
  },
  SourcePage="p.133",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge" or ability.Name == "Mobility" or ability.Name == "Point-Blank Shot")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 4
    end,
  },
  Description={
    Format="You can move, fire a ranged weapon, and move again before your foes can react.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Sickening Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit, your opponent becomes sickened for 1 minute. The effects of this feat do not stack. Additional hits instead add to the effect's duration.",
    },
  },
  SourcePage="p.133",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 11
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 11)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause opponents to become sickened.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Silent Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=1,
  Benefits={
    {
      FormatString="A silent spell can be cast with no verbal components. Spells without verbal components are not affected. A silent spell uses up a spell slot one level higher than the spell's actual level.",
    },
  },
  Facts={
    AppliedName="Silent",
  },
  SourcePage="p.133",
  Description={
    Format="You can cast your spells without making any sound.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Simple Weapon Proficiency",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You make attack rolls with simple weapons without penalty.",
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Weapon Prof ~ Simple",
      },
    },
  },
  SourcePage="p.133",
  Description={
    Format="You are trained in the use of basic weapons.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Skill Focus",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +3 bonus on all checks involving the chosen skill. If you have 10 or more ranks in that skill, this bonus increases to +6.",
    },
  },
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end),
  },
  SourcePage="p.134",
  Description={
    Format="You are particularly adept at your chosen skill.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "%LIST",
      },
      Formula=Formula("3"),
      Type={
        Name="SkillFocus",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "General",
    "SkillFocus",
  },
})

DefineAbility({
  Name="Snatch Arrows",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When using the Deflect Arrows feat you may choose to catch the weapon instead of just deflecting it. Thrown weapons can immediately be thrown back as an attack against the original attacker (even though it isn't your turn) or kept for later use. You must have at least one hand free (holding nothing) to use this feat.",
    },
  },
  SourcePage="p.134",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Deflect Arrows" or ability.Name == "Improved Unarmed Strike")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Instead of knocking an arrow or ranged attack aside, you can catch it in mid-flight.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Spell Focus",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select.",
    },
  },
  Choice={
    Choose=ChooseSchool(function (character, school)
      return ((true))
    end),
  },
  SourcePage="p.134",
  Description={
    Format="Any spells you cast of your chosen school of magic are more difficult to resist.",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "SCHOOL.%LIST",
      },
      Formula=Formula("1"),
      Type={
        Name="SpellFocus",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Spell Mastery",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="Each time you take this feat, choose a number of spells that you already know equal to your Intelligence modifier. From that point on, you can prepare these spells without referring to a spellbook.",
    },
  },
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((spell.IsInClassList("Wizard") and (((character.KnowsSpell(spell))))))
    end),
  },
  Selections=Formula("var(\"STAT.3.MOD.NOEQUIP.NOTEMP\")"),
  SourcePage="p.134",
  Conditions={
    function (character)
      return (character.Variables["SpellMasteryQualify"] >= 1)
    end,
  },
  Description={
    Format="You have mastered a small handfull of spells, and can prepare these spells without referencing your spellbooks at all.",
  },
  Types={
    "General",
    "WizardBonus",
  },
})

DefineAbility({
  Name="Spell Penetration",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on caster level checks (1d20 + caster level) made to overcome a creature's spell resistance.",
    },
  },
  SourcePage="p.134",
  Description={
    Format="Your spells break through spell resistance more easily than most.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Spellbreaker",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Enemies in your threatened area that fail their checks to cast spells defensively provoke attacks of opportunity from you.",
    },
  },
  SourcePage="p.134",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Disruptive")
      end)
    end,
    function (character)
      return (character.Variables["SpellBreakerQualify"] >= 1)
    end,
  },
  Description={
    Format="You can strike at enemy spellcasters who fail to cast defensively when you threaten them.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Spirited Charge",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When mounted and using the charge action, you deal double damage with a melee weapon (or triple damage with a lance).",
    },
  },
  SourcePage="p.134",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Mounted Combat" or ability.Name == "Ride-By Attack")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Ride").ranks >= 1 and 1 or 0)) >= 1
    end,
  },
  Description={
    Format="Your mounted charge deals a tremendous amount of damage.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Spring Attack",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="As a full round action, you can move up to your speed and make a single melee attack without provoking any attacks of opportunity from the target of your attack. You can move both before and after the attack, but you must move at least 10 feet before the attack and the total distance that you move cannot be greater than your speed. You cannot use this ability to attack a foe that is adjacent to you at the start of your turn.",
    },
  },
  SourcePage="p.134",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge" or ability.Name == "Mobility")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 4
    end,
  },
  Description={
    Format="You can deftly move up to a foe, strike, and withdraw before he can react.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Staggering Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit, your opponent becomes staggered for 1d4+1 rounds. A successful Fortitude save reduces the duration to 1 round. The DC of this Fortitude save is equal to %1. The effects of this feat do not stack. Additional hits instead add to the duration.",
      Arguments={
        "10+BAB",
      },
    },
  },
  SourcePage="p.134",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 13
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause opponents to slow down.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Stand Still",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When a foe provokes an attack of opportunity due to moving through your adjacent squares, you can make a combat maneuver check as your attack of opportunity. If successful, the enemy cannot move for the rest of his turn. An enemy can still take the rest of his action, but cannot move. This feat also applies to any creature that attempts to move from a square that is adjacent to you if such movement provokes an attack of opportunity.",
    },
  },
  SourcePage="p.134",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Reflexes")
      end)
    end,
  },
  Description={
    Format="You can stop foes that try to move past you.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Stealthy",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You get a +2 bonus on all Escape Artist and Stealth skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.",
    },
  },
  SourcePage="p.135",
  Description={
    Format="You are good at avoiding attention and slipping out of bonds.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Escape Artist",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Escape Artist\")>=10,4,2)"),
    },
    {
      Category="SKILL",
      Variables={
        "Stealth",
      },
      Formula=Formula("if(skillinfo(\"TOTALRANK\",\"Stealth\")>=10,4,2)"),
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Step Up",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever an adjacent foe attempts to take a 5-foot step away from you, you may also make a 5-foot step as an immediate action so long as you end up adjacent to the foe that triggered this ability. If you take this step, you cannot take a 5-foot step during your next turn. If you take an action to move during your next turn, subtract 5 feet from your total movement.",
    },
  },
  SourcePage="p.135",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 1
    end,
  },
  Description={
    Format="You can close the distance when a foe tries to move away.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Still Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=1,
  Benefits={
    {
      FormatString="A stilled spell can be cast with no somatic components. Spells without somatic components are not affected. A stilled spell uses up a spell slot one level higher than the spell's actual level.",
    },
  },
  Facts={
    AppliedName="Still",
  },
  SourcePage="p.135",
  Description={
    Format="You can cast spells without moving.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Strike Back",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can ready an action to make a melee attack against any foe that attacks you in melee, even if the foe is outside of your reach.",
    },
  },
  SourcePage="p.135",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="You can strike at foes that attack you using their superior reach, by targeting their limbs or weapons as they come at you.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Stunning Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit, your opponent becomes stunned for 1d4 rounds. A successful Fortitude save reduces this to staggered for 1d4 rounds. The DC of this Fortitude save is equal to %1. The effects of this feat do not stack. Additional hits instead add to the duration.",
      Arguments={
        "10+BAB",
      },
    },
  },
  SourcePage="p.135",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus" or ability.Name == "Staggering Critical")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 17
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause opponents to become stunned.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Stunning Fist",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You must declare that you are using this feat before you make your attack roll (thus, a failed attack roll ruins the attempt). Stunning Fist forces a foe damaged by your unarmed attack to make a Fortitude saving throw (DC %1), in addition to dealing damage normally. A defender who fails this saving throw is stunned for 1 round (until just before your next turn). A stunned character drops everything held, can't take actions, loses any Dexterity bonus to AC, and takes a -2 penalty to AC. You may attempt a stunning attack once per day for every four levels you have attained (but see Special), and no more than once per round. Constructs, oozes, plants, undead, incorporeal creatures, and creatures immune to critical hits cannot be stunned.",
      Arguments={
        "StunningFistDC",
      },
    },
  },
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Stunning Fist",
      },
    },
  },
  SourcePage="p.135",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Improved Unarmed Strike")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_WIS"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return (character.Variables["PreStatScore_DEX"] >= 13)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return (character.Variables["FeatDexRequirement"] >= 13)
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
    function (character)
      return character.TotalAttackBonus >= 8
    end,
  },
  Description={
    Format="You know just where to strike to temporarily stun a foe. %1/day (DC %2)",
    Arguments={
      Formula("StunningFistAttack"),
      Formula("StunningFistDC"),
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "StunningFistDC",
      },
      Formula=Formula("2"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Ability Focus (Stunning Fist)")
          end)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "StunningFistDC",
      },
      Formula=Formula("10+(TL/2)+WIS"),
    },
    {
      Category="VAR",
      Variables={
        "StunningFistAttack",
      },
      Formula=Formula("MonkLVL+floor((TL-MonkLVL)/4)"),
      Type={
        Name="NoStack",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Throw Anything",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You do not suffer any penalties for using an improvised ranged weapon. You receive a +1 circumstance bonus on attack rolls made with thrown splash weapons.",
    },
  },
  SourcePage="p.135",
  Description={
    Format="You are used to throwing things you have on hand.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Splash",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Tiring Critical",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Whenever you score a critical hit, your opponent becomes fatigued. This feat has no additional effect on a fatigued or exhausted creature.",
    },
  },
  SourcePage="p.135",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Critical Focus")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.TotalAttackBonus >= 13
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CriticalFocusQualify"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="Your critical hits cause opponents to become fatigued.",
  },
  Types={
    "Combat",
    "Critical",
  },
})

DefineAbility({
  Name="Toughness",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You gain +%1 hit points.",
      Arguments={
        "max(3,TL)",
      },
    },
    {
      FormatString="You gain +1 hit points whenever you gain a Hit Die (such as when you gain a level).",
      Conditions={
        function (character)
          return character.HitDie >= 3
        end,
      },
    },
  },
  SourcePage="p.135",
  Description={
    Format="You have enhanced physical stamina.",
  },
  Bonuses={
    {
      Category="HP",
      Variables={
        "CURRENTMAX",
      },
      Formula=Formula("max(3,TL)"),
      Conditions={
        function (character)
          return ((IsRuleEnabled("DAMAGE_HP"))) >= 1
        end,
      },
    },
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Tower Shield Proficiency",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you use a tower shield, the shield's armor check penalty only applies to Strength and Dexterity-based skills.",
    },
  },
  AutomaticProficiencies={
    {
      Kind="Shield",
      Types={
        "Tower",
      },
    },
  },
  SourcePage="p.135",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return ((character.IsProficientWithShieldType("Buckler")) + (character.IsProficientWithShieldType("Light")) + (character.IsProficientWithShieldType("Heavy"))) >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return 1 <= #filter(character.Abilities, function (ability)
          return ability.Category == "FEAT" and (ability.Name == "Shield Proficiency")
        end)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are trained in how to properly use a tower shield.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Trample",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you attempt to overrun an opponent while mounted, your target may not choose to avoid you. Your mount may make one hoof attack against any target you knock down, gaining the standard +4 bonus on attack rolls against prone targets.",
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Mounted Combat")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Ride").ranks >= 1 and 1 or 0)) >= 1
    end,
  },
  Description={
    Format="While mounted, you can ride down opponents and thrample them under your mount.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Turn Undead",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="You can, as a standard action, use one of your uses of channel positive energy to cause all undead within 30 feet of you to flee, as if panicked. Undead receive a Will save %1 to negate the effect. Undead that fail their save flee for 1 minute. Intelligent undead receive a new saving throw each round to end the effect. If you use channel energy in this way, it has no other effect (it does not heal or harm nearby creatures).",
      Arguments={
        "ClericChannelPositiveEnergyDC",
      },
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Special Ability" and (ability.Type == "Channel Positive Energy")
      end)
    end,
  },
  Description={
    Format="Calling upon higher powers, you cause undead to flee from the might of your unleashed divine energy.",
  },
  Types={
    "General",
  },
})

DefineAbility({
  Name="Two-Weapon Defense",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When wielding a double weapon or two weapons (not including natural weapons or unarmed strikes), you gain a +1 shield bonus to your AC. When you are fighting defensively or using the total defense action, this shield bonus increases to +2.",
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You are skilled at defending yourself while fighting with two weapons.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("TwoWeaponShield"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Double") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            local count = 0
            local subCondition
            subCondition = function (character)
              return ((character.HasEquippedInPrimaryHand(function (item) return item.IsType("Melee") end))) >= 1
            end
            if subCondition(character) then
              count = count + 1
            end
            subCondition = function (character)
              return ((character.HasEquipped(function (item) return item.IsType("Melee") end))) >= 1
            end
            if subCondition(character) then
              count = count + 1
            end
            return count >= 2
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "TwoWeaponShield",
      },
      Formula=Formula("1"),
    },
  },
  Types={
    "Combat",
    "ModifyAC",
  },
})

DefineAbility({
  Name="Two-Weapon Fighting",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="Your penalties on attack rolls for fighting with two weapons are reduced. The penalty for your primary hand lessens by 2 and the one for your off hand lessens by 6. See Two-Weapon Fighting in Chapter 8.",
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  Description={
    Format="You can fight with a weapon in each of your hands. You can make one extra attack each round with the secondary weapon.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT-PRIMARY",
      },
      Formula=Formula("2"),
    },
    {
      Category="COMBAT",
      Variables={
        "TOHIT-SECONDARY",
      },
      Formula=Formula("6"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Two-Weapon Rend",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="If you hit an opponent with both your primary hand and your off-hand weapon, you deal an additional 1d10 points of damage plus %1. You can only deal this additional damage once each round.",
      Arguments={
        "1.5*STR",
      },
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Double Slice" or ability.Name == "Improved Two-Weapon Fighting" or ability.Name == "Two-Weapon Fighting")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 17)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 11
    end,
  },
  Description={
    Format="Striking with both your weapons simultanoeusly, you can use them to deliver devastating wounds.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Unseat",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When charging an opponent while mounted and wielding a lance, resolve the attack as normal. If it hits, you may immediately make a free bull rush attempt in addition to the normal damage. If successful, the target is knocked off his horse and lands prone in a space adjacent to his mount that is directly away from you.",
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Mounted Combat" or ability.Name == "Power Attack" or ability.Name == "Improved Bull Rush")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Ride").ranks >= 1 and 1 or 0)) >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 1
    end,
    function (character)
      return (character.Variables["PreStatScore_STR"] >= 13)
    end,
  },
  Description={
    Format="You are skilled at unseating your mounted opponent.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Vital Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you use the attack action, you can make one attack at your highest base attack bonus that deals additional damage. Roll the weapon's damage dice for the attack twice and add the results together before adding bonuses from Strength, weapon abilities (such as flaming), precision-based damage, and other damage bonuses. These extra damage dice are not multiplied on a critical hit, but are added to the total.",
    },
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="You make a single attack that deals significantly more damage than normal.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Weapon Finesse",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="With a light weapon, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls. If you carry a shield, its armor check penalty applies to your attack rolls.",
    },
  },
  SourcePage="p.136",
  Description={
    Format="You are trained in using your agility in melee combat, as opposed to brute strength.",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT.Finesseable",
      },
      Formula=Formula("((max(STR,DEX)-STR)+SHIELDACCHECK)"),
      Type={
        Name="NotRanged",
        Replace=false,
        Stack=false,
      },
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Weapon Focus",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You gain a +1 bonus on all attack rolls you make using the selected weapon.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((character.IsProficientWith(weapon)))
    end),
  },
  SourcePage="p.136",
  Conditions={
    function (character)
      return character.TotalAttackBonus >= 1
    end,
  },
  Description={
    Format="You are especially good at using your chosen weapon.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=%LIST",
      Variables={
        "TOHIT",
      },
      Formula=Formula("WeaponFocusToHit"),
    },
  },
  Types={
    "Combat",
    "WeaponFocus",
  },
})

DefineAbility({
  Name="Weapon Specialization",
  Category="FEAT",
  AllowMultiple=true,
  Stackable=false,
  Benefits={
    {
      FormatString="You gain a +2 bonus on all damage rolls you make using the selected weapon.",
    },
  },
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return (((stringMatch(weapon.Name, "ABILITY=FEAT") or stringMatch(weapon.Key, "ABILITY=FEAT")) and ((((stringMatch(weapon.Name, "Weapon Focus") or stringMatch(weapon.Key, "Weapon Focus")))))))
    end),
  },
  SourcePage="p.137",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus")
      end)
    end,
    function (character)
      return (character.Variables["WeapSpecQualify"] >= 1)
    end,
  },
  Description={
    Format="You deal extra damage when using your chosen weapon.",
  },
  Bonuses={
    {
      Category="WEAPONPROF=%LIST",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Whirlwind Attack",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When you use the full-attack action, you can give up your regular attacks and instead make one melee attack at your highest base attack bonus against each opponent within reach. You must make a separate attack roll against each opponent. When you use the Whirlwind Attack feat, you also forfeit any bonus or extra attacks granted by other feats, spells, or abilities.",
    },
  },
  SourcePage="p.137",
  Conditions={
    function (character)
      return 4 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Expertise" or ability.Name == "Dodge" or ability.Name == "Mobility" or ability.Name == "Spring Attack")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_INT"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["CombatFeatIntRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 13)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 4
    end,
  },
  Description={
    Format="You can strike out at every foe within reach.",
  },
  Types={
    "Combat",
    "AttackOption",
  },
})

DefineAbility({
  Name="Widen Spell",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=3,
  Benefits={
    {
      FormatString="You can alter a burst, emanation, or spread-shaped spell to increase its area. Any numeric measurements of the spell's area increase by 100%%. A widened spell uses up a spell slot three levels higher than the spell's actual level. Spells that do not have an area of one of these four sorts are not affected by this feat.",
    },
  },
  Facts={
    AppliedName="Widened",
  },
  SourcePage="p.137",
  Description={
    Format="You can cast your spells so that they occupy a larger space.",
  },
  Types={
    "Metamagic",
  },
})

DefineAbility({
  Name="Wind Stance",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="If you move more than 5 feet this turn, you gain 20%% concealment for 1 round against ranged attacks.",
    },
  },
  SourcePage="p.137",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge")
      end)
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return (character.Variables["PreStatScore_DEX"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["FeatDexRequirement"] >= 15)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  Description={
    Format="Your erratic movements make it difficult for enemies to pinpoint your location.",
  },
  Types={
    "Combat",
  },
})

DefineAbility({
  Name="Leadership Score",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Description={
      Format="Several factors can affect a character's Leadership score, causing it to vary from the base score. Add modifiers as needed.",
    },
    Bonuses={
      {
        Target="PC",
        Bonus={
          Category="VAR",
          Variables={
            "LeadershipScore",
          },
          Formula=Formula("%CHOICE"),
        },
      },
    },
  },
  Types={
    "Special",
    "Internal",
  },
})

DefineAbility({
  Name="Power Attack (Off-Hand)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,Light;OneHanded",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,Light;OneHanded",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("(PowerAttackDamageBase/2)+PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (Light)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,Light;Natural",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,Light;Natural",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("PowerAttackDamageBase*PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (One-Handed)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,OneHanded;Natural",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,OneHanded;Natural",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("PowerAttackDamageBase*PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (Two-Handed)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,TwoHanded;OneHanded;Natural",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,TwoHanded;OneHanded;Natural",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("(PowerAttackDamageBase*1.5)*PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (Flurry)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,Unarmed,Special,Monk",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-MonkFlurryPowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,Unarmed,Special,Monk",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("PowerAttackDamageBase*MonkFlurryPowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (Natural Secondary)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,Natural,NaturalSecondary",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,Natural,NaturalSecondary",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("PowerAttackDamageBase*PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (Natural Primary)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,Natural,NaturalPrimary",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,Natural,NaturalPrimary",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("PowerAttackDamageBase*PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

DefineAbility({
  Name="Power Attack (Natural Primary - Single)",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Visible=false,
  TemporaryBonuses={
    Bonuses={
      {
        Target="EQ|Weapon,Melee,Natural,NaturalPrimarySingle",
        Bonus={
          Category="WEAPON",
          Variables={
            "TOHIT",
          },
          Formula=Formula("-PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
      {
        Target="EQ|Weapon,Melee,Natural,NaturalPrimarySingle",
        Bonus={
          Category="WEAPON",
          Variables={
            "DAMAGE",
          },
          Formula=Formula("(PowerAttackDamageBase*1.5)*PowerAttackModifier"),
          Type={
            Name="Temporary",
            Replace=false,
            Stack=false,
          },
        },
      },
    },
  },
})

ModifyAbility({
  Name="Arcane Strike",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArcaneStrikeLVL",
      },
      Formula=Formula("Caster_Level_Total__Arcane"),
    },
  },
})

DefineAbility({
  Name="Cleave (Granted by Sylvan Scimitar)",
  Key="Sylvan Scimitar ~ Cleave",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  Benefits={
    {
      FormatString="When outdoors, as a standard action, you can make a single attack at your full base attack bonus against a foe within reach. If you hit, you deal damage normally and can make an additional attack (using your full base attack bonus) against a foe that is adjacent to the first and also within reach. You can only make one additional attack per round with this feat. When you use this feat, you take a -2 penalty to your Armor Class until your next turn.",
    },
  },
  SourcePage="p.119",
  Description={
    Format="When outdoors, You can strike two adjacent foes with a single swing.",
  },
})

DefineAbility({
  Name="Heighten Spell +2",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=2,
  Facts={
    AppliedName="Heightened +2",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("2"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +3",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=3,
  Facts={
    AppliedName="Heightened +3",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("3"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +4",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=4,
  Facts={
    AppliedName="Heightened +4",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("4"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +5",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=5,
  Facts={
    AppliedName="Heightened +5",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("5"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +6",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=6,
  Facts={
    AppliedName="Heightened +6",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("6"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +7",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=7,
  Facts={
    AppliedName="Heightened +7",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("7"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +8",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=8,
  Facts={
    AppliedName="Heightened +8",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("8"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

DefineAbility({
  Name="Heighten Spell +9",
  Category="FEAT",
  AllowMultiple=false,
  Stackable=false,
  AddedSpellLevels=9,
  Facts={
    AppliedName="Heightened +9",
  },
  Bonuses={
    {
      Category="DC",
      Variables={
        "FEATBONUS",
      },
      Formula=Formula("9"),
    },
  },
  Types={
    "Heighten Spell",
    "Metamagic",
  },
})

ModifyAbility({
  Name="Weapon Finesse",
  Category="Feat",
  AllowMultiple=false,
  Stackable=false,
  Bonuses={
    {
      Category="VAR",
      Variables={
        "HasWeaponFinesseFeat",
      },
      Formula=Formula("1"),
      Type={
        Name="Boolean",
        Replace=false,
        Stack=false,
      },
    },
  },
})

