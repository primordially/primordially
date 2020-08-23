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
  Description={
    Format="God of farming, hunting, trade, family",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("NG")
        end,
      },
      Domains={
        "Animal",
        "Community",
        "Good",
        "Law",
        "Plant",
      },
    },
  },
  FavoredWeapons={
    "Longbow",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Iomedae",
  Alignment="LG",
  Description={
    Format="Goddess of valor, rulership, justice, honor",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("NG")
        end,
      },
      Domains={
        "Glory",
        "Good",
        "Law",
        "Sun",
        "War",
      },
    },
  },
  FavoredWeapons={
    "Longsword",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Torag",
  Alignment="LG",
  Description={
    Format="God of the forge, protection, strategy",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("NG")
        end,
      },
      Domains={
        "Artifice",
        "Earth",
        "Good",
        "Law",
        "Protection",
      },
    },
  },
  FavoredWeapons={
    "Warhammer",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Sarenrae",
  Alignment="NG",
  Description={
    Format="Goddess of the sun, redemption, honesty, healing",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG") or character.IsAlignment("TN")
        end,
      },
      Domains={
        "Fire",
        "Glory",
        "Good",
        "Healing",
        "Sun",
      },
    },
  },
  FavoredWeapons={
    "Scimitar",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Shelyn",
  Alignment="NG",
  Description={
    Format="Goddess of beauty, art, love, music",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG") or character.IsAlignment("TN")
        end,
      },
      Domains={
        "Air",
        "Charm",
        "Good",
        "Luck",
        "Protection",
      },
    },
  },
  FavoredWeapons={
    "Glaive",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Desna",
  Alignment="CG",
  Description={
    Format="Goddess of dreams, stars, travelers, luck",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("NG") or character.IsAlignment("CG") or character.IsAlignment("CN")
        end,
      },
      Domains={
        "Chaos",
        "Good",
        "Liberation",
        "Luck",
        "Travel",
      },
    },
  },
  FavoredWeapons={
    "Starknife",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Cayden Cailean",
  Alignment="CG",
  Description={
    Format="God of freedom, wine, bravery",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("NG") or character.IsAlignment("CG") or character.IsAlignment("CN")
        end,
      },
      Domains={
        "Chaos",
        "Charm",
        "Good",
        "Strength",
        "Travel",
      },
    },
  },
  FavoredWeapons={
    "Rapier",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Abadar",
  Alignment="LN",
  Description={
    Format="God of cities, wealth, merchants, law",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("LG") or character.IsAlignment("LE") or character.IsAlignment("TN")
        end,
      },
      Domains={
        "Earth",
        "Law",
        "Nobility",
        "Protection",
        "Travel",
      },
    },
  },
  FavoredWeapons={
    "Crossbow (Light)",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Irori",
  Alignment="LN",
  Description={
    Format="God of history, knowledge, self-perfection",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("LG") or character.IsAlignment("LE") or character.IsAlignment("TN")
        end,
      },
      Domains={
        "Healing",
        "Knowledge",
        "Law",
        "Rune",
        "Strength",
      },
    },
  },
  FavoredWeapons={
    "Unarmed Strike",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Gozreh",
  Alignment="TN",
  Description={
    Format="God of nature, weather, the sea",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("NG") or character.IsAlignment("TN") or character.IsAlignment("NE") or character.IsAlignment("CN")
        end,
      },
      Domains={
        "Air",
        "Animal",
        "Plant",
        "Water",
        "Weather",
      },
    },
  },
  FavoredWeapons={
    "Trident",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Pharasma",
  Alignment="TN",
  Description={
    Format="Goddess of fate, death, prophecy, birth",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("NG") or character.IsAlignment("TN") or character.IsAlignment("NE") or character.IsAlignment("CN")
        end,
      },
      Domains={
        "Death (Pharasma)",
        "Healing",
        "Knowledge",
        "Repose",
        "Water",
      },
    },
  },
  FavoredWeapons={
    "Dagger",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Nethys",
  Alignment="TN",
  Description={
    Format="God of magic",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("NG") or character.IsAlignment("TN") or character.IsAlignment("NE") or character.IsAlignment("CN")
        end,
      },
      Domains={
        "Destruction",
        "Knowledge",
        "Magic",
        "Protection",
        "Rune",
      },
    },
  },
  FavoredWeapons={
    "Quarterstaff",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Gorum",
  Alignment="CN",
  Description={
    Format="God of strength, battle, weapons",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("TN") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "Chaos",
        "Destruction",
        "Glory",
        "Strength",
        "War",
      },
    },
  },
  FavoredWeapons={
    "Greatsword",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Calistria",
  Alignment="CN",
  Description={
    Format="Goddess of trickery, lust, revenge",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("TN") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "Chaos",
        "Charm",
        "Knowledge",
        "Luck",
        "Trickery",
      },
    },
  },
  FavoredWeapons={
    "Whip",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Asmodeus",
  Alignment="LE",
  Description={
    Format="God of tyranny, slavery, pride, contracts",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("LE") or character.IsAlignment("NE")
        end,
      },
      Domains={
        "Evil",
        "Fire",
        "Law",
        "Magic",
        "Trickery",
      },
    },
  },
  FavoredWeapons={
    "Mace (Heavy)",
    "Mace (Light)",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Zon-Kuthon",
  Alignment="LE",
  Description={
    Format="God of envy, pain, darkness, loss",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LN") or character.IsAlignment("LE") or character.IsAlignment("NE")
        end,
      },
      Domains={
        "Darkness",
        "Death",
        "Destruction",
        "Evil",
        "Law",
      },
    },
  },
  FavoredWeapons={
    "Chain (Spiked)",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Urgathoa",
  Alignment="NE",
  Description={
    Format="Goddess of gluttony, disease, undeath",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("TN") or character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "Death",
        "Evil",
        "Magic",
        "Strength",
        "War",
      },
    },
  },
  FavoredWeapons={
    "Scythe",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Norgorber",
  Alignment="NE",
  Description={
    Format="God of greed, secrets, poison, murder",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("TN") or character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "Charm",
        "Death",
        "Evil",
        "Knowledge",
        "Trickery",
      },
    },
  },
  FavoredWeapons={
    "Sword (Short)",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Lamashtu",
  Alignment="CE",
  Description={
    Format="Goddess of madness, monsters, nightmares",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("NE") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "Chaos",
        "Evil",
        "Madness",
        "Strength",
        "Trickery",
      },
    },
  },
  FavoredWeapons={
    "Falchion",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="Rovagug",
  Alignment="CE",
  Description={
    Format="God of wrath, disaster, destruction",
  },
  SourcePage="p.45",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("NE") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "Chaos",
        "Destruction",
        "Evil",
        "War",
        "Weather",
      },
    },
  },
  FavoredWeapons={
    "Greataxe",
  },
  FactSets={
    Pantheon="Pathfinder Chronicles",
  },
})
DefineDeity({
  Name="None",
  Description={
    Format="None",
  },
  Group="UNSELECTED",
  Domains={
    {
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE") or character.IsAlignment("NG") or character.IsAlignment("TN") or character.IsAlignment("NE") or character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Domains={
        "ANY",
      },
    },
  },
  Facts={
    Symbol="None",
  },
})
