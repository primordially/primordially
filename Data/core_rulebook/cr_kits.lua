-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_kits.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})

DefineStartingKit({
  Name="A Test",
  Apply=function (kit)
    kit.SetStats({
      Stats={
        {
          Stat="INT",
          Value=Formula("0"),
        },
      },
    })
  end,
})
DefineStartingKit({
  Name="Monk Flurry of Blows",
  AllowMultiple=true,
  TotalCost=Formula("0"),
  Visible=false,
  Apply=function (kit)
  end,
})
DefineStartingKit({
  Name="Wizard Spellbook",
  TotalCost=Formula("0"),
  Visible=false,
  Apply=function (kit)
    kit.AddGear({
      EquipLocation="Carried",
      ItemName="Spellbook",
    })
  end,
})
DefineStartingKit({
  Name="Free Clothing at 1st Level",
  AllowMultiple=true,
  TotalCost=Formula("0"),
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.PcLevel >= 1 and character.PcLevel <= 1 and (character.IsType("PC")) or (character.IsType("NPC"))
    end,
  },
  Types={
    "Starting",
    "Clothing",
  },
  Apply=function (kit)
    kit.AddGear({
      EquipLocation="Equipped",
      ItemName="TYPE=Clothing.Starting",
      Size="PC",
    })
  end,
})
DefineStartingKit({
  Name="Classes Starting Gold ~ CRB",
  AllowMultiple=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.PcLevel >= 1 and character.PcLevel <= 1 and ((character.GetLevelOfClass("Monk") >= 1) + (character.GetLevelOfClass("Druid") >= 1) + (character.GetLevelOfClass("Sorcerer") >= 1) + (character.GetLevelOfClass("Wizard") >= 1) + (character.GetLevelOfClass("Bard") >= 1) + (character.GetLevelOfClass("Barbarian") >= 1) + (character.GetLevelOfClass("Cleric") >= 1) + (character.GetLevelOfClass("Rogue") >= 1) + (character.GetLevelOfClass("Fighter") >= 1) + (character.GetLevelOfClass("Paladin") >= 1) + (character.GetLevelOfClass("Ranger") >= 1)) >= 1
    end,
  },
  Types={
    "Starting",
    "Gold",
  },
  Apply=function (kit)
    kit.AddTemplate({
      Template={
        "Starting Gold ~ CRB",
      },
    })
  end,
})
DefineStartingKit({
  Name="Starting Gold CRB ~ Random",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10*roll(\"1d6\")"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Monk") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10*roll(\"2d6\")"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Druid") >= 1) + (character.GetLevelOfClass("Sorcerer") >= 1) + (character.GetLevelOfClass("Wizard") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10*roll(\"3d6\")"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Bard") >= 1) + (character.GetLevelOfClass("Barbarian") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10*roll(\"4d6\")"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Cleric") >= 1) + (character.GetLevelOfClass("Rogue") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10*roll(\"5d6\")"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Fighter") >= 1) + (character.GetLevelOfClass("Paladin") >= 1) + (character.GetLevelOfClass("Ranger") >= 1)) >= 1
        end,
      },
    })
  end,
})
DefineStartingKit({
  Name="Starting Gold CRB ~ Maximum",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("60"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Monk") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("120"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Druid") >= 1) + (character.GetLevelOfClass("Sorcerer") >= 1) + (character.GetLevelOfClass("Wizard") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("180"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Bard") >= 1) + (character.GetLevelOfClass("Barbarian") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("240"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Cleric") >= 1) + (character.GetLevelOfClass("Rogue") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("300"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Fighter") >= 1) + (character.GetLevelOfClass("Paladin") >= 1) + (character.GetLevelOfClass("Ranger") >= 1)) >= 1
        end,
      },
    })
  end,
})
DefineStartingKit({
  Name="Starting Gold CRB ~ Average",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("35"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Monk") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("70"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Druid") >= 1) + (character.GetLevelOfClass("Sorcerer") >= 1) + (character.GetLevelOfClass("Wizard") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("105"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Bard") >= 1) + (character.GetLevelOfClass("Barbarian") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("140"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Cleric") >= 1) + (character.GetLevelOfClass("Rogue") >= 1)) >= 1
        end,
      },
    })
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("175"),
      Conditions={
        function (character, item, sources)
          return ((character.GetLevelOfClass("Fighter") >= 1) + (character.GetLevelOfClass("Paladin") >= 1) + (character.GetLevelOfClass("Ranger") >= 1)) >= 1
        end,
      },
    })
  end,
})
DefineStartingKit({
  Name="Wealth by PC Level",
  AllowMultiple=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.PcLevel >= 2 and character.PcLevel <= 20 and (character.IsType("PC"))
    end,
  },
  Types={
    "PC",
    "Wealth",
  },
  Apply=function (kit)
    kit.AddTemplate({
      Template={
        "Wealth by PC Level",
      },
    })
  end,
})
DefineStartingKit({
  Name="PC Level 2",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("1000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 3",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("3000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 4",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("6000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 5",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10500"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 6",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("16000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 7",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("23500"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 8",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("33000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 9",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("46000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 10",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("63000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 11",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("82000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 12",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("108000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 13",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("150000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 14",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("185000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 15",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("240000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 16",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("315000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 17",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("410000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 18",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("530000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 19",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("685000"),
    })
  end,
})
DefineStartingKit({
  Name="PC Level 20",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("880000"),
    })
  end,
})
DefineStartingKit({
  Name="Wealth by NPC Level",
  AllowMultiple=true,
  Visible=true,
  Conditions={
    function (character, item, sources)
      return character.PcLevel >= 1 and character.PcLevel <= 20 and (character.IsType("NPC"))
    end,
  },
  Types={
    "NPC",
    "Wealth",
  },
  Apply=function (kit)
    kit.AddTemplate({
      Template={
        "Wealth by NPC Level",
      },
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 1",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("260"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 2",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("390"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 3",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("780"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 4",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("1650"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 5",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("2400"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 6",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("3450"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 7",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("4650"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 8",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("6000"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 9",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("7800"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 10",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10050"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 11",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("12750"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 12",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("16350"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 13",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("21000"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 14",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("27000"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 15",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("34800"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 16",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("45000"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 17",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("58500"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 18",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("75000"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 19",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("96000"),
    })
  end,
})
DefineStartingKit({
  Name="Basic Level 20",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("123000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 1",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("390"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 2",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("780"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 3",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("1650"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 4",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("2400"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 5",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("3450"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 6",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("4650"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 7",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("6000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 8",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("7800"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 9",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("10050"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 10",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("12750"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 11",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("16350"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 12",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("21000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 13",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("27000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 14",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("34800"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 15",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("45000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 16",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("58500"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 17",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("75000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 18",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("96000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 19",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("123000"),
    })
  end,
})
DefineStartingKit({
  Name="Heroic Level 20",
  AllowMultiple=true,
  Visible=false,
  Apply=function (kit)
    kit.AddFunds({
      Funds="gp",
      Quantity=Formula("159000"),
    })
  end,
})
