-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_deities.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineDeity({
  Name="Erastil",
  Alignment="LG",
  NameIsProductIdentity=true,
  Description="God of farming, hunting, trade, family",
  Group=nil,
  DeityWeapons={
    "Longbow",
  },
  Domains={
    {
      Domains={
        "Animal",
        "Community",
        "Good",
        "Law",
        "Plant",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "NG"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Iomedae",
  Alignment="LG",
  NameIsProductIdentity=true,
  Description="Goddess of valor, rulership, justice, honor",
  Group=nil,
  DeityWeapons={
    "Longsword",
  },
  Domains={
    {
      Domains={
        "Glory",
        "Good",
        "Law",
        "Sun",
        "War",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "NG"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Torag",
  Alignment="LG",
  NameIsProductIdentity=true,
  Description="God of the forge, protection, strategy",
  Group=nil,
  DeityWeapons={
    "Warhammer",
  },
  Domains={
    {
      Domains={
        "Artifice",
        "Earth",
        "Good",
        "Law",
        "Protection",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "NG"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Sarenrae",
  Alignment="NG",
  NameIsProductIdentity=true,
  Description="Goddess of the sun, redemption, honesty, healing",
  Group=nil,
  DeityWeapons={
    "Scimitar",
  },
  Domains={
    {
      Domains={
        "Fire",
        "Glory",
        "Good",
        "Healing",
        "Sun",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG" or character.Alignment == "TN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Shelyn",
  Alignment="NG",
  NameIsProductIdentity=true,
  Description="Goddess of beauty, art, love, music",
  Group=nil,
  DeityWeapons={
    "Glaive",
  },
  Domains={
    {
      Domains={
        "Air",
        "Charm",
        "Good",
        "Luck",
        "Protection",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG" or character.Alignment == "TN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Desna",
  Alignment="CG",
  NameIsProductIdentity=true,
  Description="Goddess of dreams, stars, travelers, luck",
  Group=nil,
  DeityWeapons={
    "Starknife",
  },
  Domains={
    {
      Domains={
        "Chaos",
        "Good",
        "Liberation",
        "Luck",
        "Travel",
      },
      Conditions={
        function (character)
          return character.Alignment == "NG" or character.Alignment == "CG" or character.Alignment == "CN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Cayden Cailean",
  Alignment="CG",
  NameIsProductIdentity=true,
  Description="God of freedom, wine, bravery",
  Group=nil,
  DeityWeapons={
    "Rapier",
  },
  Domains={
    {
      Domains={
        "Chaos",
        "Charm",
        "Good",
        "Strength",
        "Travel",
      },
      Conditions={
        function (character)
          return character.Alignment == "NG" or character.Alignment == "CG" or character.Alignment == "CN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Abadar",
  Alignment="LN",
  NameIsProductIdentity=true,
  Description="God of cities, wealth, merchants, law",
  Group=nil,
  DeityWeapons={
    "Crossbow (Light)",
  },
  Domains={
    {
      Domains={
        "Earth",
        "Law",
        "Nobility",
        "Protection",
        "Travel",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "LG" or character.Alignment == "LE" or character.Alignment == "TN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Irori",
  Alignment="LN",
  NameIsProductIdentity=true,
  Description="God of history, knowledge, self-perfection",
  Group=nil,
  DeityWeapons={
    "Unarmed Strike",
  },
  Domains={
    {
      Domains={
        "Healing",
        "Knowledge",
        "Law",
        "Rune",
        "Strength",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "LG" or character.Alignment == "LE" or character.Alignment == "TN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Gozreh",
  Alignment="TN",
  NameIsProductIdentity=true,
  Description="God of nature, weather, the sea",
  Group=nil,
  DeityWeapons={
    "Trident",
  },
  Domains={
    {
      Domains={
        "Air",
        "Animal",
        "Plant",
        "Water",
        "Weather",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "NG" or character.Alignment == "TN" or character.Alignment == "NE" or character.Alignment == "CN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Pharasma",
  Alignment="TN",
  NameIsProductIdentity=true,
  Description="Goddess of fate, death, prophecy, birth",
  Group=nil,
  DeityWeapons={
    "Dagger",
  },
  Domains={
    {
      Domains={
        "Death (Pharasma)",
        "Healing",
        "Knowledge",
        "Repose",
        "Water",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "NG" or character.Alignment == "TN" or character.Alignment == "NE" or character.Alignment == "CN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Nethys",
  Alignment="TN",
  NameIsProductIdentity=true,
  Description="God of magic",
  Group=nil,
  DeityWeapons={
    "Quarterstaff",
  },
  Domains={
    {
      Domains={
        "Destruction",
        "Knowledge",
        "Magic",
        "Protection",
        "Rune",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "NG" or character.Alignment == "TN" or character.Alignment == "NE" or character.Alignment == "CN"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Gorum",
  Alignment="CN",
  NameIsProductIdentity=true,
  Description="God of strength, battle, weapons",
  Group=nil,
  DeityWeapons={
    "Greatsword",
  },
  Domains={
    {
      Domains={
        "Chaos",
        "Destruction",
        "Glory",
        "Strength",
        "War",
      },
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "TN" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Calistria",
  Alignment="CN",
  NameIsProductIdentity=true,
  Description="Goddess of trickery, lust, revenge",
  Group=nil,
  DeityWeapons={
    "Whip",
  },
  Domains={
    {
      Domains={
        "Chaos",
        "Charm",
        "Knowledge",
        "Luck",
        "Trickery",
      },
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "TN" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Asmodeus",
  Alignment="LE",
  NameIsProductIdentity=true,
  Description="God of tyranny, slavery, pride, contracts",
  Group=nil,
  DeityWeapons={
    "Mace (Heavy)",
    "Mace (Light)",
  },
  Domains={
    {
      Domains={
        "Evil",
        "Fire",
        "Law",
        "Magic",
        "Trickery",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "LE" or character.Alignment == "NE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Zon-Kuthon",
  Alignment="LE",
  NameIsProductIdentity=true,
  Description="God of envy, pain, darkness, loss",
  Group=nil,
  DeityWeapons={
    "Chain (Spiked)",
  },
  Domains={
    {
      Domains={
        "Darkness",
        "Death",
        "Destruction",
        "Evil",
        "Law",
      },
      Conditions={
        function (character)
          return character.Alignment == "LN" or character.Alignment == "LE" or character.Alignment == "NE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Urgathoa",
  Alignment="NE",
  NameIsProductIdentity=true,
  Description="Goddess of gluttony, disease, undeath",
  Group=nil,
  DeityWeapons={
    "Scythe",
  },
  Domains={
    {
      Domains={
        "Death",
        "Evil",
        "Magic",
        "Strength",
        "War",
      },
      Conditions={
        function (character)
          return character.Alignment == "TN" or character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Norgorber",
  Alignment="NE",
  NameIsProductIdentity=true,
  Description="God of greed, secrets, poison, murder",
  Group=nil,
  DeityWeapons={
    "Sword (Short)",
  },
  Domains={
    {
      Domains={
        "Charm",
        "Death",
        "Evil",
        "Knowledge",
        "Trickery",
      },
      Conditions={
        function (character)
          return character.Alignment == "TN" or character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Lamashtu",
  Alignment="CE",
  NameIsProductIdentity=true,
  Description="Goddess of madness, monsters, nightmares",
  Group=nil,
  DeityWeapons={
    "Falchion",
  },
  Domains={
    {
      Domains={
        "Chaos",
        "Evil",
        "Madness",
        "Strength",
        "Trickery",
      },
      Conditions={
        function (character)
          return character.Alignment == "NE" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="Rovagug",
  Alignment="CE",
  NameIsProductIdentity=true,
  Description="God of wrath, disaster, destruction",
  Group=nil,
  DeityWeapons={
    "Greataxe",
  },
  Domains={
    {
      Domains={
        "Chaos",
        "Destruction",
        "Evil",
        "War",
        "Weather",
      },
      Conditions={
        function (character)
          return character.Alignment == "NE" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Pantheon="Pathfinder Chronicles",
  },
  SourcePage="p.45",
})
DefineDeity({
  Name="None",
  Alignment=nil,
  NameIsProductIdentity=false,
  Description="None",
  Group="UNSELECTED",
  Domains={
    {
      Domains={
        "ANY",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE" or character.Alignment == "NG" or character.Alignment == "TN" or character.Alignment == "NE" or character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  Facts={
    Symbol="None",
  },
})
