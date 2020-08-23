-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_abilities_familiar_race_cr.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/byCompany/p/paizoPublishingLLC/pathfinder/pathfinderRPG/v5748btpy85k5",
  SourceDate="2009-09",
})
DefineAbility({
  Name="Bat",
  Key="Bat ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Most bats are insectivores or fruit-eaters, but at least one species drinks blood.",
  },
  SourcePage="p.131",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Bat ~ Ecology",
  Category="Internal",
  SourcePage="p.131",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate and hot forests and deserts",
    },
    {
      Name="Organization",
      FormatString="colony (10-400)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Bat",
  Category="Internal",
  SourcePage="p.131",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Perception",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="VAR",
      Formula=Formula("20"),
      Type={
        Name="Base",
      },
      Variables={
        "BlindsenseRange",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("1"),
      Variables={
        "DAMAGE",
      },
    },
  },
})
DefineAbility({
  Name="Cat",
  Key="Cat ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Cats typically weigh 5-15 pounds when fully grown.",
  },
  SourcePage="p.131",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Cat ~ Ecology",
  Category="Internal",
  SourcePage="p.131",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate and hot plains or urban",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or pack (3-12)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Cat",
  Category="Internal",
  SourcePage="p.131",
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
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Climb, +4 Stealth",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Climb",
        "Stealth",
      },
    },
  },
})
DefineAbility({
  Name="Hawk",
  Key="Hawk ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Falconers prize these majestic birds as trained hunting companions if raised from chicks and properly instructed.",
  },
  SourcePage="p.131",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Hawk ~ Ecology",
  Category="Internal",
  SourcePage="p.131",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate forests",
    },
    {
      Name="Organization",
      FormatString="solitary or pair",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Hawk",
  Category="Internal",
  SourcePage="p.131",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Talons",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+8 Perception",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
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
})
DefineAbility({
  Name="Lizard",
  Key="Lizard ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Lizards can be found in any temperate or tropical climate. When confronted with predators, a lizard flees and hides.",
  },
  SourcePage="p.131",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Lizard ~ Ecology",
  Category="Internal",
  SourcePage="p.131",
  Aspects={
    {
      Name="Environment",
      FormatString="any temperate or warm",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or nest (3-8)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Lizard",
  Category="Internal",
  SourcePage="p.131",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+8 Acrobatics",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Acrobatics",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Monkey",
  Key="Monkey ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Monkeys are highly social creatures. They spend the majority of their day searching for food.",
  },
  SourcePage="p.132",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Monkey ~ Ecology",
  Category="Internal",
  SourcePage="p.132",
  Aspects={
    {
      Name="Environment",
      FormatString="warm forests",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, band (3-9), or troop (10-40)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Monkey",
  Category="Internal",
  SourcePage="p.132",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+8 Acrobatics",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Acrobatics",
      },
    },
  },
})
DefineAbility({
  Name="Owl",
  Key="Owl ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Owls are nocturnal, rodent-eating birds that make very little noise in flight.",
  },
  SourcePage="p.132",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Owl ~ Ecology",
  Category="Internal",
  SourcePage="p.132",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate forests",
    },
    {
      Name="Organization",
      FormatString="solitary or pair",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Owl",
  Category="Internal",
  SourcePage="p.132",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Talons",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Perception, +4 Stealth",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
        "Stealth",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
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
})
DefineAbility({
  Name="Rat",
  Key="Rat ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Fecund and secretive, rats are omnivorous rodents that particularly thrive in urban areas.",
  },
  SourcePage="p.132",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Rat ~ Ecology",
  Category="Internal",
  SourcePage="p.132",
  Aspects={
    {
      Name="Environment",
      FormatString="any temperate",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, nest (3-12), or plague (13-100)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Rat",
  Category="Internal",
  SourcePage="p.132",
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
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Stealth",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth",
      },
    },
  },
})
DefineAbility({
  Name="Raven",
  Key="Raven ~ Monster Desc",
  Category="Internal",
  Description={
    Format="The raven is an omnivorous scavenger that eats carrion, insects, food waste, berries, and even small animals.",
  },
  SourcePage="p.133",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Raven ~ Ecology",
  Category="Internal",
  SourcePage="p.133",
  Aspects={
    {
      Name="Environment",
      FormatString="any temperate",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, flock (3-12), or unkindness (13-100)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Raven",
  Category="Internal",
  SourcePage="p.133",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
  },
})
DefineAbility({
  Name="Toad",
  Key="Toad ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Toads are harmless amphibians with rough, warty skin and bulging eyes.",
  },
  SourcePage="p.133",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Toad ~ Ecology",
  Category="Internal",
  SourcePage="p.133",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate and warm forests",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or knot (3-100)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Toad",
  Category="Internal",
  SourcePage="p.133",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Amphibious",
        "Scent",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Stealth",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth",
      },
    },
  },
})
DefineAbility({
  Name="Viper",
  Key="Viper ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Vipers are not particularly aggressive snakes, but their poisonous bite can be deadly.",
  },
  SourcePage="p.133",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Viper ~ Ecology",
  Category="Internal",
  SourcePage="p.133",
  Aspects={
    {
      Name="Environment",
      FormatString="any temperate and warm",
    },
    {
      Name="Organization",
      FormatString="solitary",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Viper",
  Category="Internal",
  SourcePage="p.133",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Universal Monster Rule ~ Poison (Extraordinary)",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Perception, +4 Stealth",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Perception",
        "Stealth",
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
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_ApplyBite",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_SpecificDesc",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("1"),
      Variables={
        "DAMAGE",
      },
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Poison (Extraordinary)",
  Category="Special Ability",
  Description={
    Format="Bite--injury; save Fort DC %1; frequency 1/round for 6 rounds; effect 1d2 Con; cure 1 save.",
    Arguments={
      Formula("UMR_Poison_DC"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Poison_SpecificDesc"] == 1) and (character.Race.Name == "Viper")
      end,
    },
  },
})
DefineAbility({
  Name="Weasel",
  Key="Weasel ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Weasels are predators content with raiding chicken coops or attacking pets when they encounter civilization.",
  },
  SourcePage="p.133",
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Weasel ~ Ecology",
  Category="Internal",
  SourcePage="p.133",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate hills",
    },
    {
      Name="Organization",
      FormatString="solitary",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Weasel",
  Category="Internal",
  SourcePage="p.133",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Weasel ~ Attach",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Stealth, +8 Acrobatics",
    },
  },
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("8"),
      Type={
        Name="Racial",
      },
      Variables={
        "Acrobatics",
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
})
DefineAbility({
  Name="Attach",
  Key="Weasel ~ Attach",
  Category="Special Ability",
  Description={
    Format="When a weasel hits with a bite attack, it automatically grapples its foe, inflicting automatic bite damage each round.",
  },
  SourcePage="p.133",
  Aspects={
    {
      Name="NaturalAttackBonus",
      FormatString="Bite",
    },
  },
  Types={
    "Special Ability",
    "SpecialAttack",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Rat, Dire",
  Key="Dire Rat ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Dire rats grow up to 2 feet long and weigh up to 25 pounds. They are common menaces in dungeons and city sewers alike.",
  },
  SourcePage="p.232",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This filthy rat is the size of a small dog. It has a coat of coarse fur, a long and scabby tail, and two glittering eyes.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Dire Rat ~ Ecology",
  Category="Internal",
  SourcePage="p.232",
  Aspects={
    {
      Name="Environment",
      FormatString="any urban",
    },
    {
      Name="Organization",
      FormatString="solitary or pack (2-20)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Dire Rat",
  Category="Internal",
  SourcePage="p.232",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Universal Monster Rule ~ Disease (Extraordinary)",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="uses Dex to modify Climb and Swim",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Disease_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Disease_ApplyBite",
      },
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Disease (Extraordinary)",
  Category="Special Ability",
  Description={
    Format="Filth fever: Bite--injury; save Fort DC %1; onset 1d3 days; frequency 1/day; effect 1d3 Dex damage and 1d3 Con damage; cure 2 consecutive saves. The save DC is Constitution-based.",
    Arguments={
      Formula("UMR_Disease_DC"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Disease_SpecificDesc"] == 1) and (character.Race.Name == "Rat (Dire)")
      end,
    },
  },
})
DefineAbility({
  Name="Elemental, Air",
  Key="Air Elemental ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Air elementals are fast, flying creatures made of living air. Primitive and territorial, they resent being summoned or doing the bidding of mortals, and much prefer to spend their time on the Plane of Air, swooping and racing through the endless skies.&nl;Although all air elementals of a similar size have identical statistics, the exact appearance of an air elemental can vary wildly between individuals. One might be an animated vortex of wind and smoke, while another might be a smoky bird-like creature with glowing eyes and wind for wings.&nl;An air elemental prefers to attack flying or otherwise airbone targets, not only because its mastery over flight gives it a slight advantage, but also because it detests the thought of having to touch the ground. An air elemental can move underwater, and although it is an elemental and thus runs no risk of drowning, it has no ranks in Swim and loses much of its speed and mobility when underwater.",
  },
  SourcePage="p.120",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This cloud-like creature has dark hollows reminiscent of eyes and a mouth, and a howling wind whips it into ominous shapes.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Air Elemental ~ Ecology",
  Category="Internal",
  SourcePage="p.120",
  Aspects={
    {
      Name="Environment",
      FormatString="Plane of Air",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or gang (3-8)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Small Air Elemental",
  Category="Internal",
  SourcePage="p.120",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Air Elemental ~ Air Mastery",
        "Universal Monster Rule ~ Whirlwind",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Slam",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("20"),
      Variables={
        "UMR_Whirlwind_Height",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "UMR_Whirlwind_DamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "UMR_Whirlwind_DamageDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("STR+(max(STR/2,0))"),
      Variables={
        "UMR_Whirlwind_DamageBonus",
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
      Category="WEAPONPROF=Slam",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Racial Traits ~ Elemental (Air)",
  Category="Internal",
})
DefineAbility({
  Name="Air Mastery",
  Key="Air Elemental ~ Air Mastery",
  Category="Special Ability",
  Description={
    Format="Airborne creatures take a -1 penalty on attack and damage rolls against an air elemental.",
  },
  SourcePage="p.120",
  Types={
    "SpecialQuality",
    "Special Ability",
    "Extraordinary",
    "Defensive",
  },
})
DefineAbility({
  Name="Elemental, Earth",
  Key="Earth Elemental ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Earth elementals are plodding, stubborn creatures made of living stone or earth. When utterly still, they resemble a heap of stone or a small hill. When an earth elemental lumbers into action, its actual appearance can vary, although its statistics remain identical to other elementals of its size. Most earth elementals look like terrestrial animals made out of rock, earth, or even crystal, with glowing gemstones for eyes. Larger earth elementals often have a stony humanoid appearance. Bits of vegetation frequently grow in the soil that makes up parts of an earth elemental's body.",
  },
  SourcePage="p.122",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This hulking, roughly humanoid creature of dirt and stone explodes up from the earth, faceless save for two glowing gemstone eyes.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Earth Elemental ~ Ecology",
  Category="Internal",
  SourcePage="p.122",
  Aspects={
    {
      Name="Environment",
      FormatString="any (Plane of Earth)",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or gang (3-8)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Small Earth Elemental",
  Category="Internal",
  SourcePage="p.122",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Earth Elemental ~ Earth Glide",
        "Earth Elemental ~ Earth Mastery",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Slam",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("7"),
      Type={
        Name="Base",
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "TremorsenseRange",
      },
    },
    {
      Category="WEAPONPROF=Slam",
      Formula=Formula("2"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Racial Traits ~ Elemental (Earth)",
  Category="Internal",
})
DefineAbility({
  Name="Earth Glide",
  Key="Earth Elemental ~ Earth Glide",
  Category="Special Ability",
  Description={
    Format="A burrowing earth elemental can pass through stone, dirt, or almost any other sort of earth except metal as easily as a fish swims through water. If protected against fire damage, it can even glide through lava. Its burrowing leaves behind no tunnel or hole, nor does it create any ripple or other sign of its presence. A Move Earth spell cast on an area containing a burrowing earth elemental flings the elemental back 30 feet, stunning the creature for 1 round unless it succeeds on a DC 15 Fortitude save.",
  },
  SourcePage="p.122",
  Types={
    "SpecialQuality",
    "Special Ability",
    "Extraordinary",
    "ModifyMovement",
  },
})
DefineAbility({
  Name="Earth Mastery",
  Key="Earth Elemental ~ Earth Mastery",
  Category="Special Ability",
  Description={
    Format="An earth elemental gains a +1 bonus on attack and damage rolls if both it and its foe are touching the ground. If an opponent is airborne or waterborne, the elemental takes a -4 penalty on attack and damage rolls. These modifiers apply to bull rush and overrun maneuvers, whether the elemental is initiating or resisting these kinds of attacks. (These modifiers are not included in the statistics block.)",
  },
  SourcePage="p.122",
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Elemental, Fire",
  Key="Fire Elemental ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Fire elementals are quick, cruel creatures of living flame. They enjoy frightening beings weaker than themselves, and terrorizing any creature they can set on fire.&nl;A fire elemental cannot enter water or any other nonflammable liquid. A body of water is an impassible barrier unless the fire elemental can step or jump over it or the water is covered with a flammable material (such as a layer of oil).&nl;Fire elementals vary in appearance--they usually manifest as coiling serpentine forms made of smoke and flame, but some fire elementals take on shapes more akin to humans, demons, or other monsters in order to increase the terror of their sudden appearance. Features on a fire elemental's body are made by darker bits of flame or patches of semi-stable smoke, ash, and cinders.",
  },
  SourcePage="p.124",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This creature looks like a living, mobile bonfire, tongues of flame reaching out in search of things to burn.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Fire Elemental ~ Ecology",
  Category="Internal",
  SourcePage="p.124",
  Aspects={
    {
      Name="Environment",
      FormatString="any (Plane of Fire)",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or gang (3-8)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Small Fire Elemental",
  Category="Internal",
  SourcePage="p.124",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Universal Monster Rule ~ Burn",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Slam",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("4"),
      Variables={
        "UMR_Burn_DamageDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Disease_ApplyBite",
      },
    },
    {
      Category="WEAPONPROF=Slam",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Racial Traits ~ Elemental (Fire)",
  Category="Internal",
})
DefineAbility({
  Name="Elemental, Water",
  Key="Water Elemental ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Water elementals are patient, relentless creatures made of living fresh or salt water. They prefer to hide or drag their opponents into the water to gain an advantage.&nl;As with other elementals, all water elementals have their own unique shapes and appearances. Most appear as wave-like creatures with vaguely humanoid faces and smaller wave \"arms\" to either side. Another common form is that of any aquatic creature, such as a shark or octopus, but made entirely out of water.",
  },
  SourcePage="p.126",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This translucent creature's shape shifts between a spinning column of water and a crashing wave.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Water Elemental ~ Ecology",
  Category="Internal",
  SourcePage="p.126",
  Aspects={
    {
      Name="Environment",
      FormatString="any (Plane of Water)",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or gang (3–8)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Small Water Elemental",
  Category="Internal",
  SourcePage="p.126",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Water Elemental ~ Drench",
        "Water Elemental ~ Vortex",
        "Water Elemental ~ Water Mastery",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Slam",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("20"),
      Variables={
        "VortexHeight",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "VortexDamageDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "VortexDamageDieSize",
      },
    },
    {
      Category="VAR",
      Formula=Formula("STR+(max(STR/2,0))"),
      Variables={
        "VortexDamageBonus",
      },
    },
    {
      Category="WEAPONPROF=Slam",
      Formula=Formula("2"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Racial Traits ~ Elemental (Water)",
  Category="Internal",
})
DefineAbility({
  Name="Drench",
  Key="Water Elemental ~ Drench",
  Category="Special Ability",
  Description={
    Format="The elemental's touch puts out nonmagical flames of Large size or smaller. The creature can dispel magical fire it touches as Dispel Magic (caster level %1).",
    Arguments={
      Formula("TL"),
    },
  },
  SourcePage="p.126",
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Vortex",
  Key="Water Elemental ~ Vortex",
  Category="Special Ability",
  Description={
    Format="A water elemental can create a whirlpool as a standard action, at will. This ability functions identically to the whirlwind special attack (see page Bestiary Appendix 3: Universal Monster Rules), but can only form underwater and cannot leave the water.&nl;Some creatures can transform themselves into vortexes and remain in that form for up to 1 round for every 2 HD they have. If the creature has a swim speed, it can continue to swim at that same speed while in vortex form, otherwise it gains a swim speed equal to its base land speed while in vortex form.&nl;The vortex is always 5 feet wide at its base, but its height and width at the top vary from creature to creature (minimum 10 feet high). A vortex's width at its peak is always equal to half of its height. The creature controls the exact height, but it must be at least 10 feet high.&nl;The vortex form does not provoke attacks of opportunity, even if the creature enters the space another creature occupies. Another creature might be caught in the vortex if it touches or enters the vortex, or if the vortex moves into or through a creature's space. A creature in vortex form cannot make its normal attacks and does not threaten the area around it.&nl;Creatures one or more size categories smaller than the vortex might take damage when caught in the vortex (generally damage equal to the monster's slam attack for a creature of its size) and may be lifted into the air. An affected creature must succeed on a Reflex save (DC 10 + half monster's HD + the monster's Strength modifier) when it comes into contact with the vortex or take damage as if it were hit by the vortex creature's slam attack. It must also succeed on a second Reflex save or be picked up bodily and held suspended in the powerful currents, automatically taking the indicated damage each round. A creature that can swim is allowed a Reflex save each round to escape the vortex. The creature still takes damage but can leave if the save is successful.&nl;Creatures trapped in the vortex cannot move except to go where the vortex carries them or to escape the vortex. Trapped creatures can otherwise act normally, but must succeed on a concentration check (DC 15 + spell level) to cast a spell. Creatures caught in the vortex take a -4 penalty to Dexterity and a -2 penalty on attack rolls. The vortex can have only as many creatures trapped inside at one time as will fit inside the vortex's volume. The vortex can eject any carried creatures whenever it wishes as a free action, depositing them in its space.&nl;If the vortex's base touches the ground, it creates a swirling cloud of debris. This cloud is centered on the creature and has a diameter equal to half the vortex's height. The cloud obscures all vision, including darkvision, beyond 5 feet. Creatures 5 feet away have concealment, while those farther away have total concealment. Those caught in the cloud of debris must succeed on a concentration check (DC 15 + spell level) to cast a spell.",
  },
  SourcePage="p.126",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Vortex",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(at will, 10-%1 ft. high, %2d%3+%4 damage, DC %5)",
      Arguments={
        "VortexHeight",
        "VortexDamageDice",
        "VortexDamageDieSize",
        "VortexDamageBonus",
        "VortexDC",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["VortexTimes"] == 0)
        end,
      },
    },
    {
      Name="Ability Benefit",
      FormatString="(%1/day, 10-%2 ft. high, %3d%4+%5 damage, DC %6)",
      Arguments={
        "VortexTimes",
        "VortexHeight",
        "VortexDamageDice",
        "VortexDamageDieSize",
        "VortexDamageBonus",
        "VortexDC",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["VortexTimes"] >= 1)
        end,
      },
    },
    {
      Name="Ability Benefit",
      FormatString="(DC %1)",
      Arguments={
        "VortexDC",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["VortexTimes"] == 0)
        end,
        function (character, item, sources)
          return (character.Variables["VortexDamageDice"] == 0)
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("HD/2"),
      Variables={
        "VortexDuration",
      },
    },
    {
      Category="VAR",
      Formula=Formula("0"),
      Variables={
        "VortexHeight",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+STR"),
      Variables={
        "VortexDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Vortex)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "VortexDC",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "AttackOption",
  },
})
DefineAbility({
  Name="Water Mastery",
  Key="Water Elemental ~ Water Mastery",
  Category="Special Ability",
  Description={
    Format="A water elemental gains a +1 bonus on attack and damage rolls if both it and its opponent are touching water. If the opponent or the elemental is touching the ground, the elemental takes a -4 penalty on attack and damage rolls. These modifiers apply to bull rush and overrun maneuvers, whether the elemental is initiating or resisting these kinds of attacks.",
  },
  SourcePage="p.126",
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Stirge",
  Key="Stirge ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Stirges are vicious, blood-drinking swamp pests that prey on wild animals, livestock, and unwary travelers. While weak individually, swarms of the creatures are capable of draining a man dry in minutes, leaving only a desiccated husk in their wake.&nl;Closer to mammals than insects, stirges carry their bodies through the air on four fleshy wings, searching out warm-blooded prey. They are fond of hiding near watering holes and waiting for travelers to drop their guard, then swooping out to attach and drink their fill by thrusting their long feeding tubes into unprotected veins. After feeding they flap heavily off into the mud and reeds to lay their eggs and rest until hunger drives them to hunt again.&nl;Stirges are usually 1 foot long, with a wingspan of twice that, and weigh just under a pound. Their coloration is rust-red or reddish-brown with a dirty yellow underbelly, though stirges that have not fed in some time are often pale pink, their color deepening as they gorge.",
  },
  SourcePage="p.260",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This insectoid creature has two pairs of bat wings, a tangle of thin legs, and a needle-sharp proboscis.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Stirge ~ Ecology",
  Category="Internal",
  SourcePage="p.260",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate and warm swamps",
    },
    {
      Name="Organization",
      FormatString="solitary, colony (2–4), flock (5–8), storm (9–14), or swarm (15–40)",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Stirge",
  Category="Internal",
  SourcePage="p.260",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Scent",
        "Stirge ~ Attach",
        "Stirge ~ Blood Drain",
        "Stirge ~ Diseased",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="WEAPONPROF=Touch",
      Formula=Formula("-1*(STR)"),
      Variables={
        "DAMAGE",
      },
    },
  },
})
DefineAbility({
  Name="Attach",
  Key="Stirge ~ Attach",
  Category="Special Ability",
  Description={
    Format="When a stirge hits with a touch attack, its barbed legs latch onto the target, anchoring it in place. An attached stirge is effectively grappling its prey. The stirge loses its Dexterity bonus to AC, but holds on with great tenacity and inserts its proboscis into the grappled target's flesh. A stirge has a +8 racial bonus to maintain its grapple on a foe once it is attached. An attached stirge can be struck with a weapon or grappled itself. If its prey manages to win a grapple check or Escape Artist check against it, the stirge is removed.",
  },
  SourcePage="p.260",
  Aspects={
    {
      Name="CMBCircumstance",
      FormatString="+%1 grapple when attached",
      Arguments={
        "CMB_Grapple+8",
      },
    },
    {
      Name="NaturalAttackBonus",
      FormatString="Touch",
    },
  },
  Types={
    "SpecialAttack",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Blood Drain",
  Key="Stirge ~ Blood Drain",
  Category="Special Ability",
  Description={
    Format="A stirge drains blood at the end of its turn if it is attached to a foe, inflicting 1 point of Constitution damage. Once a stirge has dealt 4 points of Constitution damage, it detaches and flies off to digest the meal. If its victim dies before the stirge’s appetite has been sated, the stirge detaches and seeks a new target.",
  },
  SourcePage="p.260",
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Diseased",
  Key="Stirge ~ Diseased",
  Category="Special Ability",
  Description={
    Format="Due to the stagnant swamps in which they live and their contact with the blood of numerous creatures, stirges are harbingers of disease. Any creature subjected to a stirge’s blood drain attack has a 10%% chance of being exposed to filth fever, blinding sickness, or a similar disease (Pathfinder RPG Core Appendix 1: Special Abilities, Diseases). Once this check is made, the victim can no longer be infected by this particular stirge, though attacks by different stirges are resolved normally and may result in multiple illnesses.",
  },
  SourcePage="p.260",
  Types={
    "SpecialQuality",
    "Special Quality",
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Homunculus",
  Key="Homunculus ~ Monster Desc",
  Category="Internal",
  Description={
    Format="A homunculus is a miniature servant created by a spellcaster from his own blood. They are weak combatants but make effective spies, messengers, and scouts. A homunculus's creator determines its precise features; some are more refined looking, but most creators don't bother to improve the creature's appearance beyond the minimum necessary for functioning.&nl;Homunculi are little more than tools designed to carry out assigned tasks. They are extensions of their creators, sharing the same alignment and basic nature. A homunculus never willingly travels more than a mile from its master, though it can be removed forcibly. If this occurs, the creature does everything in its power to return to this range, as it cannot communicate with its master beyond this distance. An attack that destroys a homunculus deals 2d10 points of damage to its master. If the creature's master is slain, the homunculus goes insane--it loses its Intelligence score, all feats, and all skill ranks, and generally claims the immediate surroundings as its domain, mindlessly attacking any who intrude upon its lair.&nl;On rare occasions, a homunculus freed from its servitude rises above its master's original intent and becomes more than a half-insane construct guardian of a long-forgotten lair. In some cases, a homunculus might even come to see itself as the rightful heir to its master's legacy, or even the reincarnated spirit of the master himself.",
  },
  SourcePage="p.176",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This vaguely humanoid creature is about the size of a cat but looks more like a toothy, winged devil.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Homunculus ~ Ecology",
  Category="Internal",
  SourcePage="p.176",
  Aspects={
    {
      Name="Environment",
      FormatString="any",
    },
    {
      Name="Organization",
      FormatString="solitary",
    },
    {
      Name="Treasure",
      FormatString="none",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Homunculus",
  Category="Internal",
  SourcePage="p.176",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Cannot Speak",
        "Homunculus ~ Telepathic Link",
        "Universal Monster Rule ~ Poison (Extraordinary)",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "PoisonSaveDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_ApplyBite",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Telepathic Link",
  Key="Homunculus ~ Telepathic Link",
  Category="Special Ability",
  Description={
    Format="A homunculus cannot speak, but the process of creating one links it telepathically with its creator. A homunculus knows what its master knows and can convey to him or her everything it sees and hears, out to a distance of 1,500 feet.",
  },
  SourcePage="p.176",
  Types={
    "SpecialQuality",
    "Special Ability",
    "Supernatural",
    "Communicate",
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Poison (Extraordinary)",
  Category="Special Ability",
  Description={
    Format="Bite--injury; save Fort DC %1; frequency 1/minute for 60 minutes; effect sleep for 1 minute; cure 1 save. The save DC is Constitution-based and includes a +2 racial bonus.",
    Arguments={
      Formula("UMR_Poison_DC"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Poison_SpecificDesc"] == 1) and (character.Race.Name == "Homunculus")
      end,
    },
  },
})
DefineAbility({
  Name="Devil, Imp",
  Key="Imp ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Born directly from the pits of Hell, imps are among the least of the true devils; these vicious, manipulative fiends, however, hold an important role in the corruption of mortal souls. Unfettered from the ranks and duties of diabolical armies, imps delight in any opportunity to travel to the Material Plane and subtly tempt mortals toward acts of ever-greater depravity. Willingly serving spellcasters as familiars, imps play  the role of dutiful servants, often granting their masters cunning advice and infernal insights. In truth, though, an imp works to deliver souls to Hell, assuring that its master's soul--and as many collateral souls as possible--faces damnation upon death.&nl;Imps vary widely in appearance, ranging through a spectrum of bestial traits and grotesque body shapes, though most take the forms of red-skinned, winged humanoids with bulbous features. Such a typical imp stands a mere 2 feet tall, has a 3-foot wingspan, and weighs 10 pounds.&nl;One in every thousand imps possesses the ability to communicate telepathically with creatures within 50 feet and the power to change its form into that of any Small or Tiny animal, as per the spell beast shape II. These imp consulars are highly prized by powerful devils, who send them to serve their favored minions or to corrupt mortals with great destinies. An imp consular can be summoned via the Improved Familiar feat, but only by a spellcaster of 8th level or higher. Diabolists tell of other breeds of imps with similarly specialized abilities, but if such creatures truly exist they are an especially rare lot.&nl;Unlike most devils, imps often find themselves free and alone on the Material Plane, particularly after they've been summoned to serve as familiars and their masters have perished (often indirectly due to the machinations of the imp itself). With no way to return home, these imps, freed of their bonds to arcane masters, can become dangerous pests or even leaders of small tribes of savage humanoids like goblins or kobolds.",
  },
  SourcePage="p.79",
  Aspects={
    {
      Name="StatHeader",
      FormatString="Fiendish wings and a whipping scorpion-like tail lash behind this diminutive, red-skinned nuisance.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Imp ~ Ecology",
  Category="Internal",
  SourcePage="p.79",
  Aspects={
    {
      Name="Environment",
      FormatString="any (Hell)",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or flock (3-10)",
    },
    {
      Name="Treasure",
      FormatString="standard",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Imp",
  Category="Internal",
  SourcePage="p.79",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Detect Good ~ Constant",
        "Detect Magic ~ Constant",
        "Universal Monster Rule ~ Fast Healing",
        "Universal Monster Rule ~ Change Shape",
        "Universal Monster Rule ~ Poison (Extraordinary)",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Sting",
      },
    },
  },
  Bonuses={
    {
      Category="ABILITYPOOL",
      Formula=Formula("1"),
      Variables={
        "Imp Consular Choice",
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
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "PoisonSaveDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "OverrideSubtypeLanguage",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "RemoveSubtypeTelepathy",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_ApplySting",
      },
    },
    {
      Category="WEAPONPROF=Sting",
      Formula=Formula("2"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Invisibility (self only)",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="6",
    },
    {
      Name="Augury",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      CasterLevel="6",
    },
    {
      Name="Suggestion",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="13+CHA",
      CasterLevel="6",
    },
    {
      Name="Commune (six questions)",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Week",
      CasterLevel="12",
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Change Shape",
  Category="Special Ability",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(boar, giant spider, rat, or raven, beast shape I)",
      Conditions={
        function (character, item, sources)
          return (character.Variables["Imp_IsConsular"] == 0) and (character.Race.Name == "Devil (Imp)")
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Change Shape",
  Category="Special Ability",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(boar, giant spider, beast shape I, any Small or Tiny animal, as per beast shape II)",
      Conditions={
        function (character, item, sources)
          return (character.Variables["Imp_IsConsular"] == 1) and (character.Race.Name == "Devil (Imp)")
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Poison (Extraordinary)",
  Category="Special Ability",
  Description={
    Format="Sting--injury; save Fort DC %1; frequency 1/ round for 6 rounds; effect 1d2 Dex; cure 1 save. The save DC is Constitution-based, and includes a +2 racial bonus.",
    Arguments={
      Formula("UMR_Poison_DC"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Poison_SpecificDesc"] == 1) and (character.Race.Name == "Devil (Imp)")
      end,
    },
  },
})
DefineAbility({
  Name="Imp is Consular",
  Key="Imp ~ Consular",
  Category="Internal",
  ExtraCondition="An imp consular can be summoned via the Improved Familiar feat, but only by a spellcaster of 8th level or higher.",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "RemoveSubtypeTelepathy",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "Imp_IsConsular",
      },
    },
    {
      Category="VAR",
      Formula=Formula("-50"),
      Variables={
        "UMR_Telepathy_Range",
      },
    },
  },
  Types={
    "Imp Consular Choice",
  },
})
DefineAbility({
  Name="Imp isn't Consular",
  Key="Imp ~ Not Consular",
  Category="Internal",
  Types={
    "Imp Consular Choice",
  },
})
DefineAbility({
  Name="Mephit",
  Key="Mephit ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Mephits are the servants of powerful elemental creatures. Key sites and locations on the elemental planes are full of mephits scurrying about on important errands or duties. Each mephit is associated with one element that defines its spells and abilities. The mephit types are listed below.",
  },
  SourcePage="p.202",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This small humanoid creature has thin, leathery wings, small horns, and a mischievous smile.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Mephit ~ Ecology",
  Category="Internal",
  SourcePage="p.202",
  Aspects={
    {
      Name="Environment",
      FormatString="any (elemental planes)",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, gang (3-6), mob (7-12)",
    },
    {
      Name="Treasure",
      FormatString="standard",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Air)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Air Mephit ~ Breath Weapon",
        "Air Mephit ~ Fast Healing",
        "Mephit ~ Summon (Air Mephit)",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Blur",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      DC="12+CHA",
      CasterLevel="6",
    },
    {
      Name="Gust of Wind",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Dust)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Dust Mephit ~ Breath Weapon",
        "Dust Mephit ~ Fast Healing",
        "Mephit ~ Summon (Dust Mephit)",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Blur",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      DC="12+CHA",
      CasterLevel="6",
    },
    {
      Name="Wind Wall",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Earth)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Earth Mephit ~ Breath Weapon",
        "Earth Mephit ~ Fast Healing",
        "Mephit ~ Summon (Earth Mephit)",
        "Earth Mephit ~ Change Size",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Soften Earth and Stone",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Fire)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Fire Mephit ~ Breath Weapon",
        "Fire Mephit ~ Fast Healing",
        "Mephit ~ Summon (Fire Mephit)",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Scorching Ray",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      CasterLevel="6",
    },
    {
      Name="Heat Metal",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Ice)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Ice Mephit ~ Breath Weapon",
        "Ice Mephit ~ Fast Healing",
        "Mephit ~ Summon (Ice Mephit)",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Magic Missile",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      CasterLevel="6",
    },
    {
      Name="Chill Metal",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Magma)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Magma Mephit ~ Breath Weapon",
        "Magma Mephit ~ Fast Healing",
        "Mephit ~ Summon (Magma Mephit)",
        "Magma Mephit ~ Magma Form",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Pyrotechnics",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Ooze)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Ooze Mephit ~ Breath Weapon",
        "Ooze Mephit ~ Fast Healing",
        "Mephit ~ Summon (Ooze Mephit)",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Acid Arrow",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      CasterLevel="6",
    },
    {
      Name="Stinking Cloud",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="13+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Salt)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Salt Mephit ~ Breath Weapon",
        "Salt Mephit ~ Fast Healing",
        "Mephit ~ Summon (Salt Mephit)",
        "Salt Mephit ~ Dehydrate",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Glitterdust",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Steam)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Steam Mephit ~ Breath Weapon",
        "Steam Mephit ~ Fast Healing",
        "Mephit ~ Summon (Steam Mephit)",
        "Steam Mephit ~ Boiling Rain",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Blur",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Mephit (Water)",
  Category="Internal",
  SourcePage="p.202",
  Abilities={
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
        "Water Mephit ~ Breath Weapon",
        "Water Mephit ~ Fast Healing",
        "Mephit ~ Summon (Water Mephit)",
        "Universal Monster Rule ~ Fast Healing",
      },
    },
  },
  Bonuses={
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
      Formula=Formula("3"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_FastHealing_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Acid Arrow",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Hour",
      CasterLevel="6",
    },
    {
      Name="Stinking Cloud",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="12+CHA",
      CasterLevel="6",
    },
  },
})
DefineAbility({
  Name="Summon",
  Key="Mephit ~ Summon",
  Category="Special Ability",
  AllowMultiple=true,
  Choice={
    Choose=ChooseUserInput(1, "Mephit Type"),
    MaxTimes=1,
  },
  Description={
    Format="Summon (Level 2, 1 %1 25%%)",
    Arguments={
      Formula("%CHOICE"),
    },
  },
  Selections=Formula("1"),
  SourcePage="p.202",
  Aspects={
    {
      Name="SpellCL",
      FormatString="%1",
      Arguments={
        "SLA_CL",
      },
    },
    {
      Name="CheckCount",
      FormatString="%1",
      Arguments={
        "1",
      },
    },
    {
      Name="CheckType",
      FormatString="per Day",
    },
    {
      Name="Ability Benefit",
      FormatString="(level 2, 1 %1 25%%)",
      Arguments={
        "%LIST",
      },
    },
  },
  Types={
    "SpecialQuality",
    "SpellLike",
    "Innate",
  },
})
DefineAbility({
  Name="Change Size",
  Key="Earth Mephit ~ Change Size",
  Category="Special Ability",
  Description={
    Format="Once per day, an earth mephit can enlarge one size category, as enlarge person, except that it only works on the earth mephit. This power acts as a 2nd-level spell.",
  },
  SourcePage="p.202",
  Types={
    "SpecialQuality",
    "Special Quality",
    "Special Ability",
  },
})
DefineAbility({
  Name="Magma Form",
  Key="Magma Mephit ~ Magma Form",
  Category="Special Ability",
  Description={
    Format="Once per hour, a magma mephit can assume the form of a pool of lava, 3 feet in diameter and 6 inches deep. While in this form, its DR increases to 20/ magic and it cannot attack. It can move at a speed of 10 feet per round and can pass through small openings and cracks. Anything touching this pool takes 1d6 fire damage. A magma mephit may remain in this form for up to 10 minutes.",
  },
  SourcePage="p.202",
  Types={
    "SpecialQuality",
    "Special Quality",
    "Special Ability",
    "Supernatural",
  },
})
DefineAbility({
  Name="Dehydrate",
  Key="Salt Mephit ~ Dehydrate",
  Category="Special Ability",
  Description={
    Format="Once per day a salt mephit can draw the moisture from an area in a 20-foot radius centered on itself. Living creatures within range take 2d8 points of damage (Fortitude DC 14 half; caster level 6th). This effect is especially devastating to plant and aquatic creatures, which take a -2 penalty on their saving throws. This ability is the equivalent of a 2nd-level spell.",
  },
  SourcePage="p.203",
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
  },
})
DefineAbility({
  Name="Boiling Rain",
  Key="Steam Mephit ~ Boiling Rain",
  Category="Special Ability",
  Description={
    Format="Once per day a steam mephit can create a rainstorm of boiling water in a 20-foot-square area. Living creatures within the area take 2d6 points of fire damage (Fortitude DC 14 half; caster level 6th). This ability is the equivalent of a 2nd-level spell.",
  },
  SourcePage="p.203",
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Air Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Air mephits can unleash a cone of sand and grit that deals 1d8 slashing damage as a breath weapon every 4 rounds as a standard action. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 slashing damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Dust Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Dust mephits can unleash a cone of dust that deals 1d4 slashing damage as a breath weapon every 4 rounds as a standard action. The dust also causes living creatures to be sickened for 3 rounds. A Reflex save halves the damage and negates the sickened effect. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 slashing damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Earth Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Earth mephits can unleash a cone of rocks that deals 1d8 bludgeoning damage as a breath weapon every 4 rounds as a standard action. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 bludgeoning damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Fire Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Fire mephits can unleash a cone of flames that deals 1d8 fire damage as a breath weapon every 4 rounds as a standard action. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 fire damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Ice Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Ice mephits can unleash a cone of ice that deals 1d4 cold damage as a breath weapon every 4 rounds as a standard action. The cold also causes living creatures to be sickened for 3 rounds. A Reflex save halves the damage and negates the sickened effect. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 cold damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Magma Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Magma mephits can unleash a one of fire that deals 1d8 fire damage as a breath weapon every 4 rounds as a standard action. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 fire damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Ooze Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Ooze mephits can unleash a cone of slime that deals 1d4 acid damage as a breath weapon every 4 rounds as a standard action. The slime also causes living creatures to be sickened for 3 rounds. A Reflex save halves the damage and negates the sickened effect. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 acid damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Salt Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Salt mephits can unleash a cone of salt crystals that deals 1d4 slashing damage as a breath weapon every 4 rounds as a standard action. The salt also causes living creatures to be sickened for 3 rounds. A Reflex save halves the damage and negates the sickened effect. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 slashing damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Steam Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Steam mephits can unleash a cone of steam that deals 1d4 fire damage as a breath weapon every 4 rounds as a standard action. The scalding water also causes living creatures to be sickened for 3 rounds. A Reflex save halves the damage and negates the sickened effect. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 fire damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
DefineAbility({
  Name="Breath Weapon",
  Key="Water Mephit ~ Breath Weapon",
  Category="Special Ability",
  Description={
    Format="Water mephits can unleash a cone of acid that deals 1d8 acid damage as a breath weapon every 4 rounds as a standard action. The DC is Constitution-based and includes a +1 racial bonus.",
  },
  SourcePage="p.202",
  Abilities={
    {
      Category="Ability Focus",
      Nature="AUTOMATIC",
      Names={
        "Breath Weapon",
      },
    },
  },
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(%1-ft. cone, %2d%3 acid damage, Reflex DC %4 for half, usable every %5 rounds)",
      Arguments={
        "BreathWeaponCone",
        "BreathWeaponDice",
        "BreathWeaponDamageDie",
        "BreathWeaponDC",
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("15"),
      Variables={
        "BreathWeaponCone",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "BreathWeaponDice",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "BreathWeaponDamageDie",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10+(max(HD,CompanionHD)/2)+CON"),
      Type={
        Name="Base",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Ability Focus (Breath Weapon)" then return true end
            return false
          end)
        end,
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Racial",
      },
      Variables={
        "BreathWeaponDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "BreathWeaponRechargeRounds",
      },
    },
  },
  Types={
    "SpecialAttack",
    "Special Attack",
    "Special Ability",
    "Supernatural",
    "BreathWeapon",
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in gusty and windy areas.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Air)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in dusty environments.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Dust)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only while underground.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Earth)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only while in contact with fire.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Fire)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in areas below freezing.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Ice)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in contact with magma or lava.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Magma)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in wet or muddy environments.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Ooze)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in arid environments.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Salt)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in boiling water or steam.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Steam)")
      end,
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only while the mephit is underwater.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_FastHealing_SpecificDesc"] == 1) and (character.Race.Name == "Mephit (Water)")
      end,
    },
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Air Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in gusty and windy areas.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Dust Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in dusty environments.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Earth Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only while underground.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Fire Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only while in contact with fire.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Ice Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in areas below freezing.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Magma Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in contact with magma or lava.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Ooze Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in wet or muddy environments.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Salt Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in arid environments.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Steam Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only in boiling water or steam.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Fast Healing",
  Key="Water Mephit ~ Fast Healing",
  Category="Special Ability",
  Description={
    Format="Works only while the mephit is underwater.",
  },
  SourcePage="p.202",
  Types={
    "Special Ability",
    "Extraordinary",
  },
})
DefineAbility({
  Name="Pseudodragon",
  Key="Pseudodragon ~ Monster Desc",
  Category="Internal",
  Description={
    Format="Pseudodragons are tiny cousins of true dragons, and are playful but shy. They often only vocalize in chirps, hisses, growls, and purrs, but can communicate telepathically with any intelligent creature. If approached peacefully and offered food, they are usually willing to share information about what they've seen in their territory, but threats or violence make them flee.&nl;Pseudodragons are carnivores, devouring insects, rodents, small birds, and snakes, though they sometimes eat eggs, and most also enjoy butter, cheese, and fish. They either hunt on the ground like lizards or look for prey on the wing like a raptor. As smart as a typical  humanoid, they do not enjoy being treated as pets and prefer being treated as friends. They are wary of evil folk but can bond with sorcerers and wizards as familiars, and some have befriended druids and rangers or partnered with good dragons as scouts. Pseudodragons will serve as familiars if they approve of a spellcaster's personality (and if the spellcaster takes the Improved Familiar feat), but often also bond with those whose company they enjoy or who have proven themselves true friends. A pseudodragon might follow another character in this manner for days, weeks, years, or even a lifetime if the creature is treated well, provided with food, and generally well-loved.&nl;Upon reaching adulthood, a pseudodragon's body is about 1 foot long with a 2-foot tail, and weighs about 7 pounds. A pseudodragon egg is the size of a chicken egg, but leathery and spotted brown, and a mating female lays 2-5 eggs every spring. A clutch of pseudodragons (the collective noun--not to be confused with pseudodragons from the same brood of eggs) usually consists of a mated pair and several near-adult offspring.",
  },
  SourcePage="p.229",
  Aspects={
    {
      Name="StatHeader",
      FormatString="This housecat-sized miniature dragon has fine scales, sharp horns, wicked little teeth, and a tail tipped with a barbed stinger.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Pseudodragon ~ Ecology",
  Category="Internal",
  SourcePage="p.229",
  Aspects={
    {
      Name="Environment",
      FormatString="temperate forests",
    },
    {
      Name="Organization",
      FormatString="solitary, pair, or clutch (3-5)",
    },
    {
      Name="Treasure",
      FormatString="standard",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Pseudodragon",
  Category="Internal",
  SourcePage="p.229",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Universal Monster Rule ~ Poison (Extraordinary)",
        "Universal Monster Rule ~ Telepathy",
        "Pseudodragon ~ Tail",
      },
    },
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Bite",
        "Sting",
      },
    },
  },
  Aspects={
    {
      Name="RacialSkillModifier",
      FormatString="+4 Stealth (improves to +8 in forests)",
    },
  },
  Bonuses={
    {
      Category="SITUATION",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth=In forests",
      },
    },
    {
      Category="SKILL",
      Formula=Formula("4"),
      Type={
        Name="Racial",
      },
      Variables={
        "Stealth",
      },
    },
    {
      Category="VAR",
      Formula=Formula("60"),
      Type={
        Name="Base",
      },
      Variables={
        "BlindsenseRange",
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
      Formula=Formula("-40"),
      Variables={
        "UMR_Telepathy_Range",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "PoisonSaveDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_ApplySting",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("-1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Sting",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
})
DefineAbility({
  Name="Tail",
  Key="Pseudodragon ~ Tail",
  Category="Special Ability",
  SourcePage="p.229",
  Aspects={
    {
      Name="ReachAttack",
      FormatString="5 ft.",
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Poison (Extraordinary)",
  Category="Special Ability",
  Description={
    Format="Sting--injury; save Fort DC %1; frequency 1/minute for 10 minutes; effect sleep for 1 minute; cure 1 save. The save DC is Constitution-based and includes a +2 racial bonus.",
    Arguments={
      Formula("UMR_Poison_DC"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Poison_SpecificDesc"] == 1) and (character.Race.Name == "Pseudodragon")
      end,
    },
  },
})
DefineAbility({
  Name="Demon, Quasit",
  Key="Quasit ~ Monster Desc",
  Category="Internal",
  Description={
    Format="The quasit is perhaps the least powerful demon, yet it is not the least respected--even quasits hold themselves above the dretch horde, and true to their natures, dretches lack the courage or drive to prove the quaits wrong. A quasit's first role in life is that of a familiar to a spellcasting master, but those quasits who escape from this humiliating servitude become free-willed and much more dangerous.&nl;A typical quasit stands a foot and a half tall, and weighs only 8 pounds. Alone among the demonic horde, quasits do not form from the dead souls of evil mortals. Instead, they form from living souls--when a spellcaster seeks out a quasit to serve him as a familiar, his soul brushes against the Abyss and it reacts, carving from itself a quasit linked to that spellcaster's soul and forming a powerful bond between the two. Newly created quasits are birthed directly into the Material Plane, where they become familiars, and while bonded to their masters' wills, all quasits hate and loathe their lieges, as they can feel the pulse of their lords' souls and know that they could have been more. A quasit serves, yet it watches and waits for mistakes that might cost its master's life, or even better, an error that might let the quasit turn against its master.&nl;When a quasit's master dies, the quasit can attempt to follow the master's soul into the Great Beyond by making a DC 15 Will save. This functions as plane shift, but affects only the quasit and transports it into the Abyss and places its master's soul in the quasit's possession as a writhing larvae rather than using the evil master's soul to create new demonic life. In this manner, a quasit can use its newly captured soul to bargain with more powerful denizens of the lower planes, and perhaps secure a vile transformative \"promotion\" to a more powerful form of life in the process.&nl;Rarely, a quasit elects to ignore its master's death and instead remains on the Material Plane to seek other ways to entertain itself--usually settling in an urban area where there are plenty of folk to torment.",
  },
  SourcePage="p.66",
  Aspects={
    {
      Name="StatHeader",
      FormatString="Ram horns curl back from the twisted head of this tiny winged demon, and its body is thin and wiry.",
    },
  },
  Types={
    "Monster Description",
  },
})
DefineAbility({
  Name="Ecology",
  Key="Quasit ~ Ecology",
  Category="Internal",
  SourcePage="p.66",
  Aspects={
    {
      Name="Environment",
      FormatString="any (Abyss)",
    },
    {
      Name="Organization",
      FormatString="solitary or flock (2-12)",
    },
    {
      Name="Treasure",
      FormatString="standard",
    },
  },
  Types={
    "Ecology",
  },
})
DefineAbility({
  Name="Racial Traits",
  Key="Racial Traits ~ Quasit",
  Category="Internal",
  SourcePage="p.66",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Universal Monster Rule ~ Change Shape",
        "Universal Monster Rule ~ Fast Healing",
        "Universal Monster Rule ~ Poison (Extraordinary)",
        "Quasit ~ Telepathy",
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
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "OverrideSubtypeLanguage",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "RemoveSubtypeTelepathy",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "SLA_CL",
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
      Formula=Formula("5"),
      Type={
        Name="Base",
      },
      Variables={
        "Maneuverability",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "UMR_FastHealing_Rate",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Racial",
      },
      Variables={
        "PoisonSaveDC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_SpecificDesc",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Boolean",
      },
      Variables={
        "UMR_Poison_ApplyClaw",
      },
    },
    {
      Category="WEAPONPROF=Bite",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
    {
      Category="WEAPONPROF=Claw",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Detect Good",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="6",
    },
    {
      Name="Detect Magic",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="6",
    },
    {
      Name="Invisibility (self only)",
      SpellBookName="Innate",
      Times="ATWILL",
      TimeUnit="Day",
      CasterLevel="6",
    },
    {
      Name="Cause Fear",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Day",
      DC="11+CHA",
      CasterLevel="6",
    },
    {
      Name="Commune (six questions)",
      SpellBookName="Innate",
      Times="1",
      TimeUnit="Week",
      CasterLevel="6",
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Change Shape",
  Category="Special Ability",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(2 of the following forms: bat, Small centipede, toad, or wolf; polymorph)",
      Conditions={
        function (character, item, sources)
          return (character.Race.Name == "Demon (Quasit)")
        end,
      },
    },
  },
})
ModifyAbility({
  Name="Universal Monster Rule ~ Poison (Extraordinary)",
  Category="Special Ability",
  Description={
    Format="Claw--injury; save Fortitude DC %1 (includes a +2 racial bonus); frequency 1/round for 6 rounds; effect 1d2 Dexterity; cure 2 consecutive saves.",
    Arguments={
      Formula("UMR_Poison_DC"),
    },
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Poison_SpecificDesc"] == 1) and (character.Race.Name == "Demon (Quasit)")
      end,
    },
  },
})
DefineAbility({
  Name="Telepathy",
  Key="Quasit ~ Telepathy",
  Category="Special Ability",
  Description={
    Format="The creature can mentally communicate with any other creature within a certain range (specified in the creature's entry, usually 100 feet) that has a language. It is possible to address multiple creatures at once telepathically, although maintaining a telepathic conversation with more than one creature at a time is just as difficult as simultaneously speaking and listening to multiple people at the same time.",
    Conditions={
      function (character, item, sources)
        return (character.Variables["UMR_Telepathy_SpecificDesc"] == 0)
      end,
    },
  },
  SourcePage="p.305",
  Aspects={
    {
      Name="Ability Benefit",
      FormatString="(touch)",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("0"),
      Variables={
        "UMR_Telepathy_Range",
      },
    },
  },
  Types={
    "SpecialQuality",
    "Supernatural",
    "Communicate",
  },
})
