-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_equipmods.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineEquipmentModifier({
  Name="Cloth",
  Key="Material ~ Cloth",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Material ~ Cloth")) or not ((item.HasModifierType("Mundane")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Metal")) or (item.IsType("Wooden")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Artisan")) or (item.IsType("Spell Component")))
    end,
  },
  GrantedItemTypes={
    "Cloth",
  },
  Types={
    "BaseMaterial",
    "Mundane",
    "Ammunition",
    "Armor",
    "Shield",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Leather",
  Key="Material ~ Leather",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Material ~ Leather")) or not ((item.HasModifierType("Mundane")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Metal")) or (item.IsType("Wooden")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Artisan")) or (item.IsType("Spell Component")))
    end,
  },
  Types={
    "BaseMaterial",
    "Mundane",
    "Ammunition",
    "Armor",
    "Shield",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Rope",
  Key="Material ~ Rope",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Material ~ Rope")) or not ((item.HasModifierType("Mundane")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Metal")) or (item.IsType("Wooden")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Artisan")) or (item.IsType("Spell Component")))
    end,
  },
  Types={
    "BaseMaterial",
    "Mundane",
    "Ammunition",
    "Armor",
    "Shield",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Steel",
  Key="Material ~ Steel",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Material ~ Steel")) or not ((item.HasModifierType("Mundane")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Wooden")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Artisan")) or (item.IsType("Spell Component")))
    end,
  },
  GrantedItemTypes={
    "Metal",
  },
  Types={
    "BaseMaterial",
    "Mundane",
    "Ammunition",
    "Armor",
    "Shield",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Wood",
  Key="Material ~ Wood",
  AffectsBothHeads=true,
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Material ~ Wood")) or not ((item.HasModifierType("Mundane")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Metal")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Artisan")) or (item.IsType("Spell Component")))
    end,
  },
  GrantedItemTypes={
    "Wooden",
  },
  Types={
    "BaseMaterial",
    "Mundane",
    "Ammunition",
    "Armor",
    "Shield",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Masterwork (Weapon)",
  Key="Special Quality ~ Masterwork ~ Weapon",
  AffectsBothHeads=true,
  Cost=Formula("0"),
  NameModifier="TEXT=Masterwork",
  NameModifierLocation="Prefix",
  SourcePage="p.149",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Shield")))
    end,
    function (character, item, sources)
      return not ((item.IsType("Masterwork")) or (item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("Darkwood")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
  },
  Types={
    "MasterworkQuality",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Masterwork",
  Key="Special Quality ~ Masterwork ~ Ammunition",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.149",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Ammunition"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Masterwork")) or (item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("Darkwood")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
  },
  Types={
    "MasterworkQuality",
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="Masterwork (Armor or Shield)",
  Key="Special Quality ~ Masterwork ~ Armor",
  Cost=Formula("0"),
  NameModifier="TEXT=Masterwork",
  NameModifierLocation="Prefix",
  SourcePage="p.153",
  Visible=true,
  Bonuses={
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Masterwork")) or (item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("Darkwood")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
  },
  Types={
    "MasterworkQuality",
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Masterwork",
  Key="Special Quality ~ Masterwork ~ Item",
  Cost=Formula("50"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.160",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("20"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("THIEF"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("45"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("INSTRUMENT"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Masterwork")) or (item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("Darkwood")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
  },
  Types={
    "MasterworkQuality",
    "Tools",
  },
})
DefineEquipmentModifier({
  Name="Masterwork",
  Key="Special Quality ~ Masterwork ~ Bonded Object",
  Cost=Formula("50"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.160",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Amulet")) or (item.IsType("Ring")) or (item.IsType("Staff")) or (item.IsType("Wand"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Masterwork")) or (item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("Darkwood")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
  },
  Types={
    "MasterworkQuality",
    "Amulet",
    "Ring",
    "Staff",
    "Wand",
  },
})
DefineEquipmentModifier({
  Name="Bonded Object",
  Key="Special Quality ~ Bonded Object",
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  SourcePage="p.78",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Amulet")) or (item.IsType("Ring")) or (item.IsType("Staff")) or (item.IsType("Wand")) or (item.IsType("Masterwork")) or (item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("Darkwood")) and (item.IsType("Weapon"))
    end,
  },
  GrantedItemTypes={
    "Bonded",
  },
  SpecialProperties={
    {
      Format="Can be used once per day to cast any one spell that the wizard has in his spellbook and is capable of casting, even if the spell is not prepared.",
    },
  },
  Types={
    "Amulet",
    "Ring",
    "Staff",
    "Wand",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Thrown Ammunition",
  Key="Special Quality ~ Thrown Ammunition",
  Cost=Formula("0"),
  Visible=false,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("-294"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("MASTERWORK"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-2646"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ADAMANTINE"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-18"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SILVER"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("319"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("MITHRAL"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-1960"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WeaponEnhancement"))
        end,
        function (character, item, sources)
          return (item.IsType("COLDIRON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-1960"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("PLUS1"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-7840"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("PLUS2"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-17640"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("PLUS3"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-31360"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("PLUS4"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-49000"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("PLUS5"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
})
DefineEquipmentModifier({
  Name="Composite Bow Strength Rating",
  Key="Special Quality ~ Composite Bow Strength Rating",
  AffectsBothHeads=true,
  Choice={
    Choose=ChooseNumber(1, 100, nil, "Strength rating"),
  },
  Cost=Formula("0"),
  NameModifier="NONAME",
  SourcePage="p.147",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("75*%CHOICE"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["%CHOICE"] > 0)
        end,
        function (character, item, sources)
          return (item.IsType("SHORTBOW"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("100*%CHOICE"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["%CHOICE"] > 0)
        end,
        function (character, item, sources)
          return (item.IsType("LONGBOW"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("-2"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["%CHOICE"] > "STR")
        end,
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("MIN(%CHOICE,STR)"),
      Type={
        Name="Strength",
      },
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Composite")) and (item.IsType("Bow"))
    end,
  },
  GrantedItemTypes={
    "StrengthRating",
  },
  SpecialProperties={
    {
      Format="Strength bonus to damage",
    },
  },
  Types={
    "Bow",
    "Composite",
  },
})
DefineEquipmentModifier({
  Name="Brace",
  Key="Special Quality ~ Brace",
  Cost=Formula("0"),
  Description={
    Format="Extra damage when set against a charging character (pg. 144)",
  },
  NameModifier="NOTHING",
  SourcePage="p.144",
  Visible=false,
  GrantedItemTypes={
    "Brace",
  },
  SpecialProperties={
    {
      Format="brace",
    },
  },
  Types={
    "SpecialWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Disarm",
  Key="Special Quality ~ Disarm",
  Cost=Formula("0"),
  Description={
    Format="Bonus to disarm an enemy (pg. 144)",
  },
  NameModifier="NOTHING",
  SourcePage="p.144",
  Visible=false,
  GrantedItemTypes={
    "Disarm",
  },
  SpecialProperties={
    {
      Format="disarm",
    },
  },
  Types={
    "SpecialWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Double",
  Key="Special Quality ~ Double",
  Cost=Formula("0"),
  Description={
    Format="May use the weapon as if fighting with teo weapons (pg. 144)",
  },
  NameModifier="NOTHING",
  SourcePage="p.144",
  Visible=false,
  SpecialProperties={
    {
      Format="double",
    },
  },
  Types={
    "SpecailWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Monk",
  Key="Special Quality ~ Monk",
  Cost=Formula("0"),
  Description={
    Format="May be used to perform a flurry of blows (pg. 145)",
  },
  NameModifier="NOTHING",
  SourcePage="p.145",
  Visible=false,
  GrantedItemTypes={
    "Monk",
  },
  SpecialProperties={
    {
      Format="monk",
    },
  },
  Types={
    "SpecialWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Nonlethal",
  Key="Special Quality ~ Nonlethal",
  Cost=Formula("0"),
  Description={
    Format="Deals nonlethal damage (pg. 145)",
  },
  NameModifier="NOTHING",
  SourcePage="p.145",
  Visible=false,
  GrantedItemTypes={
    "Nonlethal",
  },
  SpecialProperties={
    {
      Format="nonlethal",
    },
  },
  Types={
    "SpecialWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Reach",
  Key="Special Quality ~ Reach",
  Cost=Formula("0"),
  Description={
    Format="Strike opponents 10 feet away, but can't use it against adjacent foes (pg. 145)",
  },
  NameModifier="NOTHING",
  SourcePage="p.145",
  Visible=false,
  GrantedItemTypes={
    "Reach",
  },
  SpecialProperties={
    {
      Format="reach",
    },
  },
  Types={
    "SpecialWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Trip",
  Key="Special Quality ~ Trip",
  Cost=Formula("0"),
  Description={
    Format="May be used to make trip attacks (pg.145)",
  },
  NameModifier="NOTHING",
  SourcePage="p.145",
  Visible=false,
  GrantedItemTypes={
    "Trip",
  },
  SpecialProperties={
    {
      Format="trip",
    },
  },
  Types={
    "SpecialWeaponQualities",
  },
})
DefineEquipmentModifier({
  Name="Armor Spikes",
  Key="Special Quality ~ Spikes ~ Armor",
  Cost=Formula("50"),
  SourcePage="p.150",
  Visible=true,
  AutomaticEquipment={
    {
      Names={
        "Armor Spikes",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield")) or (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Spiked",
    "Piercing",
  },
  SpecialProperties={
    {
      Format="Spiked",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Shield Spikes",
  Key="Special Quality ~ Spikes ~ Shield",
  Cost=Formula("10"),
  SourcePage="p.153",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "SHIELDBASHINGDIESIZESTEP",
      },
    },
    {
      Category="EQM",
      Formula=Formula("5*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
      Variables={
        "WEIGHTADD",
      },
    },
    {
      Category="EQMWEAPON",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield")) or (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Spiked",
    "Piercing",
  },
  SpecialProperties={
    {
      Format="Spiked",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Shield Spikes",
  Key="Special Quality ~ Spikes ~ Shieldbash",
  Cost=Formula("0"),
  SourcePage="p.153",
  Visible=true,
  Bonuses={
    {
      Category="EQMWEAPON",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  GrantedItemTypes={
    "Spiked",
    "Piercing",
  },
  SpecialProperties={
    {
      Format="Spiked",
    },
  },
  Types={
    "Shieldbash",
  },
})
DefineEquipmentModifier({
  Name="Locked Gauntlets",
  Key="Special Quality ~ Locked Gauntlet",
  Cost=Formula("8"),
  SourcePage="p.150",
  Visible=true,
  Bonuses={
    {
      Category="EQM",
      Formula=Formula("5*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
      Variables={
        "WEIGHTADD",
      },
    },
  },
  GrantedItemTypes={
    "GauntletLock",
  },
  SpecialProperties={
    {
      Format="Locked",
    },
  },
  Types={
    "Gauntlet",
  },
})
DefineEquipmentModifier({
  Name="Nonhumanoid",
  Key="Special Quality ~ Nonhumanoid ~ Armor",
  Cost=Formula("BASECOST*(((SIZE<=2)*.5)+(SIZE==3)+(SIZE==4)+((SIZE>=5)*(2^(SIZE-4))))"),
  SourcePage="p.153",
  Visible=true,
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Key="Special Quality ~ Broken ~ Weapon",
  AffectsBothHeads=true,
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.565",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("-2"),
      Type={
        Name="CONDITION",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
  },
  GrantedItemTypes={
    "Broken",
  },
  SpecialProperties={
    {
      Format="-2 penalty on attack and damage rolls with critical of 20/x2.",
    },
  },
  Types={
    "BrokenCondition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Key="Special Quality ~ Broken ~ Armor",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.566",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Broken",
  },
  SpecialProperties={
    {
      Format="AC bonus is halved and AC Check is doubled.",
    },
  },
  Types={
    "BrokenCondition",
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Key="Special Quality ~ Broken ~ Shield",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.566",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield"))
    end,
  },
  GrantedItemTypes={
    "Broken",
  },
  SpecialProperties={
    {
      Format="AC bonus is halved and AC Check is doubled.",
    },
  },
  Types={
    "BrokenCondition",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Key="Special Quality ~ Broken ~ Item",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.566",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("TOOLS"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools"))
    end,
  },
  GrantedItemTypes={
    "Broken",
  },
  SpecialProperties={
    {
      Format="-2 penalty on all skill checks.",
    },
  },
  Types={
    "BrokenCondition",
    "Tools",
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Key="Special Quality ~ Broken ~ Magic Item",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.566",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WAND"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("STAFF"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Wand")) or (item.IsType("Staff"))
    end,
  },
  GrantedItemTypes={
    "Broken",
  },
  SpecialProperties={
    {
      Format="Uses twice the charges as normal.",
    },
  },
  Types={
    "BrokenCondition",
    "Wand",
    "Staff",
  },
})
DefineEquipmentModifier({
  Name="Wooden",
  Key="Holy Symbol (Wooden)",
  Cost=Formula("1"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.161",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Holy Symbol"))
    end,
  },
  Types={
    "Goods",
    "Tools",
    "Spell Component",
    "Divine Focus",
  },
})
DefineEquipmentModifier({
  Name="Silver",
  Key="Holy Symbol (Silver)",
  Cost=Formula("25"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="EQM",
      Formula=Formula("1"),
      Variables={
        "WEIGHTADD",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Holy Symbol"))
    end,
  },
  Types={
    "Goods",
    "Tools",
    "Spell Component",
    "Divine Focus",
  },
})
DefineEquipmentModifier({
  Name="Armor",
  Key="Artisan's Tools (Armor)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Armor)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsArmor",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsArmor",
  },
})
DefineEquipmentModifier({
  Name="Baskets",
  Key="Artisan's Tools (Baskets)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Baskets)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsBaskets",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsBaskets",
  },
})
DefineEquipmentModifier({
  Name="Books",
  Key="Artisan's Tools (Books)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Books)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsBooks",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsBooks",
  },
})
DefineEquipmentModifier({
  Name="Bows",
  Key="Artisan's Tools (Bows)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Bows)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsBows",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsBows",
  },
})
DefineEquipmentModifier({
  Name="Calligraphy",
  Key="Artisan's Tools (Calligraphy)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Calligraphy)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsCalligraphy",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsCalligraphy",
  },
})
DefineEquipmentModifier({
  Name="Carpentry",
  Key="Artisan's Tools (Carpentry)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Carpentry)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsCarpentry",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsCarpentry",
  },
})
DefineEquipmentModifier({
  Name="Cloth",
  Key="Artisan's Tools (Cloth)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Cloth)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsCloth",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsCloth",
  },
})
DefineEquipmentModifier({
  Name="Clothing",
  Key="Artisan's Tools (Clothing)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Clothing)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsClothing",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsClothing",
  },
})
DefineEquipmentModifier({
  Name="Gemcutting",
  Key="Artisan's Tools (Gemcutting)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Gemcutting)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsGemcutting",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsGemcutting",
  },
})
DefineEquipmentModifier({
  Name="Glass",
  Key="Artisan's Tools (Glass)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Glass)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsGlass",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsGlass",
  },
})
DefineEquipmentModifier({
  Name="Jewelry",
  Key="Artisan's Tools (Jewelry)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Jewelry)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsJewelry",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsJewelry",
  },
})
DefineEquipmentModifier({
  Name="Leather",
  Key="Artisan's Tools (Leather)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Leather)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsLeather",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsLeather",
  },
})
DefineEquipmentModifier({
  Name="Locks",
  Key="Artisan's Tools (Locks)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Locks)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsLocks",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsLocks",
  },
})
DefineEquipmentModifier({
  Name="Paintings",
  Key="Artisan's Tools (Paintings)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Paintings)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsPaintings",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsPaintings",
  },
})
DefineEquipmentModifier({
  Name="Pottery",
  Key="Artisan's Tools (Pottery)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Pottery)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsPottery",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsPottery",
  },
})
DefineEquipmentModifier({
  Name="Sculptures",
  Key="Artisan's Tools (Sculptures)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Sculptures)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsSculptures",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsSculptures",
  },
})
DefineEquipmentModifier({
  Name="Ships",
  Key="Artisan's Tools (Ships)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Ships)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsShips",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsShips",
  },
})
DefineEquipmentModifier({
  Name="Shoes",
  Key="Artisan's Tools (Shoes)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Shoes)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsShoes",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsShoes",
  },
})
DefineEquipmentModifier({
  Name="Stonemasonry",
  Key="Artisan's Tools (Stonemasonry)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Stonemasonry)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsStonemasonry",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsStonemasonry",
  },
})
DefineEquipmentModifier({
  Name="Traps",
  Key="Artisan's Tools (Traps)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Traps)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsTraps",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsTraps",
  },
})
DefineEquipmentModifier({
  Name="Weaponsmithing",
  Key="Artisan's Tools (Weaponsmithing)",
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  SourcePage="p.161",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("Masterwork"))
        end,
      },
      Variables={
        "Craft (Weapons)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Tools")) and (item.IsType("Artisan"))
    end,
  },
  GrantedItemTypes={
    "CraftToolsWeaponsmithing",
  },
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsWeaponsmithing",
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Key="Material ~ Adamantine ~ Ammunition",
  AffectsBothHeads=false,
  Cost=Formula("60"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Weapon",
  },
  SpecialProperties={
    {
      Format="adamantine, ignore hardness less than 20",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Key="Material ~ Adamantine ~ Armor / Light",
  AffectsBothHeads=false,
  Cost=Formula("5000"),
  DamageReduction={
    Value="1/-",
  },
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal")) and (item.IsType("Light"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="adamantine",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Info={
    hp="40 hp/inch",
    Hardness="hardness 20",
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Key="Material ~ Adamantine ~ Armor / Medium",
  AffectsBothHeads=false,
  Cost=Formula("10000"),
  DamageReduction={
    Value="2/-",
  },
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal")) and (item.IsType("Medium"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="adamantine",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Info={
    hp="40 hp/inch",
    Hardness="hardness 20",
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Key="Material ~ Adamantine ~ Armor / Heavy",
  AffectsBothHeads=false,
  Cost=Formula("15000"),
  DamageReduction={
    Value="3/-",
  },
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal")) and (item.IsType("Heavy"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="adamantine",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Info={
    hp="40 hp/inch",
    Hardness="hardness 20",
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Key="Material ~ Adamantine ~ Weapon",
  AffectsBothHeads=false,
  Cost=Formula("3000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Weapon",
  },
  SpecialProperties={
    {
      Format="adamantine, ignore hardness less than 20",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Key="Material ~ Mithril ~ Armor / Light",
  Cost=Formula("1000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQM",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "WEIGHTDIV",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("2"),
      Variables={
        "MAXDEX",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "SPELLFAILURE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Light"))
    end,
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
})
DefineEquipmentModifier({
  ChangeArmorType={
    From="Medium",
    To="Light",
  },
  Name="Mithral",
  Key="Material ~ Mithril ~ Armor / Medium",
  Cost=Formula("4000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQM",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "WEIGHTDIV",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("2"),
      Variables={
        "MAXDEX",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "SPELLFAILURE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Medium"))
    end,
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
})
DefineEquipmentModifier({
  ChangeArmorType={
    From="Heavy",
    To="Medium",
  },
  Name="Mithral",
  Key="Material ~ Mithril ~ Armor / Heavy",
  Cost=Formula("9000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQM",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "WEIGHTDIV",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("2"),
      Variables={
        "MAXDEX",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "SPELLFAILURE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Heavy"))
    end,
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Key="Material ~ Mithril ~ Shield",
  Cost=Formula("1000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQM",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "WEIGHTDIV",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("2"),
      Variables={
        "MAXDEX",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "SPELLFAILURE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Shield",
  },
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Key="Material ~ Mithril ~ Weapon / Item",
  AffectsBothHeads=false,
  Cost=Formula("WT*500"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="EQM",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
      },
      Variables={
        "WEIGHTDIV",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Weapon",
    "Special Quality ~ Masterwork ~ Item",
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Ammunition",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
})
DefineEquipmentModifier({
  Name="Darkwood",
  Key="Material ~ Darkwood",
  AffectsBothHeads=true,
  Cost=Formula("WT*10"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQM",
      Formula=Formula("2"),
      Variables={
        "WEIGHTDIV",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return not ((item.IsType("Shield")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
        function (character, item, sources)
          return not ((item.IsType("Shield")))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Wooden"))
    end,
  },
  GrantedItemTypes={
    "Wooden",
    "Darkwood",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  SpecialProperties={
    {
      Format="darkwood",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Ammunition",
    "Weapon",
    "Shield",
  },
  Info={
    hp="10 hp/inch",
    Hardness="hardness 5",
  },
})
DefineEquipmentModifier({
  Name="Dragonhide",
  Key="Material ~ Dragonhide",
  AffectsBothHeads=false,
  Cost=Formula("BASECOST+300"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  GrantedItemTypes={
    "Dragonhide",
    "Nonmetal",
    "Masterwork",
  },
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  SpecialProperties={
    {
      Format="dragonhide",
    },
  },
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
    "Shield",
  },
  Info={
    hp="10 hp/inch",
    Hardness="hardness 10",
  },
})
DefineEquipmentModifier({
  Name="Cold Iron",
  Key="Material ~ Cold Iron",
  AffectsBothHeads=false,
  Cost=Formula("0"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.154",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("(BASECOST)"),
      Conditions={
        function (character, item, sources)
          return not ((item.IsType("Double")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("(BASECOST)/2"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("Double"))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("40"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("Enhancement")) and (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("2000"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("Enhancement")) and (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "ColdIron",
  },
  SpecialProperties={
    {
      Format="cold iron",
    },
  },
  Types={
    "BaseMaterial",
    "Ammunition",
    "Weapon",
  },
  Info={
    hp="30 hp/inch",
    Hardness="hardness 10",
  },
})
DefineEquipmentModifier({
  Name="Alchemical Silver",
  Key="Material ~ Alchemical Silver",
  AffectsBothHeads=false,
  Cost=Formula("0"),
  NameModifier="TEXT=Silver",
  NameModifierLocation="Prefix",
  SourcePage="p.155",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("20"),
      Conditions={
        function (character, item, sources)
          return (item.WieldCategory == "LIGHT") and not ((item.IsType("Double")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("90"),
      Conditions={
        function (character, item, sources)
          return (item.WieldCategory == "ONEHANDED") and not ((item.IsType("Double")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("180"),
      Conditions={
        function (character, item, sources)
          return (item.WieldCategory == "TWOHANDED") and not ((item.IsType("Double")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("90"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("Double"))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
        Stack=true,
      },
      Conditions={
        function (character, item, sources)
          return (item.IsType("PIERCING")) or (item.IsType("SLASHING"))
        end,
      },
      Variables={
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
    function (character, item, sources)
      return (item.IsType("Metal"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Mithral")) or (item.IsType("Adamantine")) or (item.IsType("ColdIron")) or (item.IsType("Silver")))
    end,
  },
  GrantedItemTypes={
    "Metal",
    "Silver",
  },
  SpecialProperties={
    {
      Format="silver",
    },
  },
  Types={
    "BaseMaterial",
    "Ammunition",
    "Weapon",
  },
  Info={
    hp="10 hp/inch",
    Hardness="hardness 8",
  },
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=3,
  },
  Name="Charges (3)",
  Key="Special Ability ~ Charged Item / 3 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/3)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=4,
  },
  Name="Charges (4)",
  Key="Special Ability ~ Charged Item / 4 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/4)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=5,
  },
  Name="Charges (5)",
  Key="Special Ability ~ Charged Item / 5 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/5)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=6,
  },
  Name="Charges (6)",
  Key="Special Ability ~ Charged Item / 6 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/6)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=7,
  },
  Name="Charges (7)",
  Key="Special Ability ~ Charged Item / 7 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/7)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=8,
  },
  Name="Charges (8)",
  Key="Special Ability ~ Charged Item / 8 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/8)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=9,
  },
  Name="Charges (9)",
  Key="Special Ability ~ Charged Item / 9 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/9)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=10,
  },
  Name="Charges (10)",
  Key="Special Ability ~ Charged Item / 10 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/10)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=12,
  },
  Name="Charges (12)",
  Key="Special Ability ~ Charged Item / 12 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/12)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=20,
  },
  Name="Charges (20)",
  Key="Special Ability ~ Charged Item / 20 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/20)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=34,
  },
  Name="Charges (34)",
  Key="Special Ability ~ Charged Item / 34 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/34)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=36,
  },
  Name="Charges (36)",
  Key="Special Ability ~ Charged Item / 36 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/36)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=50,
  },
  Name="Charges (50)",
  Key="Special Ability ~ Charged Item / 50 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/50)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=101,
  },
  Name="Charges (101)",
  Key="Special Ability ~ Charged Item / 101 Maximum",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("((BASECOST/101)*%CHARGES)-BASECOST"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=0,
    Max=10,
  },
  Name="Staff Charges",
  Key="Special Ability ~ Staff Charges",
  Choice={
    Choose=ChooseNothing(),
  },
  Cost=Formula("0"),
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=1,
  },
  Name="Uses per Day (1)",
  Key="Special Ability ~ Uses per Day / 1",
  Choice={
    Choose=ChooseNothing(),
  },
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=2,
    Max=2,
  },
  Name="Uses per Day (2)",
  Key="Special Ability ~ Uses per Day / 2",
  Choice={
    Choose=ChooseNothing(),
  },
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=3,
    Max=3,
  },
  Name="Uses per Day (3)",
  Key="Special Ability ~ Uses per Day / 3",
  Choice={
    Choose=ChooseNothing(),
  },
  Visible=false,
})
DefineEquipmentModifier({
  Charges={
    Min=10,
    Max=10,
  },
  Name="Uses per Day (10)",
  Key="Special Ability ~ Uses per Day / 10",
  Choice={
    Choose=ChooseNothing(),
  },
  Visible=false,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+1)",
  Key="Special Ability ~ +1 ~ Enhancement Cost",
  EquivalentEnhancementBonus=1,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+2)",
  Key="Special Ability ~ +2 ~ Enhancement Cost",
  EquivalentEnhancementBonus=2,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+3)",
  Key="Special Ability ~ +3 ~ Enhancement Cost",
  EquivalentEnhancementBonus=3,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+4)",
  Key="Special Ability ~ +4 ~ Enhancement Cost",
  EquivalentEnhancementBonus=4,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+5)",
  Key="Special Ability ~ +5 ~ Enhancement Cost",
  EquivalentEnhancementBonus=5,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+6)",
  Key="Special Ability ~ +6 ~ Enhancement Cost",
  EquivalentEnhancementBonus=6,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+7)",
  Key="Special Ability ~ +7 ~ Enhancement Cost",
  EquivalentEnhancementBonus=7,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+8)",
  Key="Special Ability ~ +8 ~ Enhancement Cost",
  EquivalentEnhancementBonus=8,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+9)",
  Key="Special Ability ~ +9 ~ Enhancement Cost",
  EquivalentEnhancementBonus=9,
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+10)",
  Key="Special Ability ~ +10 ~ Enhancement Cost",
  EquivalentEnhancementBonus=10,
})
DefineEquipmentModifier({
  Name="Magical Enhancment Cost",
  Key="Special Ability ~ Enhancement Cost",
  Choice={
    Choose=ChooseNumber(1, 1000000, nil, "Additional Cost"),
  },
  Cost=Formula("%CHOICE"),
})
DefineEquipmentModifier({
  Name="|Spell Effect (Single Use/Use Activated)",
  Key="Special Ability ~ Spell Effect / Single Use",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(50*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  Visible=true,
  GrantedItemTypes={
    "Enhancement",
    "Magic",
    "Consumable",
  },
  Types={
    "Potion",
    "Oil",
  },
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=50,
  },
  Name="|Spell Effect (50 Charges/Spell Trigger)",
  Key="Special Ability ~ Spell Effect / Spell Trigger",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("((15*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST))*%CHARGES"),
  NameModifier="SPELL",
  Visible=true,
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
    "Wand",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Command Word)",
  Key="Special Ability ~ Spell Effect / Command Word",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(1800*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Use Activated)",
  Key="Special Ability ~ Spell Effect / Use Activated",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Ability Bonus (Enhancement)",
  Key="Special Ability ~ Bonus Ability / Enhancement",
  Choice={
    Choose=ChooseStatBonus(-6, 6, nil, "Ability"),
  },
  Cost=Formula("(1000*%CHOICE*%CHOICE)"),
  NameModifier="NONAME",
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("%CHOICEVALUE"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "%CHOICE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Enhancement bonus to ability %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Armor Bonus (Enhancement)",
  Key="Special Ability ~ Bonus AC / Enhancement",
  Choice={
    Choose=ChooseNumber(1, 8, nil, "Armor Enhancement Bonus"),
  },
  Cost=Formula("(1000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="ARMOR",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Enhancement bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Bonus Spell",
  Key="Special Ability ~ Bonus Spell",
  Choice={
    Choose=ChooseNumber({0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, true, "Spell Level"),
  },
  Cost=Formula("(1000*(max(%CHOICE,1))*(max(%CHOICE,(1/2))))"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SPELLCAST",
      Formula=Formula("1"),
      Variables={
        "CLASS.ANY;LEVEL.%CHOICE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="bonus spell",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Deflection)",
  Key="Special Ability ~ Bonus AC / Deflection",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Deflection Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="DEFLECTION",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Deflection bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Luck)",
  Key="Special Ability ~ Bonus AC / Luck",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Luck bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Insight)",
  Key="Special Ability ~ Bonus AC / Insight",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="INSIGHT",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Insight bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Sacred)",
  Key="Special Ability ~ Bonus AC / Sacred",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="SACRED",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Sacred bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Profane)",
  Key="Special Ability ~ Bonus AC / Profane",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="PROFANE",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Profane bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Other)",
  Key="Special Ability ~ Bonus AC / Other",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="OTHER",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Other bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Natural Armor Bonus (Enhancement)",
  Key="Special Ability ~ Bonus AC / Natural Armor",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Natural Armor Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("%CHOICE"),
      Type={
        Name="NATURALARMOR",
      },
      Variables={
        "AC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Natural Armor bonus to armor class of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Resistance)",
  Key="Special Ability ~ Bonus Save / Resistance",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Resistance Bonus"),
  },
  Cost=Formula("(1000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("%CHOICE"),
      Type={
        Name="RESISTANCE",
      },
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Resistance bonus to all saving throws of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Luck)",
  Key="Special Ability ~ Bonus Save / Luck",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Luck Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("%CHOICE+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Luck bonus to all saving throws of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Insight)",
  Key="Special Ability ~ Bonus Save / Insight",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Insight Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("%CHOICE"),
      Type={
        Name="INSIGHT",
      },
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Insight bonus to all saving throws of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Sacred)",
  Key="Special Ability ~ Bonus Save / Sacred",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Sacred Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("%CHOICE"),
      Type={
        Name="SACRED",
      },
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Sacred bonus to all saving throws of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Profane)",
  Key="Special Ability ~ Bonus Save / Profane",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Profane Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("%CHOICE"),
      Type={
        Name="PROFANE",
      },
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Profane bonus to all saving throws of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Other)",
  Key="Special Ability ~ Bonus Save / Other",
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Other bonus Bonus"),
  },
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("%CHOICE"),
      Type={
        Name="OTHER",
      },
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Other bonus to all saving throws of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Skill Bonus (Competence)",
  Key="Special Ability ~ Bonus Skill / Competence",
  Choice={
    Choose=ChooseSkillBonus(nil, "Base", 1, 30, "Skill Bonus"),
  },
  Cost=Formula("(100*%CHOICE*%CHOICE)"),
  SourcePage="p.550",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("%CHOICEVALUE"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "%CHOICE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="Competence bonus to selected skill of %CHOICE",
    },
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Spell Resistance",
  Key="Special Ability ~ Bonus Spell Resistance",
  Choice={
    Choose=ChooseNumber(13, 32, nil, "Spell Resistance"),
  },
  Cost=Formula("10000*(%CHOICE-12)"),
  SourcePage="p.550",
  SpellResistance=Formula("%CHOICE"),
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  SpecialProperties={
    {
      Format="base spell resistance of %CHOICE",
    },
  },
  Types={
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Maximize Knowledge Skill",
  Key="Special Ability ~ Bonus Skill / Maximize Knowledge",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Knowledge")))
    end, "Maximized Knowledge Skill"),
  },
  NameModifier="NONAME",
  Visible=true,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("99"),
      Variables={
        "%CHOICE",
      },
    },
  },
  SpecialProperties={
    {
      Format="Grants maximum skill ranks in %CHOICE",
    },
  },
  Types={
    "Intelligence",
  },
})
DefineEquipmentModifier({
  Name="|Maximize Any Skill",
  Key="Special Ability ~ Bonus Skill / Maximize Any Skill",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Strength"))) or ((skill.IsType("Dexterity"))) or ((skill.IsType("Intelligence"))) or ((skill.IsType("Wisdom"))) or ((skill.IsType("Charisma")))
    end, "Maximized Any Skill"),
  },
  NameModifier="NONAME",
  Visible=true,
  Bonuses={
    {
      Category="SKILLRANK",
      Formula=Formula("99"),
      Variables={
        "%CHOICE",
      },
    },
  },
  SpecialProperties={
    {
      Format="Grants maximum skill ranks in %CHOICE",
    },
  },
  Types={
    "Intelligence",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Standard spell duration)",
  Key="Special Ability ~ Spell Effect / Continuous / Hour per Level",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration measured in rounds)",
  Key="Special Ability ~ Spell Effect / Continuous / Round per Level",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(4*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration 1 minute/level)",
  Key="Special Ability ~ Spell Effect / Continuous / Minute per Level",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(2*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration 10 minutes/level)",
  Key="Special Ability ~ Spell Effect / Continuous / 10 Minutes per Level",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(1.5*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration 24-hours or more)",
  Key="Special Ability ~ Spell Effect / Continuous / Day per Level",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("(.5*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.550",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Enhancement")) or (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) or (item.IsType("WeaponEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Weapon")) or (item.IsType("Belt")) or (item.IsType("Body")) or (item.IsType("Chest")) or (item.IsType("Eyes")) or (item.IsType("Feet")) or (item.IsType("Hands")) or (item.IsType("Head")) or (item.IsType("Headband")) or (item.IsType("Neck")) or (item.IsType("Ring")) or (item.IsType("Shoulders")) or (item.IsType("Wrist")) or (item.IsType("Instrument")) or (item.IsType("Staff")) or (item.IsType("Rod"))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Armor",
    "Shield",
    "Weapon",
    "Belt",
    "Body",
    "Chest",
    "Eyes",
    "Feet",
    "Hands",
    "Head",
    "Headband",
    "Neck",
    "Ring",
    "Shoulders",
    "Wrist",
    "Instrument",
    "Staff",
    "Rod",
  },
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=5,
  },
  Name="|Spell Effect (Staff/Primary Power)",
  Key="Special Ability ~ Spell Effect / Staff / Primary Power",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("((400*(max(%SPELLLEVEL,(1/2)))*(max(%CASTERLEVEL,8))+%SPELLCOST+(5*%SPELLXPCOST)))/%CHARGES"),
  NameModifier="SPELL",
  Visible=true,
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Staff",
  },
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=5,
  },
  Name="|Spell Effect (Staff/Secondary Power)",
  Key="Special Ability ~ Spell Effect / Staff / Secondary Power",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("((400/4*3*(max(%SPELLLEVEL,(1/2)))*(max(%CASTERLEVEL,8))+%SPELLCOST+(5*%SPELLXPCOST)))/%CHARGES"),
  NameModifier="SPELL",
  Visible=true,
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Staff",
  },
})
DefineEquipmentModifier({
  Charges={
    Min=1,
    Max=5,
  },
  Name="|Spell Effect (Staff/Lesser Powers)",
  Key="Special Ability ~ Spell Effect / Staff / Lesser Power",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Cost=Formula("((400/2*(max(%SPELLLEVEL,(1/2)))*(max(%CASTERLEVEL,8))+%SPELLCOST+(5*%SPELLXPCOST)))/%CHARGES"),
  NameModifier="SPELL",
  Visible=true,
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Types={
    "Staff",
  },
})
DefineEquipmentModifier({
  Name="Spell Effect (Single Use/Completion/Arcane)",
  Key="Special Ability ~ Spell Effect / Completion / Scroll / Arcane",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")))) and spell.Level >= 0 and spell.Level <= 9
    end),
  },
  Cost=Formula("(25*(max((%SPELLLEVEL),(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.490",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Scroll"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Divine")))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
    "Consumable",
    "Arcane",
  },
  Types={
    "Scroll",
    "Arcane",
  },
})
DefineEquipmentModifier({
  Name="Spell Effect (Single Use/Completion/Divine)",
  Key="Special Ability ~ Spell Effect / Completion / Scroll / Divine",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Divine")))) and spell.Level >= 0 and spell.Level <= 9
    end),
  },
  Cost=Formula("(25*(max((%SPELLLEVEL),(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  NameModifier="SPELL",
  SourcePage="p.490",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Scroll"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Arcane")))
    end,
  },
  GrantedItemTypes={
    "Enhancement",
    "Magic",
    "Consumable",
    "Divine",
  },
  Types={
    "Scroll",
    "Divine",
  },
})
DefineEquipmentModifier({
  Name="Wield One Step Greater",
  Key="Special Quality ~ Wield Size / 1 Step Greater",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-1"),
      Variables={
        "WIELDCATEGORY",
      },
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Wield Two Step Greater",
  Key="Special Quality ~ Wield Size / 2 Steps Greater",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-2"),
      Variables={
        "WIELDCATEGORY",
      },
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Wield Three Step Greater",
  Key="Special Quality ~ Wield Size / 3 Steps Greater",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-3"),
      Variables={
        "WIELDCATEGORY",
      },
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Wield One Step Greater No Penalty",
  Key="Special Quality ~ Wield Size / 1 Step Greater / No Penalty",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-1"),
      Variables={
        "WIELDCATEGORY",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("2"),
      Variables={
        "TOHIT",
      },
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Wield Two Step Greater No Penalty",
  Key="Special Quality ~ Wield Size / 2 Steps Greater / No Penalty",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-2"),
      Variables={
        "WIELDCATEGORY",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Variables={
        "TOHIT",
      },
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Wield Three Step Greater No Penalty",
  Key="Special Quality ~ Wield Size / 3 Steps Greater / No Penalty",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-3"),
      Variables={
        "WIELDCATEGORY",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("6"),
      Variables={
        "TOHIT",
      },
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Weapon)",
  Key="Special Ability ~ +1 ~ Weapon",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=1,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Ammunition")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus1",
  },
  Replaces={
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Types={
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Weapon)",
  Key="Special Ability ~ +2 ~ Weapon",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=2,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Ammunition")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus2",
  },
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Types={
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Weapon)",
  Key="Special Ability ~ +3 ~ Weapon",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=3,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Ammunition")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus3",
  },
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Types={
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Weapon)",
  Key="Special Ability ~ +4 ~ Weapon",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=4,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Ammunition")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus4",
  },
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Types={
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Weapon)",
  Key="Special Ability ~ +5 ~ Weapon",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=5,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("300"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("WEAPON"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("5"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Weapon"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Ammunition")))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus5",
  },
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Types={
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Ammunition)",
  Key="Special Ability ~ +1 ~ Ammunition",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=1,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Ammunition"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus1",
  },
  Replaces={
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  Types={
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Ammunition)",
  Key="Special Ability ~ +2 ~ Ammunition",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=2,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Ammunition"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus2",
  },
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  Types={
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Ammunition)",
  Key="Special Ability ~ +3 ~ Ammunition",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=3,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Ammunition"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus3",
  },
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  Types={
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Ammunition)",
  Key="Special Ability ~ +4 ~ Ammunition",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=4,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Ammunition"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus4",
  },
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  Types={
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Ammunition)",
  Key="Special Ability ~ +5 ~ Ammunition",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=5,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  SourcePage="p.344",
  Visible=true,
  Bonuses={
    {
      Category="ITEMCOST",
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("6"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("AMMUNITION"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("5"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Ammunition"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus5",
  },
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  Types={
    "Ammunition",
  },
})
DefineEquipmentModifier({
  Name="Anarchic",
  Key="Special Ability ~ Anarchic ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.468",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE")
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="chaotically aligned, +2d6 damage against lawful targets, 1 negative level bestowed on lawful wielder",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Axiomatic",
  Key="Special Ability ~ Axiomatic ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.468",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="lawfully aligned, +2d6 damage against chaotic targets, 1 negative level bestowed to chaotic wielder",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Bane",
  Key="Special Ability ~ Bane ~ Weapon",
  Choice={
    Choose=ChooseString({"Aberration Bane", "Animal Bane", "Construct Bane", "Dragon Bane", "Fey Bane", "Aquatic Humanoid Bane", "Dwarf Bane", "Elf Bane", "Giant Bane", "Gnoll Bane", "Gnome Bane", "Goblinoid Bane", "Halfling Bane", "Human Bane", "Reptilian Bane", "Orc Bane", "Magical Beast Bane", "Monstrous Humanoid Bane", "Ooze Bane", "Air Outsider Bane", "Chaotic Outsider Bane", "Earth Outsider Bane", "Evil Outsider Bane", "Fire Outsider Bane", "Good Outsider Bane", "Lawful Outsider Bane", "Water Outsider Bane", "Plant Bane", "Undead Bane", "Vermin Bane", "TITLE=Designated Foe"}),
  },
  EquivalentEnhancementBonus=1,
  NameModifier="NONAME",
  NameModifierLocation="Prefix",
  SourcePage="p.469",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="%CHOICE weapons have +2 enhancement bonus and deal +2d6 bonus damage against the chosen foe",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Brilliant Energy",
  Key="Special Ability ~ Brilliant Energy ~ Weapon",
  EquivalentEnhancementBonus=4,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.470",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="ignores armor and shield bonuses including enhancement, cannot harm undead, constructs, and objects",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Dancing",
  Key="Special Ability ~ Dancing ~ Melee",
  AffectsBothHeads=true,
  EquivalentEnhancementBonus=4,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.346",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  SpecialProperties={
    {
      Format="can be loosed to attack on its own",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Defending",
  Key="Special Ability ~ Defending ~ Melee",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  SpecialProperties={
    {
      Format="can transfer some or all of its enhancement bonus to AC",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Disruption",
  Key="Special Ability ~ Disruption ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Bludgeoning"))
    end,
  },
  SpecialProperties={
    {
      Format="undead hit must make Will save (DC 14) or be destroyed",
    },
  },
  Types={
    "Weapon",
    "Bludgeoning",
  },
})
DefineEquipmentModifier({
  Name="Distance",
  Key="Special Ability ~ Distance ~ Ranged",
  AffectsBothHeads=true,
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Bonuses={
    {
      Category="EQMWEAPON",
      Formula=Formula("2"),
      Variables={
        "RANGEMULT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Ranged"))
    end,
  },
  SpecialProperties={
    {
      Format="range increment doubled",
    },
  },
  Types={
    "Weapon",
    "Ranged",
  },
})
DefineEquipmentModifier({
  Name="Flaming",
  Key="Special Ability ~ Flaming ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 fire damage",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Flaming Burst",
  Key="Special Ability ~ Flaming Burst ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 fire damage, on a critical hit deals +%d10 additional fire damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Frost",
  Key="Special Ability ~ Frost ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 cold damage",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Ghost Touch",
  Key="Special Ability ~ Ghost Touch ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="deals damage normally against incorporeal creatures regardless of bonus",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Holy",
  Key="Special Ability ~ Holy ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="good aligned, +2d6 damage against evil targets, 1 negative level bestowed to evil wielder",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Icy Burst",
  Key="Special Ability ~ Icy Burst ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 cold damage, on a critical hit deals +%d10 additional cold damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Keen",
  Key="Special Ability ~ Keen ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Bonuses={
    {
      Category="EQMWEAPON",
      Formula=Formula("1"),
      Type={
        Name="NONSTACKINGCRIT",
      },
      Variables={
        "CRITRANGEDOUBLE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Piercing")) or (item.IsType("Slashing"))
    end,
  },
  SpecialProperties={
    {
      Format="threat range doubled",
    },
  },
  Types={
    "Weapon",
    "Piercing",
    "Slashing",
  },
})
DefineEquipmentModifier({
  Name="Ki Focus",
  Key="Special Ability ~ Ki Focus ~ Melee",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  SpecialProperties={
    {
      Format="can use ki attacks through weapon",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Merciful",
  Key="Special Ability ~ Merciful ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 damage, deals non-lethal damage only",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Mighty Cleaving",
  Key="Special Ability ~ Mighty Cleaving ~ Melee",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  SpecialProperties={
    {
      Format="allows an additional Cleave attack per round (with Cleave feat)",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Returning",
  Key="Special Ability ~ Returning ~ Thrown",
  AffectsBothHeads=true,
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Thrown"))
    end,
  },
  SpecialProperties={
    {
      Format="when thrown will return just before thrower's next turn",
    },
  },
  Types={
    "Weapon",
    "Thrown",
  },
})
DefineEquipmentModifier({
  Name="Seeking",
  Key="Special Ability ~ Seeking ~ Ranged",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Ranged"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Thrown")))
    end,
  },
  SpecialProperties={
    {
      Format="negates any miss chance",
    },
  },
  Types={
    "Weapon",
    "Ranged",
  },
})
DefineEquipmentModifier({
  Name="Shock",
  Key="Special Ability ~ Shock ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 electricity damage",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Shocking Burst",
  Key="Special Ability ~ Shocking Burst ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+1d6 electricity damage, on a critical hit deals +%d10 additional electricity damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Speed",
  Key="Special Ability ~ Speed ~ Weapon",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Variables={
        "ATTACKS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon"))
    end,
  },
  SpecialProperties={
    {
      Format="grants one extra attack at full base attack bonus when making a full-attack action",
    },
  },
  Types={
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Spell Storing",
  Key="Special Ability ~ Spell Storing ~ Melee",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  SpecialProperties={
    {
      Format="can store a single targeted spell of up to 3rd level with a casting time of 1 standard action",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Thundering",
  Key="Special Ability ~ Thundering ~ Weapon",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="+%d8 sonic damage on a critical hit and permanently deafened unless save vs Fort (DC 14)",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Throwing",
  Key="Special Ability ~ Throwing ~ Melee",
  AffectsBothHeads=true,
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Bonuses={
    {
      Category="EQMWEAPON",
      Formula=Formula("10"),
      Variables={
        "RANGEADD",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  GrantedItemTypes={
    "Ranged",
    "Thrown",
  },
  SpecialProperties={
    {
      Format="can be thrown with a range increment of 10 ft.",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Unholy",
  Key="Special Ability ~ Unholy ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="evil aligned, +2d6 damage against good targets, 1 negative level bestowed to good wielder",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Vicious",
  Key="Special Ability ~ Vicious ~ Melee",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee"))
    end,
  },
  SpecialProperties={
    {
      Format="+2d6 damage to target, plus 1d6 damage to user",
    },
  },
  Types={
    "Weapon",
    "Melee",
  },
})
DefineEquipmentModifier({
  Name="Vorpal",
  Key="Special Ability ~ Vorpal ~ Melee",
  EquivalentEnhancementBonus=5,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) and (item.IsType("Melee")) and (item.IsType("Slashing"))
    end,
  },
  SpecialProperties={
    {
      Format="severs opponents head on natural 20 critical hit",
    },
  },
  Types={
    "Weapon",
    "Melee",
    "Slashing",
  },
})
DefineEquipmentModifier({
  Name="Wounding",
  Key="Special Ability ~ Wounding ~ Weapon",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("WeaponEnhancement")) and (item.IsType("Weapon")) or (item.IsType("Ammunition"))
    end,
  },
  SpecialProperties={
    {
      Format="deals 1 point of bleed damage per hit",
    },
  },
  Types={
    "Ammunition",
    "Weapon",
  },
})
DefineEquipmentModifier({
  Name="Amulet of Mighty Fists",
  Key="Special Ability ~ Amulet of Mighty Fists Base",
  SortKey="0+1",
  Cost=Formula("4000*PLUSTOTAL*PLUSTOTAL"),
  Visible=false,
})
DefineEquipmentModifier({
  Name="+1 to Hit and Damage",
  Key="Special Ability ~ +1 ~ Amulet of Mighty Fists",
  SortKey="0+1",
  EquivalentEnhancementBonus=1,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  Visible=true,
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="+2 to Hit and Damage",
  Key="Special Ability ~ +2 ~ Amulet of Mighty Fists",
  SortKey="0+2",
  EquivalentEnhancementBonus=2,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  Visible=true,
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  Replaces={
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="+3 to Hit and Damage",
  Key="Special Ability ~ +3 ~ Amulet of Mighty Fists",
  SortKey="0+3",
  EquivalentEnhancementBonus=3,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  Visible=true,
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="+4 to Hit and Damage",
  Key="Special Ability ~ +4 ~ Amulet of Mighty Fists",
  SortKey="0+4",
  EquivalentEnhancementBonus=4,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  Visible=true,
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Formula=Formula("4"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="+5 to Hit and Damage",
  Key="Special Ability ~ +5 ~ Amulet of Mighty Fists",
  SortKey="0+5",
  EquivalentEnhancementBonus=5,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  Visible=true,
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Formula=Formula("5"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Anarchic",
  Key="Special Ability ~ Anarchic ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.468",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE")
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Anarchic",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are chaotically aligned, +2d6 damage against lawful targets, 1 negative level bestowed on lawful wielder",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Axiomatic",
  Key="Special Ability ~ Axiomatic ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.468",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Axiomatic",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are lawfully aligned, +2d6 damage against chaotic targets, 1 negative level bestowed to chaotic wielder",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Bane",
  Key="Special Ability ~ Bane ~ Amulet of Mighty Fists",
  SortKey="+1",
  Choice={
    Choose=ChooseString({"Aberrations", "Animals", "Constructs", "Dragons", "Fey", "Humanoids (Aquatic)", "Humanoids (Dwarf)", "Humanoids (Elf)", "Humanoids (Giant)", "Humanoids (Gnoll)", "Humanoids (Gnome)", "Humanoids (Goblinoid)", "Humanoids (Halfling)", "Humanoids (Human)", "Humanoids (Reptilian)", "Humanoids (Orc)", "Magical Beasts", "Monstrous Humanoids", "Oozes", "Outsiders (Air)", "Outsiders (Chaotic)", "Outsiders (Earth)", "Outsiders (Evil)", "Outsiders (Fire)", "Outsiders (Good)", "Outsiders (Lawful)", "Outsiders (Water)", "Plants", "Undead", "Vermin", "TITLE=Designated Foe"}),
  },
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.469",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Bane",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks gain a +2 enhancement bonus and do +2d6 bonus damage against %CHOICE",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Brilliant Energy",
  Key="Special Ability ~ Brilliant Energy ~ Amulet of Mighty Fists",
  SortKey="+4",
  EquivalentEnhancementBonus=4,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.470",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Brilliant Energy",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks ignore armor and shield bonuses including enhancement, cannot harm undead, constructs, and objects",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Defending",
  Key="Special Ability ~ Defending ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Defending",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="can transfer some or all of its enhancement bonus to AC",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Disruption",
  Key="Special Ability ~ Disruption ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Disruption",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="undead hit by unarmed and natural attacks must make Will save (DC 14) or be destroyed",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Flaming",
  Key="Special Ability ~ Flaming ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Flaming",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 fire damage",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Flaming Burst",
  Key="Special Ability ~ Flaming Burst ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Flaming Burst",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 fire damage, on a critical hit deals +%d10 additional fire damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Frost",
  Key="Special Ability ~ Frost ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Frost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 cold damage",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Ghost Touch",
  Key="Special Ability ~ Ghost Touch ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Ghost Touch",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks deal damage normally against incorporeal creatures regardless of bonus",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Holy",
  Key="Special Ability ~ Holy ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Holy",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are good aligned, +2d6 damage against evil targets, 1 negative level bestowed to evil wielder",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Icy Burst",
  Key="Special Ability ~ Icy Burst ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Icy Burst",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 cold damage, on a critical hit deals +%d10 additional cold damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Ki Focus",
  Key="Special Ability ~ Ki Focus ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.347",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Ki Focus",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="can use ki attacks through unarmed and natural attacks",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Merciful",
  Key="Special Ability ~ Merciful ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Merciful",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 damage, deals non-lethal damage only",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Mighty Cleaving",
  Key="Special Ability ~ Mighty Cleaving ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Mighty Cleaving",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="allows an additional Cleave attack per round on unarmed and natural attacks (with Cleave feat)",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Shock",
  Key="Special Ability ~ Shock ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Shock",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 electricity damage",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Shocking Burst",
  Key="Special Ability ~ Shocking Burst ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Shocking Burst",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 electricity damage, on a critical hit deals +%d10 additional electricity damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Speed",
  Key="Special Ability ~ Speed ~ Amulet of Mighty Fists",
  SortKey="+3",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Speed",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="grants one extra attack with unarmed or natural attack at full base attack bonus when making a full-attack action",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Spell Storing",
  Key="Special Ability ~ Spell Storing ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.348",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Spell Storing",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="can store a single targeted spell of up to 3rd level with a casting time of 1 standard action",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Thundering",
  Key="Special Ability ~ Thundering ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Thundering",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +%d8 sonic damage on a critical hit and permanently deafened unless save vs Fort (DC 14)",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Unholy",
  Key="Special Ability ~ Unholy ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
        end,
      },
    },
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Unholy",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
        end,
      },
      Variables={
        "NEGLEVELS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are evil aligned, +2d6 damage against good targets, 1 negative level bestowed to good wielder",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Vicious",
  Key="Special Ability ~ Vicious ~ Amulet of Mighty Fists",
  SortKey="+1",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Vicious",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +2d6 damage to target, plus 1d6 damage to user",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="Wounding",
  Key="Special Ability ~ Wounding ~ Amulet of Mighty Fists",
  SortKey="+2",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.349",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Wounding",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))
    end,
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks deal 1 point of bleed damage per hit",
    },
  },
  Types={
    "Amulet of Mighty Fists",
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Armor)",
  Key="Special Ability ~ +1 ~ Armor",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=1,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="ArmorEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus1",
  },
  Replaces={
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Armor)",
  Key="Special Ability ~ +2 ~ Armor",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=2,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Type={
        Name="ArmorEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus2",
  },
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Armor)",
  Key="Special Ability ~ +3 ~ Armor",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=3,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("3"),
      Type={
        Name="ArmorEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus3",
  },
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Armor)",
  Key="Special Ability ~ +4 ~ Armor",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=4,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("4"),
      Type={
        Name="ArmorEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus4",
  },
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Armor)",
  Key="Special Ability ~ +5 ~ Armor",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=5,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("5"),
      Type={
        Name="ArmorEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("ARMOR"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Armor"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus5",
  },
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Shield)",
  Key="Special Ability ~ +1 ~ Shield",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=1,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="ShieldEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus1",
  },
  Replaces={
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Shield)",
  Key="Special Ability ~ +2 ~ Shield",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=2,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Type={
        Name="ShieldEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus2",
  },
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Shield)",
  Key="Special Ability ~ +3 ~ Shield",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=3,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("3"),
      Type={
        Name="ShieldEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus3",
  },
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Shield)",
  Key="Special Ability ~ +4 ~ Shield",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=4,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("4"),
      Type={
        Name="ShieldEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus4",
  },
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Shield)",
  Key="Special Ability ~ +5 ~ Shield",
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=5,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  SourcePage="p.340",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("5"),
      Type={
        Name="ShieldEnhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
    {
      Category="ITEMCOST",
      Formula=Formula("150"),
      Conditions={
        function (character, item, sources)
          return not ((item.HasModifierType("MASTERWORKQUALITY")))
        end,
        function (character, item, sources)
          return (item.IsType("SHIELD"))
        end,
      },
      Variables={
        "Cost",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Shield"))
    end,
  },
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus5",
  },
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Animated",
  Key="Special Ability ~ Animated ~ Shield",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Bonuses={
    {
      Category="EQM",
      Formula=Formula("-EQHANDS"),
      Variables={
        "HANDS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="floats within 2 feet of the wielder, but still take normal penalties",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Arrow Catching",
  Key="Special Ability ~ Arrow Catching ~ Shield",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="attracts ranged weapons to it; grants +1 deflection bonus vs ranged weapons",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Arrow Deflection",
  Key="Special Ability ~ Arrow Deflection ~ Shield",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Deflect Arrows",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="Reflex save (DC 20 + Missile enhancement) to deflect arrows; 1/round",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Bashing",
  Key="Special Ability ~ Bashing ~ Shield / Heavy",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "SHIELDBASHINGDIESIZESTEP",
      },
    },
    {
      Category="EQMWEAPON",
      Formula=Formula("2"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Heavy"))
    end,
  },
  GrantedItemTypes={
    "Bashing",
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="damage dice increases to 1d8",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Bashing",
  Key="Special Ability ~ Bashing ~ Shield / Light",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "SHIELDBASHINGDIESIZESTEP",
      },
    },
    {
      Category="EQMWEAPON",
      Formula=Formula("2"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Light"))
    end,
  },
  GrantedItemTypes={
    "Bashing",
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="damage dice increases to 1d6",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Blinding",
  Key="Special Ability ~ Blinding ~ Shield",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="flashes light 2/day upon command; range 20 ft.; Reflex save (DC 14) or be blinded for 1d4 rounds",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Acid)",
  Key="Special Ability ~ Energy Resistance / Acid ~ Armor",
  Cost=Formula("18000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of acid damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Acid/Improved)",
  Key="Special Ability ~ Energy Resistance / Acid / Improved ~ Armor",
  Cost=Formula("42000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of acid damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Acid/Greater)",
  Key="Special Ability ~ Energy Resistance / Acid / Greater ~ Armor",
  Cost=Formula("66000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of acid damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Cold)",
  Key="Special Ability ~ Energy Resistance / Cold ~ Armor",
  Cost=Formula("18000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of cold damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Cold/Improved)",
  Key="Special Ability ~ Energy Resistance / Cold / Improved ~ Armor",
  Cost=Formula("42000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of cold damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Cold/Greater)",
  Key="Special Ability ~ Energy Resistance / Cold / Greater ~ Armor",
  Cost=Formula("66000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of cold damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Electricity)",
  Key="Special Ability ~ Energy Resistance / Electricity ~ Armor",
  Cost=Formula("18000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of electricity damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Electricity/Improved)",
  Key="Special Ability ~ Energy Resistance / Electricity / Improved ~ Armor",
  Cost=Formula("42000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of electricity damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Electricity/Greater)",
  Key="Special Ability ~ Energy Resistance / Electricity / Greater ~ Armor",
  Cost=Formula("66000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of electricity damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Fire)",
  Key="Special Ability ~ Energy Resistance / Fire ~ Armor",
  Cost=Formula("18000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of fire damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Fire/Improved)",
  Key="Special Ability ~ Energy Resistance / Fire / Improved ~ Armor",
  Cost=Formula("42000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of fire damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Fire/Greater)",
  Key="Special Ability ~ Energy Resistance / Fire / Greater ~ Armor",
  Cost=Formula("66000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of fire damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Sonic)",
  Key="Special Ability ~ Energy Resistance / Sonic ~ Armor",
  Cost=Formula("18000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of sonic damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Sonic/Improved)",
  Key="Special Ability ~ Energy Resistance / Sonic / Improved ~ Armor",
  Cost=Formula("42000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of sonic damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Sonic/Greater)",
  Key="Special Ability ~ Energy Resistance / Sonic / Greater ~ Armor",
  Cost=Formula("66000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.462",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of sonic damage per attack",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Etherealness",
  Key="Special Ability ~ Etherealness ~ Armor",
  Cost=Formula("49000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.463",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="become ethereal (as Ethereal Jaunt spell) 1/day",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Light Fortification",
  Key="Special Ability ~ Fortification / Light ~ Armor",
  SortKey="Fortification (Light)",
  EquivalentEnhancementBonus=1,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.463",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Eqmod ~ Fortification (Light)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Bracer"))
    end,
  },
  Replaces={
    "Special Ability ~ Fortification / Heavy ~ Armor",
    "Special Ability ~ Fortification / Moderate ~ Armor",
  },
  SpecialProperties={
    {
      Format="25% chance to negate critical hits and sneak attacks",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Moderate Fortification",
  Key="Special Ability ~ Fortification / Moderate ~ Armor",
  SortKey="Fortification (Moderate)",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.463",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Eqmod ~ Fortification (Medium)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Bracer"))
    end,
  },
  Replaces={
    "Special Ability ~ Fortification / Heavy ~ Armor",
    "Special Ability ~ Fortification / Light ~ Armor",
  },
  SpecialProperties={
    {
      Format="50% chance to negate critical hits and sneak attacks",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Heavy Fortification",
  Key="Special Ability ~ Fortification / Heavy ~ Armor",
  SortKey="Fortification (Heavy)",
  EquivalentEnhancementBonus=5,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.463",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Eqmod ~ Fortification (Heavy)",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Bracer"))
    end,
  },
  Replaces={
    "Special Ability ~ Fortification / Light ~ Armor",
    "Special Ability ~ Fortification / Moderate ~ Armor",
  },
  SpecialProperties={
    {
      Format="75% chance to negate critical hits and sneak attacks",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Ghost Touch",
  Key="Special Ability ~ Ghost Touch ~ Armor",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.463",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="armor and enhancement count vs. incorporeal attacks",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Glamered",
  Key="Special Ability ~ Glamered ~ Armor",
  Cost=Formula("2700"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.463",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="can appear as normal clothing on command",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Invulnerability",
  Key="Special Ability ~ Invulnerability ~ Armor",
  DamageReduction={
    Value="5/Magic",
  },
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="grants DR 5/magic",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
})
DefineEquipmentModifier({
  Name="Reflecting",
  Key="Special Ability ~ Reflecting ~ Shield",
  EquivalentEnhancementBonus=5,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="reflect spell (as Spell Turning spell) 1/day",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Shadow",
  Key="Special Ability ~ Shadow ~ Armor",
  Cost=Formula("3750"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("5"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "STEALTH",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="+5 competence bonus to Stealth checks",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Shadow (Improved)",
  Key="Special Ability ~ Shadow / Improved ~ Armor",
  Cost=Formula("15000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("10"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "STEALTH",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="+10 competence bonus to Stealth checks",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Shadow (Greater)",
  Key="Special Ability ~ Shadow / Greater ~ Armor",
  Cost=Formula("33750"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("15"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "STEALTH",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="+15 competence bonus to Stealth checks",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Slick",
  Key="Special Ability ~ Slick ~ Armor",
  Cost=Formula("3750"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("5"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "ESCAPE ARTIST",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="+5 competence bonus to Escape Artist checks",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Slick (Improved)",
  Key="Special Ability ~ Slick / Improved ~ Armor",
  Cost=Formula("15000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("10"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "ESCAPE ARTIST",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="+10 competence bonus to Escape Artist checks",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Slick (Greater)",
  Key="Special Ability ~ Slick / Greater ~ Armor",
  Cost=Formula("33750"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("15"),
      Type={
        Name="COMPETENCE",
      },
      Variables={
        "ESCAPE ARTIST",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor"))
    end,
  },
  SpecialProperties={
    {
      Format="+15 competence bonus to Escape Artist checks",
    },
  },
  Types={
    "Armor",
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 13",
  Key="Special Ability ~ Spell Resistance / 13 ~ Armor",
  EquivalentEnhancementBonus=2,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  SpellResistance=Formula("13"),
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="grants spell resistance 13",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 15",
  Key="Special Ability ~ Spell Resistance / 15 ~ Armor",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  SpellResistance=Formula("15"),
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="grants spell resistance 15",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 17",
  Key="Special Ability ~ Spell Resistance / 17 ~ Armor",
  EquivalentEnhancementBonus=4,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  SpellResistance=Formula("17"),
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="grants spell resistance 17",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 19",
  Key="Special Ability ~ Spell Resistance / 19 ~ Armor",
  EquivalentEnhancementBonus=5,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  SpellResistance=Formula("19"),
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="grants spell resistance 19",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
})
DefineEquipmentModifier({
  Name="Undead Controlling",
  Key="Special Ability ~ Undead Controlling ~ Armor",
  Cost=Formula("49000"),
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) or (item.IsType("ShieldEnhancement")) and (item.IsType("Armor")) or (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="control up to 26 HD of undead per day (As Control Undead spell)",
    },
  },
  Types={
    "Armor",
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Wild",
  Key="Special Ability ~ Wild ~ Armor",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ArmorEnhancement")) and (item.IsType("Armor")) or (item.IsType("Bracer"))
    end,
  },
  SpecialProperties={
    {
      Format="preserve armor and enhancment bonus while using Wild Shape",
    },
  },
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
})
DefineEquipmentModifier({
  Name="Wild",
  Key="Special Ability ~ Wild ~ Shield",
  EquivalentEnhancementBonus=3,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  SourcePage="p.464",
  Visible=true,
  Conditions={
    function (character, item, sources)
      return (item.IsType("ShieldEnhancement")) and (item.IsType("Shield"))
    end,
  },
  SpecialProperties={
    {
      Format="preserve shield and enhancment bonus while using Wild Shape",
    },
  },
  Types={
    "Shield",
  },
})
DefineEquipmentModifier({
  Name="Intelligent Magic Item Base",
  Key="Intelligent Item ~ Base",
  Cost=Formula("500"),
  NameModifier="TEXT=Intelligent",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Base Intelligent Item",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Variables={
        "IntItemSenseRange",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["IntelligentItemEgo"] >= 20)
        end,
      },
      Variables={
        "IntItemNegativeLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["IntelligentItemEgo"] >= 30)
        end,
      },
      Variables={
        "IntItemNegativeLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["IntelligentItemEgo"] <= 19)
        end,
      },
      Variables={
        "NegativeLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["IntelligentItemEgo"] <= 29)
        end,
      },
      Variables={
        "NegativeLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["IntelligentItemEgo"] >= 30)
        end,
      },
      Variables={
        "NegativeLevel",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "IntItemStatINT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "IntItemStatWIS",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "IntItemStatCHA",
      },
    },
    {
      Category="VAR",
      Formula=Formula("COST"),
      Variables={
        "BaseCostTracker",
      },
    },
    {
      Category="VAR",
      Formula=Formula("(BaseCostTracker>=1001)+(BaseCostTracker>=5001)+(BaseCostTracker>=10001)+(BaseCostTracker>=20001)+(BaseCostTracker>=50001)+(BaseCostTracker>=50001)+(BaseCostTracker>=100001)+(BaseCostTracker>=100001)+(BaseCostTracker>=200001)+(BaseCostTracker>=200001)+(BaseCostTracker>=200001)+(BaseCostTracker>=200001)"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("Magic"))
    end,
  },
  SpecialProperties={
    {
      Format="Intelligence %, Wisdom %, Charisma %, Ego Score %",
      Arguments={
        Formula("IntItemStatINT"),
        Formula("IntItemStatWIS"),
        Formula("IntItemStatCHA"),
        Formula("IntelligentItemEgo"),
      },
    },
    {
      Format="Empathy allows the item to encourage or discourage certain actions by communicating emotions and urges. It does not allow for verbal communication.",
      Conditions={
        function (character, item, sources)
          return not ((character.HasEquipped(function (item) return stringMatch(item.Name, "EQMOD=Intelligent Item ~ Communication / Speech") end)) or (character.HasEquipped(function (item) return stringMatch(item.Name, "EQMOD=Intelligent Item ~ Communication / Telepathy") end)))
        end,
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated Purpose",
  Key="Intelligent Item ~ Purpose",
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Has Special Purpose",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 11",
  Key="Intelligent Item ~ Ability Score / Intelligence 11",
  Cost=Formula("200"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 11",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntItemStatINT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 12",
  Key="Intelligent Item ~ Ability Score / Intelligence 12",
  Cost=Formula("500"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 12",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntItemStatINT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "SpeechBonusLang",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 13",
  Key="Intelligent Item ~ Ability Score / Intelligence 13",
  Cost=Formula("700"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 13",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntItemStatINT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 14",
  Key="Intelligent Item ~ Ability Score / Intelligence 14",
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 14",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntItemStatINT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "SpeechBonusLang",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 15",
  Key="Intelligent Item ~ Ability Score / Intelligence 15",
  Cost=Formula("1400"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 15",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "IntItemStatINT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 16",
  Key="Intelligent Item ~ Ability Score / Intelligence 16",
  Cost=Formula("2000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 16",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "IntItemStatINT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "SpeechBonusLang",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 17",
  Key="Intelligent Item ~ Ability Score / Intelligence 17",
  Cost=Formula("2800"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 17",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Variables={
        "IntItemStatINT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 18",
  Key="Intelligent Item ~ Ability Score / Intelligence 18",
  Cost=Formula("4000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 18",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "IntItemStatINT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "SpeechBonusLang",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 19",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 19",
  Key="Intelligent Item ~ Ability Score / Intelligence 19",
  Cost=Formula("5200"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 19",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("9"),
      Variables={
        "IntItemStatINT",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 20",
  Key="Intelligent Item ~ Ability Score / Intelligence 20",
  Cost=Formula("8000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 20",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "IntItemStatINT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "SpeechBonusLang",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Intelligence 11",
    "Intelligent Item ~ Ability Score / Intelligence 12",
    "Intelligent Item ~ Ability Score / Intelligence 13",
    "Intelligent Item ~ Ability Score / Intelligence 14",
    "Intelligent Item ~ Ability Score / Intelligence 15",
    "Intelligent Item ~ Ability Score / Intelligence 16",
    "Intelligent Item ~ Ability Score / Intelligence 17",
    "Intelligent Item ~ Ability Score / Intelligence 18",
    "Intelligent Item ~ Ability Score / Intelligence 19",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 11",
  Key="Intelligent Item ~ Ability Score / Wisdom 11",
  Cost=Formula("200"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 11",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 12",
  Key="Intelligent Item ~ Ability Score / Wisdom 12",
  Cost=Formula("500"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 12",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 13",
  Key="Intelligent Item ~ Ability Score / Wisdom 13",
  Cost=Formula("700"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 13",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 14",
  Key="Intelligent Item ~ Ability Score / Wisdom 14",
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 14",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 15",
  Key="Intelligent Item ~ Ability Score / Wisdom 15",
  Cost=Formula("1400"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 15",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 16",
  Key="Intelligent Item ~ Ability Score / Wisdom 16",
  Cost=Formula("2000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 16",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 17",
  Key="Intelligent Item ~ Ability Score / Wisdom 17",
  Cost=Formula("2800"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 17",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 18",
  Key="Intelligent Item ~ Ability Score / Wisdom 18",
  Cost=Formula("4000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 18",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 19",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 19",
  Key="Intelligent Item ~ Ability Score / Wisdom 19",
  Cost=Formula("5200"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 19",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("9"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 20",
  Key="Intelligent Item ~ Ability Score / Wisdom 20",
  Cost=Formula("8000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 20",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "IntItemStatWIS",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Wisdom 11",
    "Intelligent Item ~ Ability Score / Wisdom 12",
    "Intelligent Item ~ Ability Score / Wisdom 13",
    "Intelligent Item ~ Ability Score / Wisdom 14",
    "Intelligent Item ~ Ability Score / Wisdom 15",
    "Intelligent Item ~ Ability Score / Wisdom 16",
    "Intelligent Item ~ Ability Score / Wisdom 17",
    "Intelligent Item ~ Ability Score / Wisdom 18",
    "Intelligent Item ~ Ability Score / Wisdom 19",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 11",
  Key="Intelligent Item ~ Ability Score / Charisma 11",
  Cost=Formula("200"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 11",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 12",
  Key="Intelligent Item ~ Ability Score / Charisma 12",
  Cost=Formula("500"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 12",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 13",
  Key="Intelligent Item ~ Ability Score / Charisma 13",
  Cost=Formula("700"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 13",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 14",
  Key="Intelligent Item ~ Ability Score / Charisma 14",
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 14",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 15",
  Key="Intelligent Item ~ Ability Score / Charisma 15",
  Cost=Formula("1400"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 15",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 16",
  Key="Intelligent Item ~ Ability Score / Charisma 16",
  Cost=Formula("2000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 16",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 17",
  Key="Intelligent Item ~ Ability Score / Charisma 17",
  Cost=Formula("2800"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 17",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("3"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 18",
  Key="Intelligent Item ~ Ability Score / Charisma 18",
  Cost=Formula("4000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 18",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("8"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 19",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 19",
  Key="Intelligent Item ~ Ability Score / Charisma 19",
  Cost=Formula("5200"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 19",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("4"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("9"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 20",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 20",
  Key="Intelligent Item ~ Ability Score / Charisma 20",
  Cost=Formula("8000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 20",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("5"),
      Variables={
        "IntelligentItemEgo",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "IntItemStatCHA",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Ability Score / Charisma 11",
    "Intelligent Item ~ Ability Score / Charisma 12",
    "Intelligent Item ~ Ability Score / Charisma 13",
    "Intelligent Item ~ Ability Score / Charisma 14",
    "Intelligent Item ~ Ability Score / Charisma 15",
    "Intelligent Item ~ Ability Score / Charisma 16",
    "Intelligent Item ~ Ability Score / Charisma 17",
    "Intelligent Item ~ Ability Score / Charisma 18",
    "Intelligent Item ~ Ability Score / Charisma 19",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Speech",
  Key="Intelligent Item ~ Communication / Speech",
  Cost=Formula("500"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Speech",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  SpecialProperties={
    {
      Format="An intelligent item with the capability for speech can talk using any of the languages it knows. It automatically knows Common.",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Telepathy",
  Key="Intelligent Item ~ Communication / Telepathy",
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Telepathy",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  SpecialProperties={
    {
      Format="Telepathy allows an intelligent item to communicate with its wielder telepathically, regardless of its known languages. The wielder must be touching the item to communicate in this way.",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses (60')",
  Key="Intelligent Item ~ Sense / Range 60",
  Cost=Formula("500"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("30"),
      Variables={
        "INTITEMSENSERANGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Sense / Range 120",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses (120')",
  Key="Intelligent Item ~ Sense / Range 120",
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("90"),
      Variables={
        "INTITEMSENSERANGE",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  Replaces={
    "Intelligent Item ~ Sense / Range 60",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses Darkvision",
  Key="Intelligent Item ~ Sense / Darkvision",
  Cost=Formula("500"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Darkvision",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  SpecialProperties={
    {
      Format="Darkvision % ft.",
      Arguments={
        Formula("IntItemSenseRange"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses Blindsense",
  Key="Intelligent Item ~ Sense / Blindsense",
  Cost=Formula("5000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Blindsense",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  SpecialProperties={
    {
      Format="Blindsense % ft.",
      Arguments={
        Formula("IntItemSenseRange"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Read Languages",
  Key="Intelligent Item ~ Communication / Read Language",
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ ReadLang",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  SpecialProperties={
    {
      Format="Read Languages",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Read Magic",
  Key="Intelligent Item ~ Communication / Read Magic",
  Cost=Formula("2000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ ReadMagic",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  SpecialProperties={
    {
      Format="Read Magic",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (CG)",
  Key="Intelligent Item ~ Alignment / Chaotic Good",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (CG)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("CG"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (CN)",
  Key="Intelligent Item ~ Alignment / Chaotic Neutral",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (CN)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("CG") or character.IsAlignment("CE") or character.IsAlignment("CN"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (CE)",
  Key="Intelligent Item ~ Alignment / Chaotic Evil",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (CE)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("CE"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (NE)",
  Key="Intelligent Item ~ Alignment / Neutral Evil",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (NE)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("NE") or character.IsAlignment("NG") or character.IsAlignment("TN"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (LE)",
  Key="Intelligent Item ~ Alignment / Lawful Evil",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (LE)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LE"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (LG)",
  Key="Intelligent Item ~ Alignment / Lawful Good",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (LG)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LG"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (LN)",
  Key="Intelligent Item ~ Alignment / Lawful Neutral",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (LN)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LN") or character.IsAlignment("LG") or character.IsAlignment("LE"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Neutral Good",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (NG)",
  Key="Intelligent Item ~ Alignment / Neutral Good",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (NG)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("NG"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / True Neutral",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (TN)",
  Key="Intelligent Item ~ Alignment / True Neutral",
  Cost=Formula("0"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (TN)",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("TN"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base"))
    end,
  },
  GrantedItemTypes={
    "ItemAlign",
  },
  Replaces={
    "Intelligent Item ~ Alignment / Chaotic Good",
    "Intelligent Item ~ Alignment / Chaotic Neutral",
    "Intelligent Item ~ Alignment / Chaotic Evil",
    "Intelligent Item ~ Alignment / Neutral Evil",
    "Intelligent Item ~ Alignment / Lawful Evil",
    "Intelligent Item ~ Alignment / Lawful Good",
    "Intelligent Item ~ Alignment / Lawful Neutral",
    "Intelligent Item ~ Alignment / Neutral Good",
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 0-level spell at will",
  Key="Intelligent Item ~ Power / 0 Level Spell / At-Will",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 0 and spell.Level <= 0
    end),
  },
  Cost=Formula("1000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 1st-level spell 3/day",
  Key="Intelligent Item ~ Power / 1st Level Spell / 3 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 1 and spell.Level <= 1
    end),
  },
  Cost=Formula("1200"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 2nd-level spell 1/day",
  Key="Intelligent Item ~ Power / 2nd Level Spell / 1 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 2 and spell.Level <= 2
    end),
  },
  Cost=Formula("2400"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 1/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 3rd-level spell 1/day",
  Key="Intelligent Item ~ Power / 3rd Level Spell / 1 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 3 and spell.Level <= 3
    end),
  },
  Cost=Formula("6000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 1/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 3rd-level spell 3/day",
  Key="Intelligent Item ~ Power / 3rd Level Spell / 3 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 3 and spell.Level <= 3
    end),
  },
  Cost=Formula("18000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 4th-level spell 3/day",
  Key="Intelligent Item ~ Power / 4th Level Spell / 3 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 4 and spell.Level <= 4
    end),
  },
  Cost=Formula("33600"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 2nd-level spell 3/day",
  Key="Intelligent Item ~ Power / 2nd Level Spell / 3 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 2 and spell.Level <= 2
    end),
  },
  Cost=Formula("7200"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 4th-level spell 1/day",
  Key="Intelligent Item ~ Power / 4th Level Spell / 1 per Day",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 4 and spell.Level <= 4
    end),
  },
  Cost=Formula("11200"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % 1/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Magic aura on itself at will",
  Key="Intelligent Item ~ Power / Magic Aura / At-Will",
  Cost=Formula("2000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Magic Aura",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item can use magic aura on itself at will",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 5 ranks in a skill",
  Key="Intelligent Item ~ Power / Skill Ranks / 5",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end, "Skill Choice"),
  },
  Cost=Formula("2500"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item has 5 ranks in %",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Move 10 feet",
  Key="Intelligent Item ~ Power / Movement / Walk 10 Feet",
  Cost=Formula("5000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Move",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item can sprout limbs and move with a speed of 10 feet",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 10 ranks in a skill",
  Key="Intelligent Item ~ Power / Skill Ranks / 10",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end, "Skill Choice"),
  },
  Cost=Formula("10000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item has 10 ranks in %",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Change shape",
  Key="Intelligent Item ~ Power / Change Shape",
  Cost=Formula("10000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Change Shape",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item can change shape into one other form of the same size",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Fly 30 feet",
  Key="Intelligent Item ~ Power / Movement / Fly 30 Feet",
  Cost=Formula("10000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Fly",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item can fly (as per the spell) at a speed of 30 feet",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Teleport itself 1/day",
  Key="Intelligent Item ~ Power / Movement / Teleport / 1 per Day",
  Cost=Formula("15000"),
  NameModifier="NOTHING",
  Visible=true,
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Teleport",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.IsType("ItemAlign"))
    end,
  },
  SpecialProperties={
    {
      Format="Item can teleport itself 1/day",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay diametrically opposed alignment",
  Key="Intelligent Item ~ Purpose / Slay Alignment",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay diametrically opposed alignment",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay arcane spellcasters (including spellcasting monsters and those that use spell-like abilities)",
  Key="Intelligent Item ~ Purpose / Slay Arcane Spellcaster",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay arcane spellcasters (including spellcasting monsters and those that use spell-like abilities)",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay divine spellcasters (including divine entities and servitors)",
  Key="Intelligent Item ~ Purpose / Slay Divine Spellcaster",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay divine spellcasters (including divine entities and servitors)",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay non-spellcasters",
  Key="Intelligent Item ~ Purpose / Slay Non-spellcaster",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay non-spellcasters",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay a particular creature type (see the bane special ability for choices)",
  Key="Intelligent Item ~ Purpose / Slay Creature Type",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay a particular creature type (see the bane special ability for choices)",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay a particular race or kind of creature",
  Key="Intelligent Item ~ Purpose / Slay Creature Race",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay a particular race or kind of creature",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defend a particular race or kind of creature",
  Key="Intelligent Item ~ Purpose / Defend Creature Race",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defend a particular race or kind of creature",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay the servants of a specific deity",
  Key="Intelligent Item ~ Purpose / Slay Servants of Deity",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay the servants of a specific deity",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defend the servants and interests of a specific deity",
  Key="Intelligent Item ~ Purpose / Defend Servants of Deity",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defend the servants and interests of a specific deity",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay all (other than the item and the wielder)",
  Key="Intelligent Item ~ Purpose / Slay All",
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Purpose",
      },
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose"))
    end,
  },
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  SpecialProperties={
    {
      Format="Defeat/slay all (other than the item and the wielder)",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated Detect special purpose foes",
  Key="Intelligent Item ~ Purpose Power / Detect Foe",
  Cost=Formula("10000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Dedicated Power - Detect special purpose foes",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 4th-level spell at will",
  Key="Intelligent Item ~ Purpose Power / 4th Level Spell / At-Will",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 4 and spell.Level <= 4
    end),
  },
  Cost=Formula("56000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated +2 luck attacks & saves",
  Key="Intelligent Item ~ Purpose Power / Luck Bonus",
  Cost=Formula("80000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="SAVE",
      Formula=Formula("2+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "ALL",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Dedicated Power - +2 luck attacks & saves",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 5th-level spell at will",
  Key="Intelligent Item ~ Purpose Power / 5th Level Spell / At-Will",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 5 and spell.Level <= 5
    end),
  },
  Cost=Formula("90000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 6th-level spell at will",
  Key="Intelligent Item ~ Purpose Power / 6th Level Spell / At-Will",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 6 and spell.Level <= 6
    end),
  },
  Cost=Formula("132000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 7th-level spell at will",
  Key="Intelligent Item ~ Purpose Power / 7th Level Spell / At-Will",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 7 and spell.Level <= 7
    end),
  },
  Cost=Formula("182000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated True resurrection on wielder",
  Key="Intelligent Item ~ Purpose Power / True Resurrection",
  Cost=Formula("200000"),
  NameModifier="NOTHING",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "IntelligentItemEgo",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (item.HasModifier("Intelligent Item ~ Base")) and (item.HasModifier("Intelligent Item ~ Purpose")) and (item.IsType("DedicatedPurpose"))
    end,
  },
  SpecialProperties={
    {
      Format="Dedicated Power - True resurrection on wielder",
    },
  },
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
})
CopyEquipmentModifier("Material ~ Cloth", {
  Name="CLOTH",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Leather", {
  Name="LEATHER",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Rope", {
  Name="ROPE",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Steel", {
  Name="STEEL",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Wood", {
  Name="WOOD",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Weapon", {
  Name="MWORKW",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Ammunition", {
  Name="MWORKM",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Armor", {
  Name="MWORKA",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Item", {
  Name="MWORKT",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Bonded Object", {
  Name="MWORKB",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Bonded Object", {
  Name="BONDED_OBJECT",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Thrown Ammunition", {
  Name="THROWN_AMMO",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Composite Bow Strength Rating", {
  Name="BOWSTR",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Brace", {
  Name="BRACE",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Disarm", {
  Name="DISARM",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Monk", {
  Name="MONK",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Nonlethal", {
  Name="NONLETHAL",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Trip", {
  Name="TRIP",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Spikes ~ Armor", {
  Name="SPIKE_A",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Spikes ~ Shield", {
  Name="SPIKE_S",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Spikes ~ Shieldbash", {
  Name="SPIKE_SB",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Locked Gauntlet", {
  Name="LOCK_G",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Nonhumanoid ~ Armor", {
  Name="NONHUMANOID",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Weapon", {
  Name="BROKEW",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Armor", {
  Name="BROKEA",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Shield", {
  Name="BROKES",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Item", {
  Name="BROKET",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Magic Item", {
  Name="BROKEM",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Ammunition", {
  Name="Adamantine (Ammo)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Light", {
  Name="Adamantine (Light Armor)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Medium", {
  Name="Adamantine (Medium Armor)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Heavy", {
  Name="Adamantine (Heavy Armor)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Weapon", {
  Name="Adamantine (Weapon)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Light", {
  Name="Mithral (Light Armor)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Medium", {
  Name="Mithral (Medium Armor)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Heavy", {
  Name="Mithral (Heavy Armor)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Shield", {
  Name="Mithral (Shield)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Weapon / Item", {
  Name="Mithral (Item)",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Darkwood", {
  Name="Darkwood",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Dragonhide", {
  Name="Dragonhide",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Cold Iron", {
  Name="Cold Iron",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Alchemical Silver", {
  Name="Alchemical Silver",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Ammunition", {
  Name="ADAMANT_AMMO",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Light", {
  Name="ADAMANT_ARMR_LT",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Medium", {
  Name="ADAMANT_ARMR_MED",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Heavy", {
  Name="ADAMANT_ARMR_HVY",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Weapon", {
  Name="ADAMANT_WEAP",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Light", {
  Name="MITHRAL_ARMR_LT",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Medium", {
  Name="MITHRAL_ARMR_MED",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Heavy", {
  Name="MITHRAL_ARMR_HVY",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Shield", {
  Name="MITHRAL_SHLD",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Weapon / Item", {
  Name="MITHRAL_ITEM",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Darkwood", {
  Name="DARK",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Dragonhide", {
  Name="DRACO",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Cold Iron", {
  Name="C_IRON",
  Visible=false,
})
CopyEquipmentModifier("Material ~ Alchemical Silver", {
  Name="ALCHM",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 3 Maximum", {
  Name="CHARGED_ITEM_3",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 4 Maximum", {
  Name="CHARGED_ITEM_4",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 5 Maximum", {
  Name="CHARGED_ITEM_5",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 6 Maximum", {
  Name="CHARGED_ITEM_6",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 7 Maximum", {
  Name="CHARGED_ITEM_7",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 8 Maximum", {
  Name="CHARGED_ITEM_8",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 9 Maximum", {
  Name="CHARGED_ITEM_9",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 10 Maximum", {
  Name="CHARGED_ITEM_10",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 12 Maximum", {
  Name="CHARGED_ITEM_12",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 20 Maximum", {
  Name="CHARGED_ITEM_20",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 34 Maximum", {
  Name="CHARGED_ITEM_34",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 36 Maximum", {
  Name="CHARGED_ITEM_36",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 50 Maximum", {
  Name="CHARGED_ITEM_50",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 101 Maximum", {
  Name="CHARGED_ITEM_101",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Staff Charges", {
  Name="CHARGED_STAFF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 1", {
  Name="USES_PER_DAY_1",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 2", {
  Name="USES_PER_DAY_2",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 3", {
  Name="USES_PER_DAY_3",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 10", {
  Name="USES_PER_DAY_10",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_1",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_2",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_3",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_4",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_5",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +6 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_6",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +7 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_7",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +8 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_8",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +9 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_9",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +10 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_10",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Enhancement Cost", {
  Name="MAGIC_COST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Single Use", {
  Name="SPL_1USE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Spell Trigger", {
  Name="SPL_CHRG",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Command Word", {
  Name="SPL_CMD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Use Activated", {
  Name="SPL_ACT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Ability / Enhancement", {
  Name="BNS_ENHC_AB",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Enhancement", {
  Name="BNS_ENHC_AC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Spell", {
  Name="BNS_SPELL",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Deflection", {
  Name="BNS_AC_DEFL",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Luck", {
  Name="BNS_AC_LUCK",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Insight", {
  Name="BNS_AC_INSI",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Sacred", {
  Name="BNS_AC_SCRD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Profane", {
  Name="BNS_AC_PROF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Other", {
  Name="BNS_AC_OTHE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Natural Armor", {
  Name="BNS_ENHC_NAT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Resistance", {
  Name="BNS_SAV_RES",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Luck", {
  Name="BNS_SAV_LUC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Insight", {
  Name="BNS_SAV_INS",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Sacred", {
  Name="BNS_SAV_SAC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Profane", {
  Name="BNS_SAV_PRO",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Other", {
  Name="BNS_SAV_OTH",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Skill / Competence", {
  Name="BNS_SKL_CMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Spell Resistance", {
  Name="BNS_SPL_RST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Skill / Maximize Knowledge", {
  Name="MAX_KNW",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Skill / Maximize Any Skill", {
  Name="MAX_GNL",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Hour per Level", {
  Name="SPL_CON_STANDARD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Round per Level", {
  Name="SPL_CON_ROUND",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Minute per Level", {
  Name="SPL_CON_MINUTES",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / 10 Minutes per Level", {
  Name="SPL_CON_HOURS",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Day per Level", {
  Name="SPL_CON_DAYS",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Staff / Primary Power", {
  Name="SPL_SPP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Staff / Secondary Power", {
  Name="SPL_SSP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Staff / Lesser Power", {
  Name="SPL_SLP",
  Visible=false,
})
DefineEquipmentModifier({
  Name="Divine",
  Key="SCROLL_DIVINE",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return not ((item.IsType("Divine")) or (item.IsType("Arcane")))
    end,
  },
  GrantedItemTypes={
    "Divine",
  },
  Types={
    "Scroll",
  },
})
DefineEquipmentModifier({
  Name="Arcane",
  Key="SCROLL_ARCANE",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return not ((item.IsType("Divine")) or (item.IsType("Arcane")))
    end,
  },
  GrantedItemTypes={
    "Arcane",
  },
  Types={
    "Scroll",
  },
})
DefineEquipmentModifier({
  Name="Minor",
  Key="SCROLL_MINOR",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Arcane")) or (item.IsType("Divine"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Minor")) or (item.IsType("Medium")) or (item.IsType("Major")))
    end,
  },
  GrantedItemTypes={
    "Minor",
  },
  Types={
    "Scroll",
  },
})
DefineEquipmentModifier({
  Name="Medium",
  Key="SCROLL_MEDIUM",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Arcane")) or (item.IsType("Divine"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Minor")) or (item.IsType("Medium")) or (item.IsType("Major")))
    end,
  },
  GrantedItemTypes={
    "Medium",
  },
  Types={
    "Scroll",
  },
})
DefineEquipmentModifier({
  Name="Major",
  Key="SCROLL_MAJOR",
  Visible=false,
  Conditions={
    function (character, item, sources)
      return (item.IsType("Arcane")) or (item.IsType("Divine"))
    end,
    function (character, item, sources)
      return not ((item.IsType("Minor")) or (item.IsType("Medium")) or (item.IsType("Major")))
    end,
  },
  GrantedItemTypes={
    "Major",
  },
  Types={
    "Scroll",
  },
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Arcane", {
  Name="A_1USEMI",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Arcane", {
  Name="A_1USEME",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Arcane", {
  Name="A_1USEMA",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Divine", {
  Name="D_1USEMI",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Divine", {
  Name="D_1USEME",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Divine", {
  Name="D_1USEMA",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 1 Step Greater", {
  Name="PLUS1STEP",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 2 Steps Greater", {
  Name="PLUS2STEP",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 3 Steps Greater", {
  Name="PLUS3STEP",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 1 Step Greater / No Penalty", {
  Name="PLUS1STEP_NO_PENALTY",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 2 Steps Greater / No Penalty", {
  Name="PLUS2STEP_NO_PENALTY",
  Visible=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 3 Steps Greater / No Penalty", {
  Name="PLUS3STEP_NO_PENALTY",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Weapon", {
  Name="PLUS1W",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Weapon", {
  Name="PLUS2W",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Weapon", {
  Name="PLUS3W",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Weapon", {
  Name="PLUS4W",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Weapon", {
  Name="PLUS5W",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Ammunition", {
  Name="PLUS1M",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Ammunition", {
  Name="PLUS2M",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Ammunition", {
  Name="PLUS3M",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Ammunition", {
  Name="PLUS4M",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Ammunition", {
  Name="PLUS5M",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Anarchic ~ Weapon", {
  Name="ANARCH",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Axiomatic ~ Weapon", {
  Name="AXIOM",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bane ~ Weapon", {
  Name="BANE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Brilliant Energy ~ Weapon", {
  Name="BRILL",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Dancing ~ Melee", {
  Name="DANCE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Defending ~ Melee", {
  Name="DEFEND",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Disruption ~ Weapon", {
  Name="DISRPT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Distance ~ Ranged", {
  Name="DISTNC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming ~ Weapon", {
  Name="FLAME",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming Burst ~ Weapon", {
  Name="FLM_BRST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Frost ~ Weapon", {
  Name="FROST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Ghost Touch ~ Weapon", {
  Name="GHOST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Holy ~ Weapon", {
  Name="HOLY",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Icy Burst ~ Weapon", {
  Name="ICY_BRST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Keen ~ Weapon", {
  Name="KEEN",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Ki Focus ~ Melee", {
  Name="KI",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Merciful ~ Weapon", {
  Name="MERCY",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Mighty Cleaving ~ Melee", {
  Name="CLEAVE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Returning ~ Thrown", {
  Name="RETURN",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Seeking ~ Ranged", {
  Name="SEEK",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shock ~ Weapon", {
  Name="SHOCK",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shocking Burst ~ Weapon", {
  Name="SHK_BRST",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Speed ~ Weapon", {
  Name="SPEED",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Storing ~ Melee", {
  Name="STORE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Thundering ~ Weapon", {
  Name="THUNDER",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Throwing ~ Melee", {
  Name="THROW",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Unholy ~ Weapon", {
  Name="UNHOLY",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Vicious ~ Melee", {
  Name="VICIOUS",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Vorpal ~ Melee", {
  Name="VORPAL",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Wounding ~ Weapon", {
  Name="WOUND",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Amulet of Mighty Fists Base", {
  Name="MightyFist_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Amulet of Mighty Fists", {
  Name="PLUS1_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Amulet of Mighty Fists", {
  Name="PLUS2_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Amulet of Mighty Fists", {
  Name="PLUS3_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Amulet of Mighty Fists", {
  Name="PLUS4_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Amulet of Mighty Fists", {
  Name="PLUS5_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Anarchic ~ Amulet of Mighty Fists", {
  Name="ANARCH_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Axiomatic ~ Amulet of Mighty Fists", {
  Name="AXIOM_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bane ~ Amulet of Mighty Fists", {
  Name="BANE_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Brilliant Energy ~ Amulet of Mighty Fists", {
  Name="BRILL_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Defending ~ Amulet of Mighty Fists", {
  Name="DEFEND_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Disruption ~ Amulet of Mighty Fists", {
  Name="DISRPT_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming ~ Amulet of Mighty Fists", {
  Name="FLAME_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming Burst ~ Amulet of Mighty Fists", {
  Name="FLM_BRST_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Frost ~ Amulet of Mighty Fists", {
  Name="FROST_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Ghost Touch ~ Amulet of Mighty Fists", {
  Name="GHOST_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Holy ~ Amulet of Mighty Fists", {
  Name="HOLY_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Icy Burst ~ Amulet of Mighty Fists", {
  Name="ICY_BRST_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Ki Focus ~ Amulet of Mighty Fists", {
  Name="KI_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Merciful ~ Amulet of Mighty Fists", {
  Name="MERCY_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Mighty Cleaving ~ Amulet of Mighty Fists", {
  Name="CLEAVE_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shock ~ Amulet of Mighty Fists", {
  Name="SHOCK_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shocking Burst ~ Amulet of Mighty Fists", {
  Name="SHK_BRST_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Speed ~ Amulet of Mighty Fists", {
  Name="SPEED_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Storing ~ Amulet of Mighty Fists", {
  Name="STORE_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Thundering ~ Amulet of Mighty Fists", {
  Name="THUNDER_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Unholy ~ Amulet of Mighty Fists", {
  Name="UNHOLY_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Vicious ~ Amulet of Mighty Fists", {
  Name="VICIOUS_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Wounding ~ Amulet of Mighty Fists", {
  Name="WOUND_AMF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Armor", {
  Name="PLUS1A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Armor", {
  Name="PLUS2A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Armor", {
  Name="PLUS3A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Armor", {
  Name="PLUS4A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Armor", {
  Name="PLUS5A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Shield", {
  Name="PLUS1S",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Shield", {
  Name="PLUS2S",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Shield", {
  Name="PLUS3S",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Shield", {
  Name="PLUS4S",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Shield", {
  Name="PLUS5S",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Animated ~ Shield", {
  Name="ANMATD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Arrow Catching ~ Shield", {
  Name="ARW_CAT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Arrow Deflection ~ Shield", {
  Name="ARW_DEF",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bashing ~ Shield / Heavy", {
  Name="BASH_H",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Bashing ~ Shield / Light", {
  Name="BASH_L",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Blinding ~ Shield", {
  Name="BLIND",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Acid ~ Armor", {
  Name="RST_ACD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Acid / Improved ~ Armor", {
  Name="RST_ACD_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Acid / Greater ~ Armor", {
  Name="RES_ACD_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Cold ~ Armor", {
  Name="RST_CLD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Cold / Improved ~ Armor", {
  Name="RST_CLD_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Cold / Greater ~ Armor", {
  Name="RES_CLD_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Electricity ~ Armor", {
  Name="RST_ELC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Electricity / Improved ~ Armor", {
  Name="RST_ELC_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Electricity / Greater ~ Armor", {
  Name="RES_ELC_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Fire ~ Armor", {
  Name="RST_FIR",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Fire / Improved ~ Armor", {
  Name="RST_FIR_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Fire / Greater ~ Armor", {
  Name="RES_FIR_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Sonic ~ Armor", {
  Name="RST_SNC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Sonic / Improved ~ Armor", {
  Name="RST_SNC_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Sonic / Greater ~ Armor", {
  Name="RES_SNC_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Etherealness ~ Armor", {
  Name="ETHERE",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Fortification / Light ~ Armor", {
  Name="FRT_LGHT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Fortification / Moderate ~ Armor", {
  Name="FRT_MOD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Fortification / Heavy ~ Armor", {
  Name="FRT_HVY",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Ghost Touch ~ Armor", {
  Name="GHOST_A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Glamered ~ Armor", {
  Name="GLAM",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Invulnerability ~ Armor", {
  Name="INVULN",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Reflecting ~ Shield", {
  Name="REFLC",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shadow ~ Armor", {
  Name="SHDW",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shadow / Improved ~ Armor", {
  Name="SHDW_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Shadow / Greater ~ Armor", {
  Name="SHDW_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Slick ~ Armor", {
  Name="SLK",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Slick / Improved ~ Armor", {
  Name="SLK_IMP",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Slick / Greater ~ Armor", {
  Name="SLK_GRT",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 13 ~ Armor", {
  Name="SPELL_RES_13",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 15 ~ Armor", {
  Name="SPELL_RES_15",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 17 ~ Armor", {
  Name="SPELL_RES_17",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 19 ~ Armor", {
  Name="SPELL_RES_19",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Undead Controlling ~ Armor", {
  Name="UNDEAD",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Wild ~ Armor", {
  Name="WILD_A",
  Visible=false,
})
CopyEquipmentModifier("Special Ability ~ Wild ~ Shield", {
  Name="WILD_S",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Base", {
  Name="IntItemBase",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose", {
  Name="IntItemPurpose",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 11", {
  Name="IntItemStatINT11",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 12", {
  Name="IntItemStatINT12",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 13", {
  Name="IntItemStatINT13",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 14", {
  Name="IntItemStatINT14",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 15", {
  Name="IntItemStatINT15",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 16", {
  Name="IntItemStatINT16",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 17", {
  Name="IntItemStatINT17",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 18", {
  Name="IntItemStatINT18",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 19", {
  Name="IntItemStatINT19",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 20", {
  Name="IntItemStatINT20",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 11", {
  Name="IntItemStatWIS11",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 12", {
  Name="IntItemStatWIS12",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 13", {
  Name="IntItemStatWIS13",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 14", {
  Name="IntItemStatWIS14",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 15", {
  Name="IntItemStatWIS15",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 16", {
  Name="IntItemStatWIS16",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 17", {
  Name="IntItemStatWIS17",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 18", {
  Name="IntItemStatWIS18",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 19", {
  Name="IntItemStatWIS19",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 20", {
  Name="IntItemStatWIS20",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 11", {
  Name="IntItemStatCHA11",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 12", {
  Name="IntItemStatCHA12",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 13", {
  Name="IntItemStatCHA13",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 14", {
  Name="IntItemStatCHA14",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 15", {
  Name="IntItemStatCHA15",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 16", {
  Name="IntItemStatCHA16",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 17", {
  Name="IntItemStatCHA17",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 18", {
  Name="IntItemStatCHA18",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 19", {
  Name="IntItemStatCHA19",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 20", {
  Name="IntItemStatCHA20",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Speech", {
  Name="IntSpeech",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Telepathy", {
  Name="IntTelepathy",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Range 60", {
  Name="IntSense60",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Range 120", {
  Name="IntSense120",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Darkvision", {
  Name="IntDarkvision",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Blindsense", {
  Name="IntBlindsense",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Read Language", {
  Name="IntReadLang",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Read Magic", {
  Name="IntReadMagic",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Chaotic Good", {
  Name="Intelligent Item Alignment (CG)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Chaotic Neutral", {
  Name="Intelligent Item Alignment (CN)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Chaotic Evil", {
  Name="Intelligent Item Alignment (CE)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Neutral Evil", {
  Name="Intelligent Item Alignment (NE)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Lawful Evil", {
  Name="Intelligent Item Alignment (LE)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Lawful Good", {
  Name="Intelligent Item Alignment (LG)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Lawful Neutral", {
  Name="Intelligent Item Alignment (LN)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Neutral Good", {
  Name="Intelligent Item Alignment (NG)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / True Neutral", {
  Name="Intelligent Item Alignment (TN)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 0 Level Spell / At-Will", {
  Name="ItemPower_CastZeroAtWill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 1st Level Spell / 3 per Day", {
  Name="ItemPower_CastOneThree",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 2nd Level Spell / 1 per Day", {
  Name="ItemPower_CastTwoOne",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 3rd Level Spell / 1 per Day", {
  Name="ItemPower_CastThreeOne",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 3rd Level Spell / 3 per Day", {
  Name="ItemPower_CastThreeThree",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 4th Level Spell / 3 per Day", {
  Name="ItemPower_CastFourThree",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 2nd Level Spell / 3 per Day", {
  Name="ItemPower_CastTwoThree",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 4th Level Spell / 1 per Day", {
  Name="ItemPower_CastFourOne",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Magic Aura / At-Will", {
  Name="ItemPower_MagicAura",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Skill Ranks / 5", {
  Name="ItemPower_FiveSkill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Movement / Walk 10 Feet", {
  Name="ItemPower_Move",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Skill Ranks / 10", {
  Name="ItemPower_TenSkill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Change Shape", {
  Name="ItemPower_ChangeShape",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Movement / Fly 30 Feet", {
  Name="ItemPower_Fly",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Movement / Teleport / 1 per Day", {
  Name="ItemPower_Teleport",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Alignment", {
  Name="Intelligent Item Purpose (Slay Align)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Arcane Spellcaster", {
  Name="Intelligent Item Purpose (Slay Arcane)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Divine Spellcaster", {
  Name="Intelligent Item Purpose (Slay Divine)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Non-spellcaster", {
  Name="Intelligent Item Purpose (Slay NonCasters)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Creature Type", {
  Name="Intelligent Item Purpose (Slay Creature Type)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Creature Race", {
  Name="Intelligent Item Purpose (Slay Race or Kind)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Defend Creature Race", {
  Name="Intelligent Item Purpose (Defend Race or Kind)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Servants of Deity", {
  Name="Intelligent Item Purpose (Slay Deity Servant)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Defend Servants of Deity", {
  Name="Intelligent Item Purpose (Defend Deity Servant)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay All", {
  Name="Intelligent Item Purpose (Slay All)",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / Detect Foe", {
  Name="PurposePower_DetectFoe",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 4th Level Spell / At-Will", {
  Name="PurposePower_CastFourAtWill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / Luck Bonus", {
  Name="PurposePower_LuckBonus",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 5th Level Spell / At-Will", {
  Name="PurposePower_CastFiveAtWill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 6th Level Spell / At-Will", {
  Name="PurposePower_CastSixAtWill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 7th Level Spell / At-Will", {
  Name="PurposePower_CastSevenAtWill",
  Visible=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / True Resurrection", {
  Name="PurposePower_TrueRes",
  Visible=false,
})
