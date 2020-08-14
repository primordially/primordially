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
  Cost=Formula("0"),
  GrantedItemTypes={
    "Cloth",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Material ~ Cloth",
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
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.HasModifier("Material ~ Cloth"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return not (((item.HasModifierType("Mundane"))) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (item)
      return not (((item.IsType("Metal")) + (item.IsType("Wooden"))) >= 1)
    end,
    function (item)
      return not (((item.IsType("Artisan")) + (item.IsType("Spell Component"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Leather",
  Cost=Formula("0"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Material ~ Leather",
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
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.HasModifier("Material ~ Leather"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return not (((item.HasModifierType("Mundane"))) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (item)
      return not (((item.IsType("Metal")) + (item.IsType("Wooden"))) >= 1)
    end,
    function (item)
      return not (((item.IsType("Artisan")) + (item.IsType("Spell Component"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Rope",
  Cost=Formula("0"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Material ~ Rope",
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
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.HasModifier("Material ~ Rope"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return not (((item.HasModifierType("Mundane"))) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (item)
      return not (((item.IsType("Metal")) + (item.IsType("Wooden"))) >= 1)
    end,
    function (item)
      return not (((item.IsType("Artisan")) + (item.IsType("Spell Component"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Steel",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Metal",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Material ~ Steel",
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
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.HasModifier("Material ~ Steel"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return not (((item.HasModifierType("Mundane"))) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (item)
      return not (((item.IsType("Wooden"))) >= 1)
    end,
    function (item)
      return not (((item.IsType("Artisan")) + (item.IsType("Spell Component"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Wood",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Wooden",
  },
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Material ~ Wood",
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
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.HasModifier("Material ~ Wood"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return not (((item.HasModifierType("Mundane"))) >= 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (item)
      return not (((item.IsType("Metal"))) >= 1)
    end,
    function (item)
      return not (((item.IsType("Artisan")) + (item.IsType("Spell Component"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Masterwork (Weapon)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="TEXT=Masterwork",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Masterwork ~ Weapon",
  Types={
    "MasterworkQuality",
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.149",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Shield"))) >= 1)
    end,
    function (item)
      return not (((item.IsType("Masterwork")) + (item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("Darkwood"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Masterwork",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Masterwork ~ Ammunition",
  Types={
    "MasterworkQuality",
    "Ammunition",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.149",
  Conditions={
    function (item)
      return ((item.IsType("Ammunition"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Masterwork")) + (item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("Darkwood"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Masterwork (Armor or Shield)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=Masterwork",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Masterwork ~ Armor",
  Types={
    "MasterworkQuality",
    "Armor",
    "Shield",
  },
  Bonuses={
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.153",
  Conditions={
    function (item)
      return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Masterwork")) + (item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("Darkwood"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Masterwork",
  Cost=Formula("50"),
  GrantedItemTypes={
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Masterwork ~ Item",
  Types={
    "MasterworkQuality",
    "Tools",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("20"),
      Conditions={
        function (item)
          return ((item.IsType("THIEF"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("45"),
      Conditions={
        function (item)
          return ((item.IsType("INSTRUMENT"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.160",
  Conditions={
    function (item)
      return ((item.IsType("Tools"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Masterwork")) + (item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("Darkwood"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Masterwork",
  Cost=Formula("50"),
  GrantedItemTypes={
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Masterwork ~ Bonded Object",
  Types={
    "MasterworkQuality",
    "Amulet",
    "Ring",
    "Staff",
    "Wand",
  },
  SourcePage="p.160",
  Conditions={
    function (item)
      return ((item.IsType("Amulet")) + (item.IsType("Ring")) + (item.IsType("Staff")) + (item.IsType("Wand"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Masterwork")) + (item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("Darkwood"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Bonded Object",
  GrantedItemTypes={
    "Bonded",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Bonded Object",
  Types={
    "Amulet",
    "Ring",
    "Staff",
    "Wand",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="Can be used once per day to cast any one spell that the wizard has in his spellbook and is capable of casting, even if the spell is not prepared.",
    },
  },
  SourcePage="p.78",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("Amulet")) + (item.IsType("Ring")) + (item.IsType("Staff")) + (item.IsType("Wand"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Masterwork")) + (item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("Darkwood"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Weapon"))) >= 1
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
})
DefineEquipmentModifier({
  Name="Thrown Ammunition",
  Cost=Formula("0"),
  Visible=false,
  AffectsBothHeads=false,
  Key="Special Quality ~ Thrown Ammunition",
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-294"),
      Conditions={
        function (item)
          return ((item.IsType("MASTERWORK"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-2646"),
      Conditions={
        function (item)
          return ((item.IsType("ADAMANTINE"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-18"),
      Conditions={
        function (item)
          return ((item.IsType("SILVER"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("319"),
      Conditions={
        function (item)
          return ((item.IsType("MITHRAL"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-1960"),
      Conditions={
        function (item)
          return ((item.IsType("WeaponEnhancement"))) >= 1
        end,
        function (item)
          return ((item.IsType("COLDIRON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-1960"),
      Conditions={
        function (item)
          return ((item.IsType("PLUS1"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-7840"),
      Conditions={
        function (item)
          return ((item.IsType("PLUS2"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-17640"),
      Conditions={
        function (item)
          return ((item.IsType("PLUS3"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-31360"),
      Conditions={
        function (item)
          return ((item.IsType("PLUS4"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-49000"),
      Conditions={
        function (item)
          return ((item.IsType("PLUS5"))) >= 1
        end,
      },
    },
  },
})
DefineEquipmentModifier({
  Name="Composite Bow Strength Rating",
  Cost=Formula("0"),
  GrantedItemTypes={
    "StrengthRating",
  },
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NONAME",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseNumber(1, 100, nil, "Strength rating"),
  },
  Key="Special Quality ~ Composite Bow Strength Rating",
  Types={
    "Bow",
    "Composite",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("75*%CHOICE"),
      Conditions={
        function (character)
          return (character.Variables["%CHOICE"] > 0)
        end,
        function (item)
          return ((item.IsType("SHORTBOW"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("100*%CHOICE"),
      Conditions={
        function (character)
          return (character.Variables["%CHOICE"] > 0)
        end,
        function (item)
          return ((item.IsType("LONGBOW"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("-2"),
      Conditions={
        function (character)
          return (character.Variables["%CHOICE"] > "STR")
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("MIN(%CHOICE,STR)"),
      Type={
        Name="Strength",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Strength bonus to damage",
    },
  },
  SourcePage="p.147",
  Conditions={
    function (item)
      return ((item.IsType("Composite")) + (item.IsType("Bow"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Brace",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Brace",
  },
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Brace",
  Description={
    Format="Extra damage when set against a charging character (pg. 144)",
  },
  Types={
    "SpecialWeaponQualities",
  },
  SpecialProperties={
    {
      Format="brace",
    },
  },
  SourcePage="p.144",
})
DefineEquipmentModifier({
  Name="Disarm",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Disarm",
  },
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Disarm",
  Description={
    Format="Bonus to disarm an enemy (pg. 144)",
  },
  Types={
    "SpecialWeaponQualities",
  },
  SpecialProperties={
    {
      Format="disarm",
    },
  },
  SourcePage="p.144",
})
DefineEquipmentModifier({
  Name="Double",
  Cost=Formula("0"),
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Double",
  Description={
    Format="May use the weapon as if fighting with teo weapons (pg. 144)",
  },
  Types={
    "SpecailWeaponQualities",
  },
  SpecialProperties={
    {
      Format="double",
    },
  },
  SourcePage="p.144",
})
DefineEquipmentModifier({
  Name="Monk",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Monk",
  },
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Monk",
  Description={
    Format="May be used to perform a flurry of blows (pg. 145)",
  },
  Types={
    "SpecialWeaponQualities",
  },
  SpecialProperties={
    {
      Format="monk",
    },
  },
  SourcePage="p.145",
})
DefineEquipmentModifier({
  Name="Nonlethal",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Nonlethal",
  },
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Nonlethal",
  Description={
    Format="Deals nonlethal damage (pg. 145)",
  },
  Types={
    "SpecialWeaponQualities",
  },
  SpecialProperties={
    {
      Format="nonlethal",
    },
  },
  SourcePage="p.145",
})
DefineEquipmentModifier({
  Name="Reach",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Reach",
  },
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Reach",
  Description={
    Format="Strike opponents 10 feet away, but can't use it against adjacent foes (pg. 145)",
  },
  Types={
    "SpecialWeaponQualities",
  },
  SpecialProperties={
    {
      Format="reach",
    },
  },
  SourcePage="p.145",
})
DefineEquipmentModifier({
  Name="Trip",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Trip",
  },
  Visible=false,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Special Quality ~ Trip",
  Description={
    Format="May be used to make trip attacks (pg.145)",
  },
  Types={
    "SpecialWeaponQualities",
  },
  SpecialProperties={
    {
      Format="trip",
    },
  },
  SourcePage="p.145",
})
DefineEquipmentModifier({
  Name="Armor Spikes",
  Cost=Formula("50"),
  GrantedItemTypes={
    "Spiked",
    "Piercing",
  },
  Visible=true,
  AffectsBothHeads=false,
  AutomaticEquipment={
    Names={
      "Armor Spikes",
    },
  },
  Key="Special Quality ~ Spikes ~ Armor",
  Types={
    "Armor",
  },
  SpecialProperties={
    {
      Format="Spiked",
    },
  },
  SourcePage="p.150",
  Conditions={
    function (item)
      return ((item.IsType("Shield")) + (item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Shield Spikes",
  Cost=Formula("10"),
  GrantedItemTypes={
    "Spiked",
    "Piercing",
  },
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Spikes ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SHIELDBASHINGDIESIZESTEP",
      },
      Formula=Formula("1"),
    },
    {
      Category="EQM",
      Variables={
        "WEIGHTADD",
      },
      Formula=Formula("5*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
    },
    {
      Category="EQMWEAPON",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Spiked",
    },
  },
  SourcePage="p.153",
  Conditions={
    function (item)
      return ((item.IsType("Shield")) + (item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Shield Spikes",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Spiked",
    "Piercing",
  },
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Spikes ~ Shieldbash",
  Types={
    "Shieldbash",
  },
  Bonuses={
    {
      Category="EQMWEAPON",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Spiked",
    },
  },
  SourcePage="p.153",
})
DefineEquipmentModifier({
  Name="Locked Gauntlets",
  Cost=Formula("8"),
  GrantedItemTypes={
    "GauntletLock",
  },
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Locked Gauntlet",
  Types={
    "Gauntlet",
  },
  Bonuses={
    {
      Category="EQM",
      Variables={
        "WEIGHTADD",
      },
      Formula=Formula("5*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
    },
  },
  SpecialProperties={
    {
      Format="Locked",
    },
  },
  SourcePage="p.150",
})
DefineEquipmentModifier({
  Name="Nonhumanoid",
  Cost=Formula("BASECOST*(((SIZE<=2)*.5)+(SIZE==3)+(SIZE==4)+((SIZE>=5)*(2^(SIZE-4))))"),
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Nonhumanoid ~ Armor",
  Types={
    "Armor",
  },
  SourcePage="p.153",
})
DefineEquipmentModifier({
  Name="Broken",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Broken",
  },
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Broken ~ Weapon",
  Types={
    "BrokenCondition",
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("-2"),
      Type={
        Name="CONDITION",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="-2 penalty on attack and damage rolls with critical of 20/x2.",
    },
  },
  SourcePage="p.565",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Broken",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Broken ~ Armor",
  Types={
    "BrokenCondition",
    "Armor",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="AC bonus is halved and AC Check is doubled.",
    },
  },
  SourcePage="p.566",
  Conditions={
    function (item)
      return ((item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Broken",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Broken ~ Shield",
  Types={
    "BrokenCondition",
    "Shield",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="AC bonus is halved and AC Check is doubled.",
    },
  },
  SourcePage="p.566",
  Conditions={
    function (item)
      return ((item.IsType("Shield"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Broken",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Broken ~ Item",
  Types={
    "BrokenCondition",
    "Tools",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (item)
          return ((item.IsType("TOOLS"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="-2 penalty on all skill checks.",
    },
  },
  SourcePage="p.566",
  Conditions={
    function (item)
      return ((item.IsType("Tools"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Broken",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Broken",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Quality ~ Broken ~ Magic Item",
  Types={
    "BrokenCondition",
    "Wand",
    "Staff",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (item)
          return ((item.IsType("WAND"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("-BASECOST*.25"),
      Conditions={
        function (item)
          return ((item.IsType("STAFF"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="Uses twice the charges as normal.",
    },
  },
  SourcePage="p.566",
  Conditions={
    function (item)
      return ((item.IsType("Wand")) + (item.IsType("Staff"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Wooden",
  Cost=Formula("1"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Holy Symbol (Wooden)",
  Types={
    "Goods",
    "Tools",
    "Spell Component",
    "Divine Focus",
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Holy Symbol"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Silver",
  Cost=Formula("25"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Holy Symbol (Silver)",
  Types={
    "Goods",
    "Tools",
    "Spell Component",
    "Divine Focus",
  },
  Bonuses={
    {
      Category="EQM",
      Variables={
        "WEIGHTADD",
      },
      Formula=Formula("1"),
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Holy Symbol"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Armor",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsArmor",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Armor)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsArmor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Armor)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Baskets",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsBaskets",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Baskets)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsBaskets",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Baskets)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Books",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsBooks",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Books)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsBooks",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Books)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Bows",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsBows",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Bows)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsBows",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Bows)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Calligraphy",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsCalligraphy",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Calligraphy)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsCalligraphy",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Calligraphy)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Carpentry",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsCarpentry",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Carpentry)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsCarpentry",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Carpentry)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Cloth",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsCloth",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Cloth)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsCloth",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Cloth)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Clothing",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsClothing",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Clothing)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsClothing",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Clothing)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Gemcutting",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsGemcutting",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Gemcutting)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsGemcutting",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Gemcutting)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Glass",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsGlass",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Glass)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsGlass",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Glass)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Jewelry",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsJewelry",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Jewelry)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsJewelry",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Jewelry)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Leather",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsLeather",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Leather)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsLeather",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Leather)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Locks",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsLocks",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Locks)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsLocks",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Locks)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Paintings",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsPaintings",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Paintings)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsPaintings",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Paintings)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Pottery",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsPottery",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Pottery)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsPottery",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Pottery)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Sculptures",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsSculptures",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Sculptures)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsSculptures",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Sculptures)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Ships",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsShips",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Ships)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsShips",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Ships)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Shoes",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsShoes",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Shoes)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsShoes",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Shoes)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Stonemasonry",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsStonemasonry",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Stonemasonry)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsStonemasonry",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Stonemasonry)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Traps",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsTraps",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Traps)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsTraps",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Traps)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Weaponsmithing",
  Cost=Formula("0"),
  GrantedItemTypes={
    "CraftToolsWeaponsmithing",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Parentheses",
  Key="Artisan's Tools (Weaponsmithing)",
  Types={
    "Goods",
    "Tools",
    "Artisan",
    "CraftToolsWeaponsmithing",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Craft (Weapons)",
      },
      Formula=Formula("2"),
      Type={
        Name="Circumstance",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("Masterwork"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.161",
  Conditions={
    function (item)
      return ((item.IsType("Tools")) + (item.IsType("Artisan"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Cost=Formula("60"),
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Key="Material ~ Adamantine ~ Ammunition",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Ammunition",
  },
  SpecialProperties={
    {
      Format="adamantine, ignore hardness less than 20",
    },
  },
  SourcePage="p.154",
  Conditions={
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Cost=Formula("5000"),
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  Key="Material ~ Adamantine ~ Armor / Light",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="adamantine",
    },
  },
  SourcePage="p.154",
  Info={
    hp="40 hp/inch",
    Hardness="hardness 20",
  },
  DamageReduction={
    Value="1/-",
  },
  Conditions={
    function (item)
      return ((item.IsType("Metal")) + (item.IsType("Light"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Cost=Formula("10000"),
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  Key="Material ~ Adamantine ~ Armor / Medium",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="adamantine",
    },
  },
  SourcePage="p.154",
  Info={
    hp="40 hp/inch",
    Hardness="hardness 20",
  },
  DamageReduction={
    Value="2/-",
  },
  Conditions={
    function (item)
      return ((item.IsType("Metal")) + (item.IsType("Medium"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Cost=Formula("15000"),
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  Key="Material ~ Adamantine ~ Armor / Heavy",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="adamantine",
    },
  },
  SourcePage="p.154",
  Info={
    hp="40 hp/inch",
    Hardness="hardness 20",
  },
  DamageReduction={
    Value="3/-",
  },
  Conditions={
    function (item)
      return ((item.IsType("Metal")) + (item.IsType("Heavy"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Adamantine",
  Cost=Formula("3000"),
  GrantedItemTypes={
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Key="Material ~ Adamantine ~ Weapon",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Weapon",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="adamantine, ignore hardness less than 20",
    },
  },
  SourcePage="p.154",
  Conditions={
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Cost=Formula("1000"),
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  Key="Material ~ Mithril ~ Armor / Light",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQM",
      Variables={
        "WEIGHTDIV",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "MAXDEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "SPELLFAILURE",
      },
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  SourcePage="p.154",
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
  Conditions={
    function (item)
      return ((item.IsType("Light"))) >= 1
    end,
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Cost=Formula("4000"),
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  ChangeArmorType={
    From="Medium",
    To="Light",
  },
  Key="Material ~ Mithril ~ Armor / Medium",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQM",
      Variables={
        "WEIGHTDIV",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "MAXDEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "SPELLFAILURE",
      },
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  SourcePage="p.154",
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
  Conditions={
    function (item)
      return ((item.IsType("Medium"))) >= 1
    end,
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Cost=Formula("9000"),
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  ChangeArmorType={
    From="Heavy",
    To="Medium",
  },
  Key="Material ~ Mithril ~ Armor / Heavy",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQM",
      Variables={
        "WEIGHTDIV",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "MAXDEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "SPELLFAILURE",
      },
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  SourcePage="p.154",
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
  Conditions={
    function (item)
      return ((item.IsType("Heavy"))) >= 1
    end,
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Cost=Formula("1000"),
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  Key="Material ~ Mithril ~ Shield",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Shield",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQM",
      Variables={
        "WEIGHTDIV",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "MAXDEX",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "SPELLFAILURE",
      },
      Formula=Formula("-10"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  SourcePage="p.154",
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
  Conditions={
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Mithral",
  Cost=Formula("WT*500"),
  GrantedItemTypes={
    "Metal",
    "Mithral",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Weapon",
    "Special Quality ~ Masterwork ~ Item",
  },
  Key="Material ~ Mithril ~ Weapon / Item",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Ammunition",
    "Weapon",
    "Instruments",
    "Tools",
    "Goods",
  },
  Bonuses={
    {
      Category="EQM",
      Variables={
        "WEIGHTDIV",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=true,
        Stack=false,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="mithral",
    },
  },
  SourcePage="p.154",
  Info={
    hp="30 hp/inch",
    Hardness="hardness 15",
  },
  Conditions={
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Darkwood",
  Cost=Formula("WT*10"),
  GrantedItemTypes={
    "Wooden",
    "Darkwood",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  Key="Material ~ Darkwood",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Ammunition",
    "Weapon",
    "Shield",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQM",
      Variables={
        "WEIGHTDIV",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return not (((item.IsType("Shield"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
        function (item)
          return not (((item.IsType("Shield"))) >= 1)
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="darkwood",
    },
  },
  SourcePage="p.154",
  Info={
    hp="10 hp/inch",
    Hardness="hardness 5",
  },
  Conditions={
    function (item)
      return ((item.IsType("Wooden"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Dragonhide",
  Cost=Formula("BASECOST+300"),
  GrantedItemTypes={
    "Dragonhide",
    "Nonmetal",
    "Masterwork",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Quality ~ Masterwork ~ Armor",
  },
  Key="Material ~ Dragonhide",
  Types={
    "BaseMaterial",
    "MasterworkQuality",
    "Armor",
    "Shield",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="dragonhide",
    },
  },
  SourcePage="p.154",
  Info={
    hp="10 hp/inch",
    Hardness="hardness 10",
  },
})
DefineEquipmentModifier({
  Name="Cold Iron",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Metal",
    "ColdIron",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Material ~ Cold Iron",
  Types={
    "BaseMaterial",
    "Ammunition",
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("(BASECOST)"),
      Conditions={
        function (item)
          return not (((item.IsType("Double"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("(BASECOST)/2"),
      Conditions={
        function (item)
          return ((item.IsType("Double"))) >= 1
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("40"),
      Conditions={
        function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("AMMUNITION"))) >= 2
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2000"),
      Conditions={
        function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("WEAPON"))) >= 2
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="cold iron",
    },
  },
  SourcePage="p.154",
  Info={
    hp="30 hp/inch",
    Hardness="hardness 10",
  },
  Conditions={
    function (item)
      return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
    end,
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Alchemical Silver",
  Cost=Formula("0"),
  GrantedItemTypes={
    "Metal",
    "Silver",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=Silver",
  NameModifierLocation="Prefix",
  Key="Material ~ Alchemical Silver",
  Types={
    "BaseMaterial",
    "Ammunition",
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("20"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (item)
            return ((item.WieldCategory == "LIGHT")) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (item)
            return not (((item.IsType("Double"))) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("90"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (item)
            return ((item.WieldCategory == "ONEHANDED")) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (item)
            return not (((item.IsType("Double"))) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("180"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (item)
            return ((item.WieldCategory == "TWOHANDED")) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (item)
            return not (((item.IsType("Double"))) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 2
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("90"),
      Conditions={
        function (item)
          return ((item.IsType("Double"))) >= 1
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("-1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=true,
      },
      Conditions={
        function (item)
          return ((item.IsType("PIERCING")) + (item.IsType("SLASHING"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="silver",
    },
  },
  SourcePage="p.155",
  Info={
    hp="10 hp/inch",
    Hardness="hardness 8",
  },
  Conditions={
    function (item)
      return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
    end,
    function (item)
      return ((item.IsType("Metal"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Mithral")) + (item.IsType("Adamantine")) + (item.IsType("ColdIron")) + (item.IsType("Silver"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Charges (3)",
  Cost=Formula("((BASECOST/3)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=3,
  },
  Key="Special Ability ~ Charged Item / 3 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (4)",
  Cost=Formula("((BASECOST/4)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=4,
  },
  Key="Special Ability ~ Charged Item / 4 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (5)",
  Cost=Formula("((BASECOST/5)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=5,
  },
  Key="Special Ability ~ Charged Item / 5 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (6)",
  Cost=Formula("((BASECOST/6)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=6,
  },
  Key="Special Ability ~ Charged Item / 6 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (7)",
  Cost=Formula("((BASECOST/7)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=7,
  },
  Key="Special Ability ~ Charged Item / 7 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (8)",
  Cost=Formula("((BASECOST/8)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=8,
  },
  Key="Special Ability ~ Charged Item / 8 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (9)",
  Cost=Formula("((BASECOST/9)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=9,
  },
  Key="Special Ability ~ Charged Item / 9 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (10)",
  Cost=Formula("((BASECOST/10)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=10,
  },
  Key="Special Ability ~ Charged Item / 10 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (12)",
  Cost=Formula("((BASECOST/12)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=12,
  },
  Key="Special Ability ~ Charged Item / 12 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (20)",
  Cost=Formula("((BASECOST/20)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=20,
  },
  Key="Special Ability ~ Charged Item / 20 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (34)",
  Cost=Formula("((BASECOST/34)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=34,
  },
  Key="Special Ability ~ Charged Item / 34 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (36)",
  Cost=Formula("((BASECOST/36)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=36,
  },
  Key="Special Ability ~ Charged Item / 36 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (50)",
  Cost=Formula("((BASECOST/50)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=50,
  },
  Key="Special Ability ~ Charged Item / 50 Maximum",
})
DefineEquipmentModifier({
  Name="Charges (101)",
  Cost=Formula("((BASECOST/101)*%CHARGES)-BASECOST"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=101,
  },
  Key="Special Ability ~ Charged Item / 101 Maximum",
})
DefineEquipmentModifier({
  Name="Staff Charges",
  Cost=Formula("0"),
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=0,
    Max=10,
  },
  Key="Special Ability ~ Staff Charges",
})
DefineEquipmentModifier({
  Name="Uses per Day (1)",
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=1,
    Max=1,
  },
  Key="Special Ability ~ Uses per Day / 1",
})
DefineEquipmentModifier({
  Name="Uses per Day (2)",
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=2,
    Max=2,
  },
  Key="Special Ability ~ Uses per Day / 2",
})
DefineEquipmentModifier({
  Name="Uses per Day (3)",
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=3,
    Max=3,
  },
  Key="Special Ability ~ Uses per Day / 3",
})
DefineEquipmentModifier({
  Name="Uses per Day (10)",
  Visible=false,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNothing(),
  },
  Charges={
    Min=10,
    Max=10,
  },
  Key="Special Ability ~ Uses per Day / 10",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+1)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ +1 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+2)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ +2 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+3)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ +3 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+4)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ +4 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+5)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ +5 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+6)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=6,
  Key="Special Ability ~ +6 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+7)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=7,
  Key="Special Ability ~ +7 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+8)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=8,
  Key="Special Ability ~ +8 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+9)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=9,
  Key="Special Ability ~ +9 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancments (+10)",
  Visible=true,
  AffectsBothHeads=false,
  EquivalentEnhancementBonus=10,
  Key="Special Ability ~ +10 ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="Magical Enhancment Cost",
  Cost=Formula("%CHOICE"),
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 1000000, nil, "Additional Cost"),
  },
  Key="Special Ability ~ Enhancement Cost",
})
DefineEquipmentModifier({
  Name="|Spell Effect (Single Use/Use Activated)",
  Cost=Formula("(50*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
    "Consumable",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Single Use",
  Types={
    "Potion",
    "Oil",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (50 Charges/Spell Trigger)",
  Cost=Formula("((15*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST))*%CHARGES"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Charges={
    Min=1,
    Max=50,
  },
  Key="Special Ability ~ Spell Effect / Spell Trigger",
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
  Cost=Formula("(1800*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Command Word",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Use Activated)",
  Cost=Formula("(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Use Activated",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Ability Bonus (Enhancement)",
  Cost=Formula("(1000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NONAME",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseStatBonus(-6, 6, nil, "Ability"),
  },
  Key="Special Ability ~ Bonus Ability / Enhancement",
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
  Bonuses={
    {
      Category="STAT",
      Variables={
        "%CHOICE",
      },
      Formula=Formula("%CHOICEVALUE"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Enhancement bonus to ability %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Armor Bonus (Enhancement)",
  Cost=Formula("(1000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 8, nil, "Armor Enhancement Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Enhancement",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="ARMOR",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Enhancement bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon"))) >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Bonus Spell",
  Cost=Formula("(1000*(max(%CHOICE,1))*(max(%CHOICE,(1/2))))"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber({0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, true, "Spell Level"),
  },
  Key="Special Ability ~ Bonus Spell",
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
  Bonuses={
    {
      Category="SPELLCAST",
      Variables={
        "CLASS.ANY;LEVEL.%CHOICE",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="bonus spell",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Deflection)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Deflection Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Deflection",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="DEFLECTION",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Deflection bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Luck)",
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Luck",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Luck bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Insight)",
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Insight",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="INSIGHT",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Insight bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Sacred)",
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Sacred",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="SACRED",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Sacred bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Profane)",
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Profane",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="PROFANE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Profane bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|AC Bonus (Other)",
  Cost=Formula("(2500*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Armor Other Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Other",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="OTHER",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Other bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Natural Armor Bonus (Enhancement)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Natural Armor Bonus"),
  },
  Key="Special Ability ~ Bonus AC / Natural Armor",
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
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="NATURALARMOR",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Natural Armor bonus to armor class of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Resistance)",
  Cost=Formula("(1000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Resistance Bonus"),
  },
  Key="Special Ability ~ Bonus Save / Resistance",
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
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="RESISTANCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Resistance bonus to all saving throws of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Luck)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Luck Bonus"),
  },
  Key="Special Ability ~ Bonus Save / Luck",
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
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
      Formula=Formula("%CHOICE+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Luck bonus to all saving throws of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Insight)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Insight Bonus"),
  },
  Key="Special Ability ~ Bonus Save / Insight",
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
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="INSIGHT",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Insight bonus to all saving throws of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Sacred)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Sacred Bonus"),
  },
  Key="Special Ability ~ Bonus Save / Sacred",
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
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="SACRED",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Sacred bonus to all saving throws of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Profane)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Profane Bonus"),
  },
  Key="Special Ability ~ Bonus Save / Profane",
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
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="PROFANE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Profane bonus to all saving throws of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Save Bonus (Other)",
  Cost=Formula("(2000*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(1, 5, nil, "Other bonus Bonus"),
  },
  Key="Special Ability ~ Bonus Save / Other",
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
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "FORTITUDE",
        "REFLEX",
        "WILL",
      },
      Formula=Formula("%CHOICE"),
      Type={
        Name="OTHER",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Other bonus to all saving throws of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Skill Bonus (Competence)",
  Cost=Formula("(100*%CHOICE*%CHOICE)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseSkillBonus(nil, "Base", 1, 30, "Skill Bonus"),
  },
  Key="Special Ability ~ Bonus Skill / Competence",
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
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "%CHOICE",
      },
      Formula=Formula("%CHOICEVALUE"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Competence bonus to selected skill of %CHOICE",
    },
  },
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Resistance",
  Cost=Formula("10000*(%CHOICE-12)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  Choice={
    Choose=ChooseNumber(13, 32, nil, "Spell Resistance"),
  },
  Key="Special Ability ~ Bonus Spell Resistance",
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
  SpecialProperties={
    {
      Format="base spell resistance of %CHOICE",
    },
  },
  SourcePage="p.550",
  SpellResistance="%CHOICE",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon"))) >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Maximize Knowledge Skill",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NONAME",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Knowledge")))
    end, "Maximized Knowledge Skill"),
  },
  Key="Special Ability ~ Bonus Skill / Maximize Knowledge",
  Types={
    "Intelligence",
  },
  Bonuses={
    {
      Category="SKILLRANK",
      Variables={
        "%CHOICE",
      },
      Formula=Formula("99"),
    },
  },
  SpecialProperties={
    {
      Format="Grants maximum skill ranks in %CHOICE",
    },
  },
})
DefineEquipmentModifier({
  Name="|Maximize Any Skill",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NONAME",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Strength"))) or ((skill.IsType("Dexterity"))) or ((skill.IsType("Intelligence"))) or ((skill.IsType("Wisdom"))) or ((skill.IsType("Charisma")))
    end, "Maximized Any Skill"),
  },
  Key="Special Ability ~ Bonus Skill / Maximize Any Skill",
  Types={
    "Intelligence",
  },
  Bonuses={
    {
      Category="SKILLRANK",
      Variables={
        "%CHOICE",
      },
      Formula=Formula("99"),
    },
  },
  SpecialProperties={
    {
      Format="Grants maximum skill ranks in %CHOICE",
    },
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Standard spell duration)",
  Cost=Formula("(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Continuous / Hour per Level",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration measured in rounds)",
  Cost=Formula("(4*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Continuous / Round per Level",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration 1 minute/level)",
  Cost=Formula("(2*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Continuous / Minute per Level",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration 10 minutes/level)",
  Cost=Formula("(1.5*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Continuous / 10 Minutes per Level",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Continuous/Spell duration 24-hours or more)",
  Cost=Formula("(.5*(2000*(max(%SPELLLEVEL,(1/2)))*%CASTERLEVEL))+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Key="Special Ability ~ Spell Effect / Continuous / Day per Level",
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
  SourcePage="p.550",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (item)
          return ((item.IsType("Enhancement")) + (item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement")) + (item.IsType("WeaponEnhancement"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (item)
          return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Weapon"))) >= 1
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Belt")) + (item.IsType("Body")) + (item.IsType("Chest")) + (item.IsType("Eyes")) + (item.IsType("Feet")) + (item.IsType("Hands")) + (item.IsType("Head")) + (item.IsType("Headband")) + (item.IsType("Neck")) + (item.IsType("Ring")) + (item.IsType("Shoulders")) + (item.IsType("Wrist")) + (item.IsType("Instrument")) + (item.IsType("Staff")) + (item.IsType("Rod"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Staff/Primary Power)",
  Cost=Formula("((400*(max(%SPELLLEVEL,(1/2)))*(max(%CASTERLEVEL,8))+%SPELLCOST+(5*%SPELLXPCOST)))/%CHARGES"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Charges={
    Min=1,
    Max=5,
  },
  Key="Special Ability ~ Spell Effect / Staff / Primary Power",
  Types={
    "Staff",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Staff/Secondary Power)",
  Cost=Formula("((400/4*3*(max(%SPELLLEVEL,(1/2)))*(max(%CASTERLEVEL,8))+%SPELLCOST+(5*%SPELLXPCOST)))/%CHARGES"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Charges={
    Min=1,
    Max=5,
  },
  Key="Special Ability ~ Spell Effect / Staff / Secondary Power",
  Types={
    "Staff",
  },
})
DefineEquipmentModifier({
  Name="|Spell Effect (Staff/Lesser Powers)",
  Cost=Formula("((400/2*(max(%SPELLLEVEL,(1/2)))*(max(%CASTERLEVEL,8))+%SPELLCOST+(5*%SPELLXPCOST)))/%CHARGES"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return 
    end),
  },
  Charges={
    Min=1,
    Max=5,
  },
  Key="Special Ability ~ Spell Effect / Staff / Lesser Power",
  Types={
    "Staff",
  },
})
DefineEquipmentModifier({
  Name="Spell Effect (Single Use/Completion/Arcane)",
  Cost=Formula("(25*(max((%SPELLLEVEL),(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
    "Consumable",
    "Arcane",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")))) and spell.Level >= 0 and spell.Level <= 9
    end),
  },
  Key="Special Ability ~ Spell Effect / Completion / Scroll / Arcane",
  Types={
    "Scroll",
    "Arcane",
  },
  SourcePage="p.490",
  Conditions={
    function (item)
      return ((item.IsType("Scroll"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Divine"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Effect (Single Use/Completion/Divine)",
  Cost=Formula("(25*(max((%SPELLLEVEL),(1/2)))*%CASTERLEVEL)+%SPELLCOST+(5*%SPELLXPCOST)"),
  GrantedItemTypes={
    "Enhancement",
    "Magic",
    "Consumable",
    "Divine",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="SPELL",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Divine")))) and spell.Level >= 0 and spell.Level <= 9
    end),
  },
  Key="Special Ability ~ Spell Effect / Completion / Scroll / Divine",
  Types={
    "Scroll",
    "Divine",
  },
  SourcePage="p.490",
  Conditions={
    function (item)
      return ((item.IsType("Scroll"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Arcane"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Wield One Step Greater",
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Wield Size / 1 Step Greater",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-1"),
    },
  },
})
DefineEquipmentModifier({
  Name="Wield Two Step Greater",
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Wield Size / 2 Steps Greater",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-2"),
    },
  },
})
DefineEquipmentModifier({
  Name="Wield Three Step Greater",
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Wield Size / 3 Steps Greater",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-3"),
    },
  },
})
DefineEquipmentModifier({
  Name="Wield One Step Greater No Penalty",
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Wield Size / 1 Step Greater / No Penalty",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-1"),
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("2"),
    },
  },
})
DefineEquipmentModifier({
  Name="Wield Two Step Greater No Penalty",
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Wield Size / 2 Steps Greater / No Penalty",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-2"),
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("4"),
    },
  },
})
DefineEquipmentModifier({
  Name="Wield Three Step Greater No Penalty",
  Visible=true,
  AffectsBothHeads=false,
  Key="Special Quality ~ Wield Size / 3 Steps Greater / No Penalty",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-3"),
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("6"),
    },
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Weapon)",
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus1",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ +1 ~ Weapon",
  Types={
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Ammunition"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Weapon)",
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus2",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ +2 ~ Weapon",
  Types={
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Ammunition"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Weapon)",
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus3",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ +3 ~ Weapon",
  Types={
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Ammunition"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Weapon)",
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus4",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +5 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ +4 ~ Weapon",
  Types={
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("4"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Ammunition"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Weapon)",
  GrantedItemTypes={
    "Masterwork",
    "WeaponEnhancement",
    "Magic",
    "Plus5",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Weapon",
    "Special Ability ~ +2 ~ Weapon",
    "Special Ability ~ +3 ~ Weapon",
    "Special Ability ~ +4 ~ Weapon",
    "Special Quality ~ Masterwork ~ Weapon",
  },
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ +5 ~ Weapon",
  Types={
    "Weapon",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("2000*HEADPLUSTOTAL*HEADPLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("300"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("WEAPON"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("5"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Weapon"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Ammunition"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Ammunition)",
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus1",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ +1 ~ Ammunition",
  Types={
    "Ammunition",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Ammunition"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Ammunition)",
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus2",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ +2 ~ Ammunition",
  Types={
    "Ammunition",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Ammunition"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Ammunition)",
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus3",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ +3 ~ Ammunition",
  Types={
    "Ammunition",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Ammunition"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Ammunition)",
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus4",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +5 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ +4 ~ Ammunition",
  Types={
    "Ammunition",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("4"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Ammunition"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Ammunition)",
  GrantedItemTypes={
    "Masterwork",
    "Enhancement",
    "Magic",
    "Plus5",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Ammunition",
    "Special Ability ~ +2 ~ Ammunition",
    "Special Ability ~ +3 ~ Ammunition",
    "Special Ability ~ +4 ~ Ammunition",
    "Special Quality ~ Masterwork ~ Ammunition",
  },
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ +5 ~ Ammunition",
  Types={
    "Ammunition",
  },
  Bonuses={
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("40*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("6"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("AMMUNITION"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("5"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SourcePage="p.344",
  Conditions={
    function (item)
      return ((item.IsType("Ammunition"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Anarchic",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Anarchic ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="chaotically aligned, +2d6 damage against lawful targets, 1 negative level bestowed on lawful wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
        end,
      },
    },
  },
  SourcePage="p.468",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Axiomatic",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Axiomatic ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="lawfully aligned, +2d6 damage against chaotic targets, 1 negative level bestowed to chaotic wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  SourcePage="p.468",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Bane",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NONAME",
  NameModifierLocation="Prefix",
  Choice={
    Choose=ChooseString({"Aberration Bane", "Animal Bane", "Construct Bane", "Dragon Bane", "Fey Bane", "Aquatic Humanoid Bane", "Dwarf Bane", "Elf Bane", "Giant Bane", "Gnoll Bane", "Gnome Bane", "Goblinoid Bane", "Halfling Bane", "Human Bane", "Reptilian Bane", "Orc Bane", "Magical Beast Bane", "Monstrous Humanoid Bane", "Ooze Bane", "Air Outsider Bane", "Chaotic Outsider Bane", "Earth Outsider Bane", "Evil Outsider Bane", "Fire Outsider Bane", "Good Outsider Bane", "Lawful Outsider Bane", "Water Outsider Bane", "Plant Bane", "Undead Bane", "Vermin Bane", "TITLE=Designated Foe"}),
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Bane ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="%CHOICE weapons have +2 enhancement bonus and deal +2d6 bonus damage against the chosen foe",
    },
  },
  SourcePage="p.469",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Brilliant Energy",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ Brilliant Energy ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="ignores armor and shield bonuses including enhancement, cannot harm undead, constructs, and objects",
    },
  },
  SourcePage="p.470",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Dancing",
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ Dancing ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="can be loosed to attack on its own",
    },
  },
  SourcePage="p.346",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Defending",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Defending ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="can transfer some or all of its enhancement bonus to AC",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Disruption",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Disruption ~ Weapon",
  Types={
    "Weapon",
    "Bludgeoning",
  },
  SpecialProperties={
    {
      Format="undead hit must make Will save (DC 14) or be destroyed",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Bludgeoning"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Distance",
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Distance ~ Ranged",
  Types={
    "Weapon",
    "Ranged",
  },
  Bonuses={
    {
      Category="EQMWEAPON",
      Variables={
        "RANGEMULT",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="range increment doubled",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Ranged"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Flaming",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Flaming ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 fire damage",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Flaming Burst",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Flaming Burst ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 fire damage, on a critical hit deals +%d10 additional fire damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Frost",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Frost ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 cold damage",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Ghost Touch",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Ghost Touch ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="deals damage normally against incorporeal creatures regardless of bonus",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Holy",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Holy ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="good aligned, +2d6 damage against evil targets, 1 negative level bestowed to evil wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Icy Burst",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Icy Burst ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 cold damage, on a critical hit deals +%d10 additional cold damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Keen",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Keen ~ Weapon",
  Types={
    "Weapon",
    "Piercing",
    "Slashing",
  },
  Bonuses={
    {
      Category="EQMWEAPON",
      Variables={
        "CRITRANGEDOUBLE",
      },
      Formula=Formula("1"),
      Type={
        Name="NONSTACKINGCRIT",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="threat range doubled",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Piercing")) + (item.IsType("Slashing"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Ki Focus",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Ki Focus ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="can use ki attacks through weapon",
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Merciful",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Merciful ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 damage, deals non-lethal damage only",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Mighty Cleaving",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Mighty Cleaving ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="allows an additional Cleave attack per round (with Cleave feat)",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Returning",
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Returning ~ Thrown",
  Types={
    "Weapon",
    "Thrown",
  },
  SpecialProperties={
    {
      Format="when thrown will return just before thrower's next turn",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Thrown"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Seeking",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Seeking ~ Ranged",
  Types={
    "Weapon",
    "Ranged",
  },
  SpecialProperties={
    {
      Format="negates any miss chance",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Ranged"))) >= 3
    end,
    function (item)
      return not (((item.IsType("Thrown"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Shock",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Shock ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 electricity damage",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Shocking Burst",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Shocking Burst ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+1d6 electricity damage, on a critical hit deals +%d10 additional electricity damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Speed",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Speed ~ Weapon",
  Types={
    "Weapon",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "ATTACKS",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="grants one extra attack at full base attack bonus when making a full-attack action",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Storing",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Spell Storing ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="can store a single targeted spell of up to 3rd level with a casting time of 1 standard action",
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Thundering",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Thundering ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="+%d8 sonic damage on a critical hit and permanently deafened unless save vs Fort (DC 14)",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SourcePage="p.349",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Throwing",
  GrantedItemTypes={
    "Ranged",
    "Thrown",
  },
  Visible=true,
  AffectsBothHeads=true,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Throwing ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  Bonuses={
    {
      Category="EQMWEAPON",
      Variables={
        "RANGEADD",
      },
      Formula=Formula("10"),
    },
  },
  SpecialProperties={
    {
      Format="can be thrown with a range increment of 10 ft.",
    },
  },
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Unholy",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Unholy ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="evil aligned, +2d6 damage against good targets, 1 negative level bestowed to good wielder",
    },
  },
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG"
        end,
      },
    },
  },
  SourcePage="p.349",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Vicious",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Vicious ~ Melee",
  Types={
    "Weapon",
    "Melee",
  },
  SpecialProperties={
    {
      Format="+2d6 damage to target, plus 1d6 damage to user",
    },
  },
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Vorpal",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ Vorpal ~ Melee",
  Types={
    "Weapon",
    "Melee",
    "Slashing",
  },
  SpecialProperties={
    {
      Format="severs opponents head on natural 20 critical hit",
    },
  },
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.IsType("WeaponEnhancement")) + (item.IsType("Weapon")) + (item.IsType("Melee")) + (item.IsType("Slashing"))) >= 4
    end,
  },
})
DefineEquipmentModifier({
  Name="Wounding",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Wounding ~ Weapon",
  Types={
    "Ammunition",
    "Weapon",
  },
  SpecialProperties={
    {
      Format="deals 1 point of bleed damage per hit",
    },
  },
  SourcePage="p.349",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("WeaponEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Weapon")) + (item.IsType("Ammunition"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Amulet of Mighty Fists",
  Cost=Formula("4000*PLUSTOTAL*PLUSTOTAL"),
  Visible=false,
  AffectsBothHeads=false,
  Key="Special Ability ~ Amulet of Mighty Fists Base",
  SortKey="0+1",
})
DefineEquipmentModifier({
  Name="+1 to Hit and Damage",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ +1 ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="0+1",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+2 to Hit and Damage",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ +2 ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("2"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="0+2",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+3 to Hit and Damage",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ +3 ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="0+3",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+4 to Hit and Damage",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
    "Special Ability ~ +5 ~ Amulet of Mighty Fists",
  },
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ +4 ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("4"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="0+4",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+5 to Hit and Damage",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Amulet of Mighty Fists",
    "Special Ability ~ +3 ~ Amulet of Mighty Fists",
    "Special Ability ~ +4 ~ Amulet of Mighty Fists",
    "Special Ability ~ +1 ~ Amulet of Mighty Fists",
  },
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ +5 ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="WEAPONPROF=TYPE.Natural",
      Variables={
        "TOHIT",
        "DAMAGE",
      },
      Formula=Formula("5"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="0+5",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Anarchic",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Anarchic ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are chaotically aligned, +2d6 damage against lawful targets, 1 negative level bestowed on lawful wielder",
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
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
  SourcePage="p.468",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Axiomatic",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Axiomatic ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are lawfully aligned, +2d6 damage against chaotic targets, 1 negative level bestowed to chaotic wielder",
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
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
  SourcePage="p.468",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Bane",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Choice={
    Choose=ChooseString({"Aberrations", "Animals", "Constructs", "Dragons", "Fey", "Humanoids (Aquatic)", "Humanoids (Dwarf)", "Humanoids (Elf)", "Humanoids (Giant)", "Humanoids (Gnoll)", "Humanoids (Gnome)", "Humanoids (Goblinoid)", "Humanoids (Halfling)", "Humanoids (Human)", "Humanoids (Reptilian)", "Humanoids (Orc)", "Magical Beasts", "Monstrous Humanoids", "Oozes", "Outsiders (Air)", "Outsiders (Chaotic)", "Outsiders (Earth)", "Outsiders (Evil)", "Outsiders (Fire)", "Outsiders (Good)", "Outsiders (Lawful)", "Outsiders (Water)", "Plants", "Undead", "Vermin", "TITLE=Designated Foe"}),
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Bane ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks gain a +2 enhancement bonus and do +2d6 bonus damage against %CHOICE",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Bane",
      },
    },
  },
  SourcePage="p.469",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Brilliant Energy",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ Brilliant Energy ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks ignore armor and shield bonuses including enhancement, cannot harm undead, constructs, and objects",
    },
  },
  SortKey="+4",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Brilliant Energy",
      },
    },
  },
  SourcePage="p.470",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Defending",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Defending ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="can transfer some or all of its enhancement bonus to AC",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Defending",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Disruption",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Disruption ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="undead hit by unarmed and natural attacks must make Will save (DC 14) or be destroyed",
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Disruption",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Flaming",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Flaming ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 fire damage",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Flaming",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Flaming Burst",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Flaming Burst ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 fire damage, on a critical hit deals +%d10 additional fire damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Flaming Burst",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Frost",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Frost ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 cold damage",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Frost",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Ghost Touch",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Ghost Touch ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks deal damage normally against incorporeal creatures regardless of bonus",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Ghost Touch",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Holy",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Holy ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are good aligned, +2d6 damage against evil targets, 1 negative level bestowed to evil wielder",
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
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
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Icy Burst",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Icy Burst ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 cold damage, on a critical hit deals +%d10 additional cold damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Icy Burst",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Ki Focus",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Ki Focus ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="can use ki attacks through unarmed and natural attacks",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Ki Focus",
      },
    },
  },
  SourcePage="p.347",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Merciful",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Merciful ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 damage, deals non-lethal damage only",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Merciful",
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Mighty Cleaving",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Mighty Cleaving ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="allows an additional Cleave attack per round on unarmed and natural attacks (with Cleave feat)",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Mighty Cleaving",
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Shock",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Shock ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 electricity damage",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Shock",
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Shocking Burst",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Shocking Burst ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +1d6 electricity damage, on a critical hit deals +%d10 additional electricity damage",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Shocking Burst",
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Speed",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Speed ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="grants one extra attack with unarmed or natural attack at full base attack bonus when making a full-attack action",
    },
  },
  SortKey="+3",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Speed",
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Storing",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Spell Storing ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="can store a single targeted spell of up to 3rd level with a casting time of 1 standard action",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Spell Storing",
      },
    },
  },
  SourcePage="p.348",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Thundering",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Thundering ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +%d8 sonic damage on a critical hit and permanently deafened unless save vs Fort (DC 14)",
      Arguments={
        Formula("CRITMULT-1"),
      },
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Thundering",
      },
    },
  },
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Unholy",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Unholy ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NEGLEVELS",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks are evil aligned, +2d6 damage against good targets, 1 negative level bestowed to good wielder",
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG"
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
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Vicious",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Vicious ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks do +2d6 damage to target, plus 1d6 damage to user",
    },
  },
  SortKey="+1",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Vicious",
      },
    },
  },
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Wounding",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Wounding ~ Amulet of Mighty Fists",
  Types={
    "Amulet of Mighty Fists",
  },
  SpecialProperties={
    {
      Format="unarmed and natural attacks deal 1 point of bleed damage per hit",
    },
  },
  SortKey="+2",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Unarmed Wounding",
      },
    },
  },
  SourcePage="p.349",
  Conditions={
    function (item)
      return ((item.HasModifier("Special Ability ~ Amulet of Mighty Fists Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Armor)",
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus1",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ +1 ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="ArmorEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Armor)",
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus2",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ +2 ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("2"),
      Type={
        Name="ArmorEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Armor)",
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus3",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ +3 ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("3"),
      Type={
        Name="ArmorEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Armor)",
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus4",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +5 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ +4 ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("4"),
      Type={
        Name="ArmorEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Armor)",
  GrantedItemTypes={
    "Masterwork",
    "ArmorEnhancement",
    "Magic",
    "Plus5",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Armor",
    "Special Ability ~ +2 ~ Armor",
    "Special Ability ~ +3 ~ Armor",
    "Special Ability ~ +4 ~ Armor",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ +5 ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("5"),
      Type={
        Name="ArmorEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableArmorBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("ARMOR"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Armor"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+1 (Enhancement to Shield)",
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus1",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+1",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ +1 ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="ShieldEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Shield"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+2 (Enhancement to Shield)",
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus2",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+2",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ +2 ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("2"),
      Type={
        Name="ShieldEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Shield"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+3 (Enhancement to Shield)",
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus3",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+3",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ +3 ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("3"),
      Type={
        Name="ShieldEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Shield"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+4 (Enhancement to Shield)",
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus4",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+4",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +5 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ +4 ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("4"),
      Type={
        Name="ShieldEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Shield"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="+5 (Enhancement to Shield)",
  GrantedItemTypes={
    "Masterwork",
    "ShieldEnhancement",
    "Magic",
    "Plus5",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=+5",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ +1 ~ Shield",
    "Special Ability ~ +2 ~ Shield",
    "Special Ability ~ +3 ~ Shield",
    "Special Ability ~ +4 ~ Shield",
    "Special Quality ~ Masterwork ~ Armor",
  },
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ +5 ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("5"),
      Type={
        Name="ShieldEnhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["DisableShieldBonus"] == 0)
        end,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("1000*PLUSTOTAL*PLUSTOTAL"),
      Conditions={
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
    {
      Category="ITEMCOST",
      Variables={
        "Cost",
      },
      Formula=Formula("150"),
      Conditions={
        function (item)
          return not (((item.HasModifierType("MASTERWORKQUALITY"))) >= 1)
        end,
        function (item)
          return ((item.IsType("SHIELD"))) >= 1
        end,
      },
    },
  },
  SourcePage="p.340",
  Conditions={
    function (item)
      return ((item.IsType("Shield"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Animated",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Animated ~ Shield",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="EQM",
      Variables={
        "HANDS",
      },
      Formula=Formula("-EQHANDS"),
    },
  },
  SpecialProperties={
    {
      Format="floats within 2 feet of the wielder, but still take normal penalties",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Shield"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Arrow Catching",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Arrow Catching ~ Shield",
  Types={
    "Shield",
  },
  SpecialProperties={
    {
      Format="attracts ranged weapons to it; grants +1 deflection bonus vs ranged weapons",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Shield"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Arrow Deflection",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Arrow Deflection ~ Shield",
  Types={
    "Shield",
  },
  SpecialProperties={
    {
      Format="Reflex save (DC 20 + Missile enhancement) to deflect arrows; 1/round",
    },
  },
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Deflect Arrows",
      },
    },
  },
  SourcePage="p.462",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Shield"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Bashing",
  GrantedItemTypes={
    "Bashing",
    "Weapon",
    "Melee",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Bashing ~ Shield / Heavy",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SHIELDBASHINGDIESIZESTEP",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMWEAPON",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="damage dice increases to 1d8",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Heavy"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Bashing",
  GrantedItemTypes={
    "Bashing",
    "Weapon",
    "Melee",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Bashing ~ Shield / Light",
  Types={
    "Shield",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "SHIELDBASHINGDIESIZESTEP",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMWEAPON",
      Variables={
        "DAMAGESIZE",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="damage dice increases to 1d6",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Light"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Blinding",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Blinding ~ Shield",
  Types={
    "Shield",
  },
  SpecialProperties={
    {
      Format="flashes light 2/day upon command; range 20 ft.; Reflex save (DC 14) or be blinded for 1d4 rounds",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Shield"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Acid)",
  Cost=Formula("18000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Acid ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of acid damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Acid/Improved)",
  Cost=Formula("42000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Acid / Improved ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of acid damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Acid/Greater)",
  Cost=Formula("66000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Acid / Greater ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of acid damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Cold)",
  Cost=Formula("18000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Cold ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of cold damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Cold/Improved)",
  Cost=Formula("42000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Cold / Improved ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of cold damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Cold/Greater)",
  Cost=Formula("66000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Cold / Greater ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of cold damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Electricity)",
  Cost=Formula("18000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Electricity ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of electricity damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Electricity/Improved)",
  Cost=Formula("42000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Electricity / Improved ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of electricity damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Electricity/Greater)",
  Cost=Formula("66000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Electricity / Greater ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of electricity damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Fire)",
  Cost=Formula("18000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Fire ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of fire damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Fire/Improved)",
  Cost=Formula("42000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Fire / Improved ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of fire damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Fire/Greater)",
  Cost=Formula("66000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Fire / Greater ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of fire damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Sonic)",
  Cost=Formula("18000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Sonic ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 10 points of sonic damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Sonic/Improved)",
  Cost=Formula("42000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Sonic / Improved ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 20 points of sonic damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Energy Resistance (Sonic/Greater)",
  Cost=Formula("66000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Energy Resistance / Sonic / Greater ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="absorbs 30 points of sonic damage per attack",
    },
  },
  SourcePage="p.462",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Etherealness",
  Cost=Formula("49000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Etherealness ~ Armor",
  Types={
    "Armor",
  },
  SpecialProperties={
    {
      Format="become ethereal (as Ethereal Jaunt spell) 1/day",
    },
  },
  SourcePage="p.463",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Light Fortification",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ Fortification / Heavy ~ Armor",
    "Special Ability ~ Fortification / Moderate ~ Armor",
  },
  EquivalentEnhancementBonus=1,
  Key="Special Ability ~ Fortification / Light ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
  SpecialProperties={
    {
      Format="25% chance to negate critical hits and sneak attacks",
    },
  },
  SortKey="Fortification (Light)",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Eqmod ~ Fortification (Light)",
      },
    },
  },
  SourcePage="p.463",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Moderate Fortification",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ Fortification / Heavy ~ Armor",
    "Special Ability ~ Fortification / Light ~ Armor",
  },
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Fortification / Moderate ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
  SpecialProperties={
    {
      Format="50% chance to negate critical hits and sneak attacks",
    },
  },
  SortKey="Fortification (Moderate)",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Eqmod ~ Fortification (Medium)",
      },
    },
  },
  SourcePage="p.463",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Heavy Fortification",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Replaces={
    "Special Ability ~ Fortification / Light ~ Armor",
    "Special Ability ~ Fortification / Moderate ~ Armor",
  },
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ Fortification / Heavy ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
  SpecialProperties={
    {
      Format="75% chance to negate critical hits and sneak attacks",
    },
  },
  SortKey="Fortification (Heavy)",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Eqmod ~ Fortification (Heavy)",
      },
    },
  },
  SourcePage="p.463",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Ghost Touch",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Ghost Touch ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
    "Shield",
  },
  SpecialProperties={
    {
      Format="armor and enhancement count vs. incorporeal attacks",
    },
  },
  SourcePage="p.463",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Glamered",
  Cost=Formula("2700"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Glamered ~ Armor",
  Types={
    "Armor",
  },
  SpecialProperties={
    {
      Format="can appear as normal clothing on command",
    },
  },
  SourcePage="p.463",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Invulnerability",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Invulnerability ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
  SpecialProperties={
    {
      Format="grants DR 5/magic",
    },
  },
  SourcePage="p.464",
  DamageReduction={
    Value="5/Magic",
  },
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Reflecting",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ Reflecting ~ Shield",
  Types={
    "Shield",
  },
  SpecialProperties={
    {
      Format="reflect spell (as Spell Turning spell) 1/day",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Shield"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Shadow",
  Cost=Formula("3750"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Shadow ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "STEALTH",
      },
      Formula=Formula("5"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="+5 competence bonus to Stealth checks",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Shadow (Improved)",
  Cost=Formula("15000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Shadow / Improved ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "STEALTH",
      },
      Formula=Formula("10"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="+10 competence bonus to Stealth checks",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Shadow (Greater)",
  Cost=Formula("33750"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Shadow / Greater ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "STEALTH",
      },
      Formula=Formula("15"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="+15 competence bonus to Stealth checks",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Slick",
  Cost=Formula("3750"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Slick ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "ESCAPE ARTIST",
      },
      Formula=Formula("5"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="+5 competence bonus to Escape Artist checks",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Slick (Improved)",
  Cost=Formula("15000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Slick / Improved ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "ESCAPE ARTIST",
      },
      Formula=Formula("10"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="+10 competence bonus to Escape Artist checks",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Slick (Greater)",
  Cost=Formula("33750"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Slick / Greater ~ Armor",
  Types={
    "Armor",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "ESCAPE ARTIST",
      },
      Formula=Formula("15"),
      Type={
        Name="COMPETENCE",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="+15 competence bonus to Escape Artist checks",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ArmorEnhancement")) + (item.IsType("Armor"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 13",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=2,
  Key="Special Ability ~ Spell Resistance / 13 ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
  SpecialProperties={
    {
      Format="grants spell resistance 13",
    },
  },
  SourcePage="p.464",
  SpellResistance="13",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 15",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Spell Resistance / 15 ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
  SpecialProperties={
    {
      Format="grants spell resistance 15",
    },
  },
  SourcePage="p.464",
  SpellResistance="15",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 17",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=4,
  Key="Special Ability ~ Spell Resistance / 17 ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
  SpecialProperties={
    {
      Format="grants spell resistance 17",
    },
  },
  SourcePage="p.464",
  SpellResistance="17",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Spell Resistance 19",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=5,
  Key="Special Ability ~ Spell Resistance / 19 ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
  SpecialProperties={
    {
      Format="grants spell resistance 19",
    },
  },
  SourcePage="p.464",
  SpellResistance="19",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Undead Controlling",
  Cost=Formula("49000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  Key="Special Ability ~ Undead Controlling ~ Armor",
  Types={
    "Armor",
    "Shield",
  },
  SpecialProperties={
    {
      Format="control up to 26 HD of undead per day (As Control Undead spell)",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement")) + (item.IsType("ShieldEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Shield"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Wild",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Wild ~ Armor",
  Types={
    "Armor",
    "Bracer",
    "ArmorLike",
  },
  SpecialProperties={
    {
      Format="preserve armor and enhancment bonus while using Wild Shape",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (item)
        return ((item.IsType("ArmorEnhancement"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (item)
        return ((item.IsType("Armor")) + (item.IsType("Bracer"))) >= 1
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Wild",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NORMAL",
  NameModifierLocation="Prefix",
  EquivalentEnhancementBonus=3,
  Key="Special Ability ~ Wild ~ Shield",
  Types={
    "Shield",
  },
  SpecialProperties={
    {
      Format="preserve shield and enhancment bonus while using Wild Shape",
    },
  },
  SourcePage="p.464",
  Conditions={
    function (item)
      return ((item.IsType("ShieldEnhancement")) + (item.IsType("Shield"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Intelligent Magic Item Base",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="TEXT=Intelligent",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Base",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntItemSenseRange",
      },
      Formula=Formula("30"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemNegativeLevel",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["IntelligentItemEgo"] >= 20)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "IntItemNegativeLevel",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["IntelligentItemEgo"] >= 30)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "NegativeLevel",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["IntelligentItemEgo"] <= 19)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "NegativeLevel",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["IntelligentItemEgo"] <= 29)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "NegativeLevel",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["IntelligentItemEgo"] >= 30)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("10"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("10"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("10"),
    },
    {
      Category="VAR",
      Variables={
        "BaseCostTracker",
      },
      Formula=Formula("COST"),
    },
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("(BaseCostTracker>=1001)+(BaseCostTracker>=5001)+(BaseCostTracker>=10001)+(BaseCostTracker>=20001)+(BaseCostTracker>=50001)+(BaseCostTracker>=50001)+(BaseCostTracker>=100001)+(BaseCostTracker>=100001)+(BaseCostTracker>=200001)+(BaseCostTracker>=200001)+(BaseCostTracker>=200001)+(BaseCostTracker>=200001)"),
    },
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
      Arguments={
        Formula("!PREEQUIP:1,EQMOD=Intelligent Item ~ Communication / Speech,EQMOD=Intelligent Item ~ Communication / Telepathy"),
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Base Intelligent Item",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("Magic"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated Purpose",
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
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
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 11",
  Cost=Formula("200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 11",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("1"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 11",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 12",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 12",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "SpeechBonusLang",
      },
      Formula=Formula("1"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 12",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 13",
  Cost=Formula("700"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 13",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("3"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 13",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 14",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 14",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "SpeechBonusLang",
      },
      Formula=Formula("2"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 14",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 15",
  Cost=Formula("1400"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 15",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("5"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 15",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 16",
  Cost=Formula("2000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 16",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("3"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("6"),
    },
    {
      Category="VAR",
      Variables={
        "SpeechBonusLang",
      },
      Formula=Formula("3"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 16",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 17",
  Cost=Formula("2800"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 17",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("3"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("7"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 17",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 18",
  Cost=Formula("4000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 18",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("8"),
    },
    {
      Category="VAR",
      Variables={
        "SpeechBonusLang",
      },
      Formula=Formula("4"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 18",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 19",
  Cost=Formula("5200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 19",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("9"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 19",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Intelligence 20",
  Cost=Formula("8000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Intelligence 20",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("5"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatINT",
      },
      Formula=Formula("10"),
    },
    {
      Category="VAR",
      Variables={
        "SpeechBonusLang",
      },
      Formula=Formula("5"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat INT ~ 20",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 11",
  Cost=Formula("200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 11",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("1"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 11",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 12",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 12",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("2"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 12",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 13",
  Cost=Formula("700"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 13",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("3"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 13",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 14",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 14",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("4"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 14",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 15",
  Cost=Formula("1400"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 15",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("5"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 15",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 16",
  Cost=Formula("2000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 16",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("3"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("6"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 16",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 17",
  Cost=Formula("2800"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 17",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("3"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("7"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 17",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 18",
  Cost=Formula("4000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 18",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("8"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 18",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 19",
  Cost=Formula("5200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 19",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("9"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 19",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Wisdom 20",
  Cost=Formula("8000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Wisdom 20",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("5"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatWIS",
      },
      Formula=Formula("10"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat WIS ~ 20",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 11",
  Cost=Formula("200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 11",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("1"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 11",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 12",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 12",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("2"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 12",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 13",
  Cost=Formula("700"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 13",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("3"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 13",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 14",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 14",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("4"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 14",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 15",
  Cost=Formula("1400"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 15",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("5"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 15",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 16",
  Cost=Formula("2000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 16",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("3"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("6"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 16",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 17",
  Cost=Formula("2800"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 17",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("3"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("7"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 17",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 18",
  Cost=Formula("4000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 18",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("8"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 18",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 19",
  Cost=Formula("5200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 19",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("4"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("9"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 19",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Stat Charisma 20",
  Cost=Formula("8000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Ability Score / Charisma 20",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("5"),
    },
    {
      Category="VAR",
      Variables={
        "IntItemStatCHA",
      },
      Formula=Formula("10"),
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item Stat CHA ~ 20",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Speech",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Communication / Speech",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  SpecialProperties={
    {
      Format="An intelligent item with the capability for speech can talk using any of the languages it knows. It automatically knows Common.",
    },
  },
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
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Telepathy",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Communication / Telepathy",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  SpecialProperties={
    {
      Format="Telepathy allows an intelligent item to communicate with its wielder telepathically, regardless of its known languages. The wielder must be touching the item to communicate in this way.",
    },
  },
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
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses (60')",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Replaces={
    "Intelligent Item ~ Sense / Range 120",
  },
  Key="Intelligent Item ~ Sense / Range 60",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "INTITEMSENSERANGE",
      },
      Formula=Formula("30"),
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses (120')",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Replaces={
    "Intelligent Item ~ Sense / Range 60",
  },
  Key="Intelligent Item ~ Sense / Range 120",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "INTITEMSENSERANGE",
      },
      Formula=Formula("90"),
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses Darkvision",
  Cost=Formula("500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Sense / Darkvision",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  SpecialProperties={
    {
      Format="Darkvision % ft.",
      Arguments={
        Formula("IntItemSenseRange"),
      },
    },
  },
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
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Senses Blindsense",
  Cost=Formula("5000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Sense / Blindsense",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  SpecialProperties={
    {
      Format="Blindsense % ft.",
      Arguments={
        Formula("IntItemSenseRange"),
      },
    },
  },
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
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Read Languages",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Communication / Read Language",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  SpecialProperties={
    {
      Format="Read Languages",
    },
  },
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
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Communication Read Magic",
  Cost=Formula("2000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Communication / Read Magic",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  SpecialProperties={
    {
      Format="Read Magic",
    },
  },
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
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (CG)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Chaotic Good",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "CG")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (CG)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (CN)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Chaotic Neutral",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "CG" or character.Alignment == "CE" or character.Alignment == "CN")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (CN)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (CE)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Chaotic Evil",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "CE")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (CE)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (NE)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Neutral Evil",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "NE" or character.Alignment == "NG" or character.Alignment == "TN")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (NE)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (LE)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Lawful Evil",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "LE")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (LE)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (LG)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Lawful Good",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "LG")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (LG)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (LN)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Lawful Neutral",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "LN" or character.Alignment == "LG" or character.Alignment == "LE")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (LN)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (NG)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / Neutral Good",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "NG")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (NG)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Align (TN)",
  Cost=Formula("0"),
  GrantedItemTypes={
    "ItemAlign",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
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
  Key="Intelligent Item ~ Alignment / True Neutral",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1+var(\"IntItemNegativeLevel\")"),
      Conditions={
        function (character)
          return not (character.Alignment == "TN")
        end,
      },
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Intelligent Item ~ Align (TN)",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 0-level spell at will",
  Cost=Formula("1000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 0 and spell.Level <= 0
    end),
  },
  Key="Intelligent Item ~ Power / 0 Level Spell / At-Will",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 1st-level spell 3/day",
  Cost=Formula("1200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 1 and spell.Level <= 1
    end),
  },
  Key="Intelligent Item ~ Power / 1st Level Spell / 3 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 2nd-level spell 1/day",
  Cost=Formula("2400"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 2 and spell.Level <= 2
    end),
  },
  Key="Intelligent Item ~ Power / 2nd Level Spell / 1 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 1/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 3rd-level spell 1/day",
  Cost=Formula("6000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 3 and spell.Level <= 3
    end),
  },
  Key="Intelligent Item ~ Power / 3rd Level Spell / 1 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 1/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 3rd-level spell 3/day",
  Cost=Formula("18000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 3 and spell.Level <= 3
    end),
  },
  Key="Intelligent Item ~ Power / 3rd Level Spell / 3 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 4th-level spell 3/day",
  Cost=Formula("33600"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 4 and spell.Level <= 4
    end),
  },
  Key="Intelligent Item ~ Power / 4th Level Spell / 3 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 2nd-level spell 3/day",
  Cost=Formula("7200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 2 and spell.Level <= 2
    end),
  },
  Key="Intelligent Item ~ Power / 2nd Level Spell / 3 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 3/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 4th-level spell 1/day",
  Cost=Formula("11200"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 4 and spell.Level <= 4
    end),
  },
  Key="Intelligent Item ~ Power / 4th Level Spell / 1 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % 1/day",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Magic aura on itself at will",
  Cost=Formula("2000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Power / Magic Aura / At-Will",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Item can use magic aura on itself at will",
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Magic Aura",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 5 ranks in a skill",
  Cost=Formula("2500"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end, "Skill Choice"),
  },
  Key="Intelligent Item ~ Power / Skill Ranks / 5",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Item has 5 ranks in %",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Move 10 feet",
  Cost=Formula("5000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Power / Movement / Walk 10 Feet",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Item can sprout limbs and move with a speed of 10 feet",
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Move",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power 10 ranks in a skill",
  Cost=Formula("10000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSkill(function (character, skill)
      return ((skill.IsType("Base")))
    end, "Skill Choice"),
  },
  Key="Intelligent Item ~ Power / Skill Ranks / 10",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Item has 10 ranks in %",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Change shape",
  Cost=Formula("10000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Power / Change Shape",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Item can change shape into one other form of the same size",
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Change Shape",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Fly 30 feet",
  Cost=Formula("10000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Power / Movement / Fly 30 Feet",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Item can fly (as per the spell) at a speed of 30 feet",
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Fly",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Power Teleport itself 1/day",
  Cost=Formula("15000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Power / Movement / Teleport / 1 per Day",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Item can teleport itself 1/day",
    },
  },
  Abilities={
    {
      Category="Intelligent Item",
      Nature="AUTOMATIC",
      Names={
        "Item Power ~ Teleport",
      },
    },
  },
  Conditions={
    function (item)
      return ((item.IsType("ItemAlign"))) >= 1
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay diametrically opposed alignment",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Alignment",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay diametrically opposed alignment",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay arcane spellcasters (including spellcasting monsters and those that use spell-like abilities)",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Arcane Spellcaster",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay arcane spellcasters (including spellcasting monsters and those that use spell-like abilities)",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay divine spellcasters (including divine entities and servitors)",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Divine Spellcaster",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay divine spellcasters (including divine entities and servitors)",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay non-spellcasters",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Non-spellcaster",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay non-spellcasters",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay a particular creature type (see the bane special ability for choices)",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Creature Type",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay a particular creature type (see the bane special ability for choices)",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay a particular race or kind of creature",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Creature Race",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay a particular race or kind of creature",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defend a particular race or kind of creature",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Defend Creature Race",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defend a particular race or kind of creature",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay the servants of a specific deity",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay Servants of Deity",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay the servants of a specific deity",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defend the servants and interests of a specific deity",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Defend Servants of Deity",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defend the servants and interests of a specific deity",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Defeat/slay all (other than the item and the wielder)",
  GrantedItemTypes={
    "DedicatedPurpose",
  },
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose / Slay All",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
      Type={
        Name="Purpose",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="Defeat/slay all (other than the item and the wielder)",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose"))) >= 2
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated Detect special purpose foes",
  Cost=Formula("10000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose Power / Detect Foe",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("1"),
    },
  },
  SpecialProperties={
    {
      Format="Dedicated Power - Detect special purpose foes",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 4th-level spell at will",
  Cost=Formula("56000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 4 and spell.Level <= 4
    end),
  },
  Key="Intelligent Item ~ Purpose Power / 4th Level Spell / At-Will",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated +2 luck attacks & saves",
  Cost=Formula("80000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose Power / Luck Bonus",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "TOHIT",
      },
      Formula=Formula("2+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="SAVE",
      Variables={
        "ALL",
      },
      Formula=Formula("2+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Dedicated Power - +2 luck attacks & saves",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 5th-level spell at will",
  Cost=Formula("90000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 5 and spell.Level <= 5
    end),
  },
  Key="Intelligent Item ~ Purpose Power / 5th Level Spell / At-Will",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 6th-level spell at will",
  Cost=Formula("132000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 6 and spell.Level <= 6
    end),
  },
  Key="Intelligent Item ~ Purpose Power / 6th Level Spell / At-Will",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated 7th-level spell at will",
  Cost=Formula("182000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return (((spell.IsType("Arcane")) and (spell.IsType("Divine")))) and spell.Level >= 7 and spell.Level <= 7
    end),
  },
  Key="Intelligent Item ~ Purpose Power / 7th Level Spell / At-Will",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Cast % at will",
      Arguments={
        Formula("%LIST"),
      },
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
DefineEquipmentModifier({
  Name="Int Item / Dedicated True resurrection on wielder",
  Cost=Formula("200000"),
  Visible=true,
  AffectsBothHeads=false,
  NameModifier="NOTHING",
  NameModifierLocation="Parentheses",
  Key="Intelligent Item ~ Purpose Power / True Resurrection",
  Types={
    "Weapon",
    "Armor",
    "Goods",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "IntelligentItemEgo",
      },
      Formula=Formula("2"),
    },
  },
  SpecialProperties={
    {
      Format="Dedicated Power - True resurrection on wielder",
    },
  },
  Conditions={
    function (item)
      return ((item.HasModifier("Intelligent Item ~ Base")) + (item.HasModifier("Intelligent Item ~ Purpose")) + (item.IsType("DedicatedPurpose"))) >= 3
    end,
  },
})
CopyEquipmentModifier("Material ~ Cloth", {
  Name="CLOTH",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Leather", {
  Name="LEATHER",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Rope", {
  Name="ROPE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Steel", {
  Name="STEEL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Wood", {
  Name="WOOD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Weapon", {
  Name="MWORKW",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Ammunition", {
  Name="MWORKM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Armor", {
  Name="MWORKA",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Item", {
  Name="MWORKT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Masterwork ~ Bonded Object", {
  Name="MWORKB",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Bonded Object", {
  Name="BONDED_OBJECT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Thrown Ammunition", {
  Name="THROWN_AMMO",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Composite Bow Strength Rating", {
  Name="BOWSTR",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Brace", {
  Name="BRACE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Disarm", {
  Name="DISARM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Monk", {
  Name="MONK",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Nonlethal", {
  Name="NONLETHAL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Trip", {
  Name="TRIP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Spikes ~ Armor", {
  Name="SPIKE_A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Spikes ~ Shield", {
  Name="SPIKE_S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Spikes ~ Shieldbash", {
  Name="SPIKE_SB",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Locked Gauntlet", {
  Name="LOCK_G",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Nonhumanoid ~ Armor", {
  Name="NONHUMANOID",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Weapon", {
  Name="BROKEW",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Armor", {
  Name="BROKEA",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Shield", {
  Name="BROKES",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Item", {
  Name="BROKET",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Broken ~ Magic Item", {
  Name="BROKEM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Ammunition", {
  Name="Adamantine (Ammo)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Light", {
  Name="Adamantine (Light Armor)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Medium", {
  Name="Adamantine (Medium Armor)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Heavy", {
  Name="Adamantine (Heavy Armor)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Weapon", {
  Name="Adamantine (Weapon)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Light", {
  Name="Mithral (Light Armor)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Medium", {
  Name="Mithral (Medium Armor)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Heavy", {
  Name="Mithral (Heavy Armor)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Shield", {
  Name="Mithral (Shield)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Weapon / Item", {
  Name="Mithral (Item)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Darkwood", {
  Name="Darkwood",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Dragonhide", {
  Name="Dragonhide",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Cold Iron", {
  Name="Cold Iron",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Alchemical Silver", {
  Name="Alchemical Silver",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Ammunition", {
  Name="ADAMANT_AMMO",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Light", {
  Name="ADAMANT_ARMR_LT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Medium", {
  Name="ADAMANT_ARMR_MED",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Armor / Heavy", {
  Name="ADAMANT_ARMR_HVY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Adamantine ~ Weapon", {
  Name="ADAMANT_WEAP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Light", {
  Name="MITHRAL_ARMR_LT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Medium", {
  Name="MITHRAL_ARMR_MED",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Armor / Heavy", {
  Name="MITHRAL_ARMR_HVY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Shield", {
  Name="MITHRAL_SHLD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Mithril ~ Weapon / Item", {
  Name="MITHRAL_ITEM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Darkwood", {
  Name="DARK",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Dragonhide", {
  Name="DRACO",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Cold Iron", {
  Name="C_IRON",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Material ~ Alchemical Silver", {
  Name="ALCHM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 3 Maximum", {
  Name="CHARGED_ITEM_3",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 4 Maximum", {
  Name="CHARGED_ITEM_4",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 5 Maximum", {
  Name="CHARGED_ITEM_5",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 6 Maximum", {
  Name="CHARGED_ITEM_6",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 7 Maximum", {
  Name="CHARGED_ITEM_7",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 8 Maximum", {
  Name="CHARGED_ITEM_8",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 9 Maximum", {
  Name="CHARGED_ITEM_9",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 10 Maximum", {
  Name="CHARGED_ITEM_10",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 12 Maximum", {
  Name="CHARGED_ITEM_12",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 20 Maximum", {
  Name="CHARGED_ITEM_20",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 34 Maximum", {
  Name="CHARGED_ITEM_34",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 36 Maximum", {
  Name="CHARGED_ITEM_36",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 50 Maximum", {
  Name="CHARGED_ITEM_50",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Charged Item / 101 Maximum", {
  Name="CHARGED_ITEM_101",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Staff Charges", {
  Name="CHARGED_STAFF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 1", {
  Name="USES_PER_DAY_1",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 2", {
  Name="USES_PER_DAY_2",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 3", {
  Name="USES_PER_DAY_3",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Uses per Day / 10", {
  Name="USES_PER_DAY_10",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_1",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_2",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_3",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_4",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_5",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +6 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_6",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +7 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_7",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +8 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_8",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +9 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_9",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +10 ~ Enhancement Cost", {
  Name="MAGIC_ENHANCE_10",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Enhancement Cost", {
  Name="MAGIC_COST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Single Use", {
  Name="SPL_1USE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Spell Trigger", {
  Name="SPL_CHRG",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Command Word", {
  Name="SPL_CMD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Use Activated", {
  Name="SPL_ACT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Ability / Enhancement", {
  Name="BNS_ENHC_AB",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Enhancement", {
  Name="BNS_ENHC_AC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Spell", {
  Name="BNS_SPELL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Deflection", {
  Name="BNS_AC_DEFL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Luck", {
  Name="BNS_AC_LUCK",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Insight", {
  Name="BNS_AC_INSI",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Sacred", {
  Name="BNS_AC_SCRD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Profane", {
  Name="BNS_AC_PROF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Other", {
  Name="BNS_AC_OTHE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus AC / Natural Armor", {
  Name="BNS_ENHC_NAT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Resistance", {
  Name="BNS_SAV_RES",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Luck", {
  Name="BNS_SAV_LUC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Insight", {
  Name="BNS_SAV_INS",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Sacred", {
  Name="BNS_SAV_SAC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Profane", {
  Name="BNS_SAV_PRO",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Save / Other", {
  Name="BNS_SAV_OTH",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Skill / Competence", {
  Name="BNS_SKL_CMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Spell Resistance", {
  Name="BNS_SPL_RST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Skill / Maximize Knowledge", {
  Name="MAX_KNW",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bonus Skill / Maximize Any Skill", {
  Name="MAX_GNL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Hour per Level", {
  Name="SPL_CON_STANDARD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Round per Level", {
  Name="SPL_CON_ROUND",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Minute per Level", {
  Name="SPL_CON_MINUTES",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / 10 Minutes per Level", {
  Name="SPL_CON_HOURS",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Continuous / Day per Level", {
  Name="SPL_CON_DAYS",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Staff / Primary Power", {
  Name="SPL_SPP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Staff / Secondary Power", {
  Name="SPL_SSP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Staff / Lesser Power", {
  Name="SPL_SLP",
  Visible=false,
  AffectsBothHeads=false,
})
DefineEquipmentModifier({
  Name="Divine",
  GrantedItemTypes={
    "Divine",
  },
  Visible=false,
  AffectsBothHeads=false,
  Key="SCROLL_DIVINE",
  Types={
    "Scroll",
  },
  Conditions={
    function (item)
      return not (((item.IsType("Divine")) + (item.IsType("Arcane"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Arcane",
  GrantedItemTypes={
    "Arcane",
  },
  Visible=false,
  AffectsBothHeads=false,
  Key="SCROLL_ARCANE",
  Types={
    "Scroll",
  },
  Conditions={
    function (item)
      return not (((item.IsType("Divine")) + (item.IsType("Arcane"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Minor",
  GrantedItemTypes={
    "Minor",
  },
  Visible=false,
  AffectsBothHeads=false,
  Key="SCROLL_MINOR",
  Types={
    "Scroll",
  },
  Conditions={
    function (item)
      return ((item.IsType("Arcane")) + (item.IsType("Divine"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Minor")) + (item.IsType("Medium")) + (item.IsType("Major"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Medium",
  GrantedItemTypes={
    "Medium",
  },
  Visible=false,
  AffectsBothHeads=false,
  Key="SCROLL_MEDIUM",
  Types={
    "Scroll",
  },
  Conditions={
    function (item)
      return ((item.IsType("Arcane")) + (item.IsType("Divine"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Minor")) + (item.IsType("Medium")) + (item.IsType("Major"))) >= 1)
    end,
  },
})
DefineEquipmentModifier({
  Name="Major",
  GrantedItemTypes={
    "Major",
  },
  Visible=false,
  AffectsBothHeads=false,
  Key="SCROLL_MAJOR",
  Types={
    "Scroll",
  },
  Conditions={
    function (item)
      return ((item.IsType("Arcane")) + (item.IsType("Divine"))) >= 1
    end,
    function (item)
      return not (((item.IsType("Minor")) + (item.IsType("Medium")) + (item.IsType("Major"))) >= 1)
    end,
  },
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Arcane", {
  Name="A_1USEMI",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Arcane", {
  Name="A_1USEME",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Arcane", {
  Name="A_1USEMA",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Divine", {
  Name="D_1USEMI",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Divine", {
  Name="D_1USEME",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Effect / Completion / Scroll / Divine", {
  Name="D_1USEMA",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 1 Step Greater", {
  Name="PLUS1STEP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 2 Steps Greater", {
  Name="PLUS2STEP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 3 Steps Greater", {
  Name="PLUS3STEP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 1 Step Greater / No Penalty", {
  Name="PLUS1STEP_NO_PENALTY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 2 Steps Greater / No Penalty", {
  Name="PLUS2STEP_NO_PENALTY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Quality ~ Wield Size / 3 Steps Greater / No Penalty", {
  Name="PLUS3STEP_NO_PENALTY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Weapon", {
  Name="PLUS1W",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Weapon", {
  Name="PLUS2W",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Weapon", {
  Name="PLUS3W",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Weapon", {
  Name="PLUS4W",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Weapon", {
  Name="PLUS5W",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Ammunition", {
  Name="PLUS1M",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Ammunition", {
  Name="PLUS2M",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Ammunition", {
  Name="PLUS3M",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Ammunition", {
  Name="PLUS4M",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Ammunition", {
  Name="PLUS5M",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Anarchic ~ Weapon", {
  Name="ANARCH",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Axiomatic ~ Weapon", {
  Name="AXIOM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bane ~ Weapon", {
  Name="BANE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Brilliant Energy ~ Weapon", {
  Name="BRILL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Dancing ~ Melee", {
  Name="DANCE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Defending ~ Melee", {
  Name="DEFEND",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Disruption ~ Weapon", {
  Name="DISRPT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Distance ~ Ranged", {
  Name="DISTNC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming ~ Weapon", {
  Name="FLAME",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming Burst ~ Weapon", {
  Name="FLM_BRST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Frost ~ Weapon", {
  Name="FROST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Ghost Touch ~ Weapon", {
  Name="GHOST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Holy ~ Weapon", {
  Name="HOLY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Icy Burst ~ Weapon", {
  Name="ICY_BRST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Keen ~ Weapon", {
  Name="KEEN",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Ki Focus ~ Melee", {
  Name="KI",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Merciful ~ Weapon", {
  Name="MERCY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Mighty Cleaving ~ Melee", {
  Name="CLEAVE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Returning ~ Thrown", {
  Name="RETURN",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Seeking ~ Ranged", {
  Name="SEEK",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shock ~ Weapon", {
  Name="SHOCK",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shocking Burst ~ Weapon", {
  Name="SHK_BRST",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Speed ~ Weapon", {
  Name="SPEED",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Storing ~ Melee", {
  Name="STORE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Thundering ~ Weapon", {
  Name="THUNDER",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Throwing ~ Melee", {
  Name="THROW",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Unholy ~ Weapon", {
  Name="UNHOLY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Vicious ~ Melee", {
  Name="VICIOUS",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Vorpal ~ Melee", {
  Name="VORPAL",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Wounding ~ Weapon", {
  Name="WOUND",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Amulet of Mighty Fists Base", {
  Name="MightyFist_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Amulet of Mighty Fists", {
  Name="PLUS1_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Amulet of Mighty Fists", {
  Name="PLUS2_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Amulet of Mighty Fists", {
  Name="PLUS3_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Amulet of Mighty Fists", {
  Name="PLUS4_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Amulet of Mighty Fists", {
  Name="PLUS5_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Anarchic ~ Amulet of Mighty Fists", {
  Name="ANARCH_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Axiomatic ~ Amulet of Mighty Fists", {
  Name="AXIOM_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bane ~ Amulet of Mighty Fists", {
  Name="BANE_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Brilliant Energy ~ Amulet of Mighty Fists", {
  Name="BRILL_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Defending ~ Amulet of Mighty Fists", {
  Name="DEFEND_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Disruption ~ Amulet of Mighty Fists", {
  Name="DISRPT_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming ~ Amulet of Mighty Fists", {
  Name="FLAME_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Flaming Burst ~ Amulet of Mighty Fists", {
  Name="FLM_BRST_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Frost ~ Amulet of Mighty Fists", {
  Name="FROST_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Ghost Touch ~ Amulet of Mighty Fists", {
  Name="GHOST_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Holy ~ Amulet of Mighty Fists", {
  Name="HOLY_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Icy Burst ~ Amulet of Mighty Fists", {
  Name="ICY_BRST_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Ki Focus ~ Amulet of Mighty Fists", {
  Name="KI_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Merciful ~ Amulet of Mighty Fists", {
  Name="MERCY_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Mighty Cleaving ~ Amulet of Mighty Fists", {
  Name="CLEAVE_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shock ~ Amulet of Mighty Fists", {
  Name="SHOCK_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shocking Burst ~ Amulet of Mighty Fists", {
  Name="SHK_BRST_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Speed ~ Amulet of Mighty Fists", {
  Name="SPEED_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Storing ~ Amulet of Mighty Fists", {
  Name="STORE_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Thundering ~ Amulet of Mighty Fists", {
  Name="THUNDER_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Unholy ~ Amulet of Mighty Fists", {
  Name="UNHOLY_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Vicious ~ Amulet of Mighty Fists", {
  Name="VICIOUS_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Wounding ~ Amulet of Mighty Fists", {
  Name="WOUND_AMF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Armor", {
  Name="PLUS1A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Armor", {
  Name="PLUS2A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Armor", {
  Name="PLUS3A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Armor", {
  Name="PLUS4A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Armor", {
  Name="PLUS5A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +1 ~ Shield", {
  Name="PLUS1S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +2 ~ Shield", {
  Name="PLUS2S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +3 ~ Shield", {
  Name="PLUS3S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +4 ~ Shield", {
  Name="PLUS4S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ +5 ~ Shield", {
  Name="PLUS5S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Animated ~ Shield", {
  Name="ANMATD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Arrow Catching ~ Shield", {
  Name="ARW_CAT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Arrow Deflection ~ Shield", {
  Name="ARW_DEF",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bashing ~ Shield / Heavy", {
  Name="BASH_H",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Bashing ~ Shield / Light", {
  Name="BASH_L",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Blinding ~ Shield", {
  Name="BLIND",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Acid ~ Armor", {
  Name="RST_ACD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Acid / Improved ~ Armor", {
  Name="RST_ACD_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Acid / Greater ~ Armor", {
  Name="RES_ACD_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Cold ~ Armor", {
  Name="RST_CLD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Cold / Improved ~ Armor", {
  Name="RST_CLD_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Cold / Greater ~ Armor", {
  Name="RES_CLD_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Electricity ~ Armor", {
  Name="RST_ELC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Electricity / Improved ~ Armor", {
  Name="RST_ELC_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Electricity / Greater ~ Armor", {
  Name="RES_ELC_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Fire ~ Armor", {
  Name="RST_FIR",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Fire / Improved ~ Armor", {
  Name="RST_FIR_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Fire / Greater ~ Armor", {
  Name="RES_FIR_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Sonic ~ Armor", {
  Name="RST_SNC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Sonic / Improved ~ Armor", {
  Name="RST_SNC_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Energy Resistance / Sonic / Greater ~ Armor", {
  Name="RES_SNC_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Etherealness ~ Armor", {
  Name="ETHERE",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Fortification / Light ~ Armor", {
  Name="FRT_LGHT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Fortification / Moderate ~ Armor", {
  Name="FRT_MOD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Fortification / Heavy ~ Armor", {
  Name="FRT_HVY",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Ghost Touch ~ Armor", {
  Name="GHOST_A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Glamered ~ Armor", {
  Name="GLAM",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Invulnerability ~ Armor", {
  Name="INVULN",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Reflecting ~ Shield", {
  Name="REFLC",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shadow ~ Armor", {
  Name="SHDW",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shadow / Improved ~ Armor", {
  Name="SHDW_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Shadow / Greater ~ Armor", {
  Name="SHDW_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Slick ~ Armor", {
  Name="SLK",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Slick / Improved ~ Armor", {
  Name="SLK_IMP",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Slick / Greater ~ Armor", {
  Name="SLK_GRT",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 13 ~ Armor", {
  Name="SPELL_RES_13",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 15 ~ Armor", {
  Name="SPELL_RES_15",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 17 ~ Armor", {
  Name="SPELL_RES_17",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Spell Resistance / 19 ~ Armor", {
  Name="SPELL_RES_19",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Undead Controlling ~ Armor", {
  Name="UNDEAD",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Wild ~ Armor", {
  Name="WILD_A",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Special Ability ~ Wild ~ Shield", {
  Name="WILD_S",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Base", {
  Name="IntItemBase",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose", {
  Name="IntItemPurpose",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 11", {
  Name="IntItemStatINT11",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 12", {
  Name="IntItemStatINT12",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 13", {
  Name="IntItemStatINT13",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 14", {
  Name="IntItemStatINT14",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 15", {
  Name="IntItemStatINT15",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 16", {
  Name="IntItemStatINT16",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 17", {
  Name="IntItemStatINT17",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 18", {
  Name="IntItemStatINT18",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 19", {
  Name="IntItemStatINT19",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Intelligence 20", {
  Name="IntItemStatINT20",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 11", {
  Name="IntItemStatWIS11",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 12", {
  Name="IntItemStatWIS12",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 13", {
  Name="IntItemStatWIS13",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 14", {
  Name="IntItemStatWIS14",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 15", {
  Name="IntItemStatWIS15",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 16", {
  Name="IntItemStatWIS16",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 17", {
  Name="IntItemStatWIS17",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 18", {
  Name="IntItemStatWIS18",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 19", {
  Name="IntItemStatWIS19",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Wisdom 20", {
  Name="IntItemStatWIS20",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 11", {
  Name="IntItemStatCHA11",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 12", {
  Name="IntItemStatCHA12",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 13", {
  Name="IntItemStatCHA13",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 14", {
  Name="IntItemStatCHA14",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 15", {
  Name="IntItemStatCHA15",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 16", {
  Name="IntItemStatCHA16",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 17", {
  Name="IntItemStatCHA17",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 18", {
  Name="IntItemStatCHA18",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 19", {
  Name="IntItemStatCHA19",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Ability Score / Charisma 20", {
  Name="IntItemStatCHA20",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Speech", {
  Name="IntSpeech",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Telepathy", {
  Name="IntTelepathy",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Range 60", {
  Name="IntSense60",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Range 120", {
  Name="IntSense120",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Darkvision", {
  Name="IntDarkvision",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Sense / Blindsense", {
  Name="IntBlindsense",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Read Language", {
  Name="IntReadLang",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Communication / Read Magic", {
  Name="IntReadMagic",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Chaotic Good", {
  Name="Intelligent Item Alignment (CG)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Chaotic Neutral", {
  Name="Intelligent Item Alignment (CN)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Chaotic Evil", {
  Name="Intelligent Item Alignment (CE)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Neutral Evil", {
  Name="Intelligent Item Alignment (NE)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Lawful Evil", {
  Name="Intelligent Item Alignment (LE)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Lawful Good", {
  Name="Intelligent Item Alignment (LG)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Lawful Neutral", {
  Name="Intelligent Item Alignment (LN)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / Neutral Good", {
  Name="Intelligent Item Alignment (NG)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Alignment / True Neutral", {
  Name="Intelligent Item Alignment (TN)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 0 Level Spell / At-Will", {
  Name="ItemPower_CastZeroAtWill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 1st Level Spell / 3 per Day", {
  Name="ItemPower_CastOneThree",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 2nd Level Spell / 1 per Day", {
  Name="ItemPower_CastTwoOne",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 3rd Level Spell / 1 per Day", {
  Name="ItemPower_CastThreeOne",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 3rd Level Spell / 3 per Day", {
  Name="ItemPower_CastThreeThree",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 4th Level Spell / 3 per Day", {
  Name="ItemPower_CastFourThree",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 2nd Level Spell / 3 per Day", {
  Name="ItemPower_CastTwoThree",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / 4th Level Spell / 1 per Day", {
  Name="ItemPower_CastFourOne",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Magic Aura / At-Will", {
  Name="ItemPower_MagicAura",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Skill Ranks / 5", {
  Name="ItemPower_FiveSkill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Movement / Walk 10 Feet", {
  Name="ItemPower_Move",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Skill Ranks / 10", {
  Name="ItemPower_TenSkill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Change Shape", {
  Name="ItemPower_ChangeShape",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Movement / Fly 30 Feet", {
  Name="ItemPower_Fly",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Power / Movement / Teleport / 1 per Day", {
  Name="ItemPower_Teleport",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Alignment", {
  Name="Intelligent Item Purpose (Slay Align)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Arcane Spellcaster", {
  Name="Intelligent Item Purpose (Slay Arcane)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Divine Spellcaster", {
  Name="Intelligent Item Purpose (Slay Divine)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Non-spellcaster", {
  Name="Intelligent Item Purpose (Slay NonCasters)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Creature Type", {
  Name="Intelligent Item Purpose (Slay Creature Type)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Creature Race", {
  Name="Intelligent Item Purpose (Slay Race or Kind)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Defend Creature Race", {
  Name="Intelligent Item Purpose (Defend Race or Kind)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay Servants of Deity", {
  Name="Intelligent Item Purpose (Slay Deity Servant)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Defend Servants of Deity", {
  Name="Intelligent Item Purpose (Defend Deity Servant)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose / Slay All", {
  Name="Intelligent Item Purpose (Slay All)",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / Detect Foe", {
  Name="PurposePower_DetectFoe",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 4th Level Spell / At-Will", {
  Name="PurposePower_CastFourAtWill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / Luck Bonus", {
  Name="PurposePower_LuckBonus",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 5th Level Spell / At-Will", {
  Name="PurposePower_CastFiveAtWill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 6th Level Spell / At-Will", {
  Name="PurposePower_CastSixAtWill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / 7th Level Spell / At-Will", {
  Name="PurposePower_CastSevenAtWill",
  Visible=false,
  AffectsBothHeads=false,
})
CopyEquipmentModifier("Intelligent Item ~ Purpose Power / True Resurrection", {
  Name="PurposePower_TrueRes",
  Visible=false,
  AffectsBothHeads=false,
})
