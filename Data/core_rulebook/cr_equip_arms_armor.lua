-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_equip_arms_armor.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineEquipment({
  Name="Arrow",
  Visible=false,
  Cost=0.05,
  Weight=0.15,
  Key="Arrow (Base)",
  Description={
    Format="An arrow used as a melee weapon is treated as a light improvised weapon (-4 penalty on attack rolls) and deals damage as a dagger of its size (critical multiplier x2). Arrows come in a leather quiver that holds 20 arrows.",
  },
  Types={
    "Ammunition",
    "Resizable",
    "Arrow",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Bolt",
  Visible=false,
  Cost=0.1,
  Weight=0.1,
  Key="Bolt (Base)",
  Description={
    Format="A crossbow bolt used as a melee weapon is treated as a light improvised weapon (-4 penalty on attack rolls) and deals damage as a dagger of its size (crit x2). Bolts come in a case or quiver that holds 10 bolts (or 5, for a repeating crossbow).",
  },
  Types={
    "Ammunition",
    "Resizable",
    "Bolt",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Repeating Bolt",
  Visible=false,
  Cost=0.2,
  Weight=0.2,
  Key="Repeating Bolt (Base)",
  Description={
    Format="A crossbow bolt used as a melee weapon is treated as a light improvised weapon (-4 penalty on attack rolls) and deals damage as a dagger of its size (crit x2). Bolts come in a case or quiver that holds 10 bolts (or 5, for a repeating crossbow).",
  },
  Types={
    "Ammunition",
    "Resizable",
    "Bolt",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Bullet",
  Visible=false,
  Cost=0.01,
  Weight=0.5,
  Key="Sling Bullet (Base)",
  Description={
    Format="Bullets are shaped metal balls, designed to be used by a sling or halfling sling staff. Bullets come in a leather pouch that holds 10 bullets.",
  },
  Types={
    "Ammunition",
    "Resizable",
    "Bullet",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Blowgun Dart",
  Visible=false,
  Cost=0.05,
  Weight=0,
  Key="Blowgun Dart (Base)",
  Types={
    "Ammunition",
    "Resizable",
    "Dart",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow",
  Visible=true,
  Cost=0,
  BaseItem="Arrow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Arrow",
  SortKey="Arrow",
})
CopyEquipment("Bolt (Base)", {
  Name="Bolt, Crossbow",
  Visible=true,
  Cost=0,
  BaseItem="Bolt (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Bolt (Crossbow)",
  DisplayName="Bolt",
  SortKey="Bolt, Crossbow",
})
CopyEquipment("Repeating Bolt (Base)", {
  Name="Bolt, Repeating Crossbow",
  Visible=true,
  Cost=0,
  BaseItem="Repeating Bolt (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Bolt (Crossbow/Repeating)",
  DisplayName="Repeating Bolt",
  SortKey="Bolt, Repeating Crossbow",
})
CopyEquipment("Sling Bullet (Base)", {
  Name="Bullet, Sling",
  Visible=true,
  Cost=0,
  BaseItem="Sling Bullet (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Bullet (Sling)",
  DisplayName="Bullet",
  SortKey="Bullet, Sling",
})
CopyEquipment("Blowgun Dart (Base)", {
  Name="Dart, Blowgun",
  Visible=true,
  Cost=0,
  BaseItem="Blowgun Dart (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Dart (Blowgun)",
  DisplayName="Blowgun Dart",
  SortKey="Dart, Blowgun",
})
CopyEquipment("Arrow (Base)", {
  Name="Arrows (20)",
  Visible=true,
  Cost=1,
  BaseItem="Arrow (Base)",
  BaseQuantity=20,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Weight=3,
  Key="Arrows (20)",
  Types={
    "Stack",
  },
  DisplayName="20 Arrows",
  SortKey="Arrow (20)",
})
CopyEquipment("Bolt (Base)", {
  Name="Bolts, Crossbow (10)",
  Visible=true,
  Cost=1,
  BaseItem="Bolt (Base)",
  BaseQuantity=10,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Weight=1,
  Key="Bolts (Crossbow/10)",
  Types={
    "Stack",
  },
  DisplayName="10 Bolts",
  SortKey="Bolt, Crossbow (10)",
})
CopyEquipment("Repeating Bolt (Base)", {
  Name="Bolts, Repeating Crossbow (5)",
  Visible=true,
  Cost=1,
  BaseItem="Repeating Bolt (Base)",
  BaseQuantity=5,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Weight=1,
  Key="Bolts (Crossbow/Repeating/5)",
  Types={
    "Stack",
  },
  DisplayName="5 Repeating Bolts",
  SortKey="Bolt, Repeating Crossbow (5)",
})
CopyEquipment("Sling Bullet (Base)", {
  Name="Bullets, Sling (10)",
  Visible=true,
  Cost=0.1,
  BaseItem="Sling Bullet (Base)",
  BaseQuantity=10,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Weight=5,
  Key="Bullets (Sling/10)",
  Types={
    "Stack",
  },
  DisplayName="10 Bullets",
  SortKey="Bullet, Sling (10)",
})
CopyEquipment("Blowgun Dart (Base)", {
  Name="Darts, Blowgun (10)",
  Visible=true,
  Cost=0.5,
  BaseItem="Blowgun Dart (Base)",
  BaseQuantity=10,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Weight=0,
  Key="Darts (Blowgun/10)",
  Types={
    "Stack",
  },
  DisplayName="10 Blowgun Darts",
  SortKey="Dart, Blowgun (10)",
})
CopyEquipment("Bolt (Base)", {
  Name="Bolt, Screaming",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +2 ~ Ammunition",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("101"),
      },
    },
  },
  CanHaveMods=false,
  Qualities={
    Aura="faint enchantment",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="137 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, doom",
  },
  Weight=0.1,
  Key="Bolt (Screaming)",
  Description={
    Format="These +2 bolts scream when fired, forcing all enemies of the wielder within 20 feet of the path of the bolt to succeed on a DC 14 Will save or become shaken. This is a mind-affecting fear effect.",
  },
  DisplayName="Screaming Bolt",
  SortKey="Bolt, Screaming",
  SourcePage="p.475",
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow, Slaying",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +1 ~ Ammunition",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("2236"),
      },
    },
  },
  CanHaveMods=false,
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="1,144 gp 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, finger of death",
  },
  Weight=0.1,
  Key="Arrow (Slaying)",
  Description={
    Format="This +1 arrow is keyed to a particular type or subtype of creature. If it strikes such a creature, the target must make a DC 20 Fortitude save or take 50 points of damage. Note that even creatures normally exempt from Fortitude saves (undead and constructs) are subject to this attack. When keyed to a living creature, this is a death effect (and thus death ward protects a target).",
  },
  DisplayName="Slaying Arrow",
  SortKey="Arrow, Slaying",
  SourcePage="p.476",
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow, Greater Slaying",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +1 ~ Ammunition",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("4011"),
      },
    },
  },
  CanHaveMods=false,
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="2,032 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, heightened finger of death",
  },
  Weight=0.1,
  Key="Arrow (Slaying/Greater)",
  Description={
    Format="This +1 arrow is keyed to a particular type or subtype of creature. If it strikes such a creature, the target must make a DC 23 Fortitude save or take 100 points of damage. Note that even creatures normally exempt from Fortitude saves (undead and constructs) are subject to this attack. When keyed to a living creature, this is a death effect (and thus death ward protects a target).",
  },
  DisplayName="Greater Slaying Arrow",
  SortKey="Arrow, Slaying (Greater)",
  SourcePage="p.476",
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow, Sleep",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +1 ~ Ammunition",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("86"),
      },
    },
  },
  CanHaveMods=false,
  Qualities={
    Aura="faint enchantment",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="70 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, sleep",
  },
  Weight=0.1,
  Key="Arrow (Sleep)",
  Description={
    Format="This +1 arrow is painted white and has white fletching. If it strikes a foe so that it would normally deal damage, it instead bursts into magical energy that deals nonlethal damage (in the same amount as would lethal damage) and forces the target to make a DC 11 Will save or fall asleep.",
  },
  DisplayName="Sleep Arrow",
  SortKey="Arrow, Sleep",
  SourcePage="p.476",
})
DefineEquipment({
  Name="Padded Armor",
  Visible=false,
  Cost=5,
  Weight=10,
  ArmorCheckPenalty=0,
  MaxDex=8,
  Proficiency="ARMOR|Padded",
  ArcaneSpellFailureChance=5,
  Key="Padded Armor (Base)",
  Description={
    Format="Little more than heavy, quilted cloth, this armor provides only the most basic protection.",
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
    "Nonmetal",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Armor",
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
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("0"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Leather Armor",
  Visible=false,
  Cost=10,
  Weight=15,
  ArmorCheckPenalty=0,
  MaxDex=6,
  Proficiency="ARMOR|Leather",
  ArcaneSpellFailureChance=10,
  Key="Leather Armor (Base)",
  Description={
    Format="Leather armor is made up of pieces of hard boiled leather carefully sewn together.",
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
    "Nonmetal",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("2"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-1"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("0"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Studded Leather Armor",
  Visible=false,
  Cost=25,
  Weight=20,
  ArmorCheckPenalty=-1,
  MaxDex=5,
  Proficiency="ARMOR|Studded Leather",
  ArcaneSpellFailureChance=15,
  Key="Studded Leather (Base)",
  Description={
    Format="Similar to leather armor, this suit is reinforced with small metal studs.",
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("3"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-1"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("1"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-1"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.153",
})
DefineEquipment({
  Name="Chain Shirt",
  Visible=false,
  Cost=100,
  Weight=25,
  ArmorCheckPenalty=-2,
  MaxDex=4,
  Proficiency="ARMOR|Chain Shirt",
  ArcaneSpellFailureChance=20,
  Key="Chain Shirt (Base)",
  Description={
    Format="Covering the torso, this shirt is made up of thousands of interlocking metal rings.",
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("4"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-2"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("2"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-2"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.150",
})
DefineEquipment({
  Name="Hide Armor",
  Visible=false,
  Cost=15,
  Weight=25,
  ArmorCheckPenalty=-3,
  MaxDex=4,
  Proficiency="ARMOR|Hide",
  ArcaneSpellFailureChance=20,
  Key="Hide Armor (Base)",
  Description={
    Format="Hide armor is made up of the tanned and preserved skin of any thick-hided beast.",
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
    "Nonmetal",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("4"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-2"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("3"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-3"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Scale Mail",
  Visible=false,
  Cost=50,
  Weight=30,
  ArmorCheckPenalty=-4,
  MaxDex=3,
  Proficiency="ARMOR|Scale Mail",
  ArcaneSpellFailureChance=25,
  Key="Scale Mail (Base)",
  Description={
    Format="Scale mail is made up of dozens of small overlapping metal plates. The suit includes gauntlets.",
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("5"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-2"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("4"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-4"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Chainmail",
  Visible=false,
  Cost=150,
  Weight=40,
  ArmorCheckPenalty=-5,
  MaxDex=2,
  Proficiency="ARMOR|Chainmail",
  ArcaneSpellFailureChance=30,
  Key="Chainmail (Base)",
  Description={
    Format="Unlike a chain shirt, chainmail covers the legs and arms of the wearer. The suit includes gauntlets.",
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("6"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-3"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("5"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-5"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.150",
})
DefineEquipment({
  Name="Breastplate",
  Visible=false,
  Cost=200,
  Weight=30,
  ArmorCheckPenalty=-4,
  MaxDex=3,
  Proficiency="ARMOR|Breastplate",
  ArcaneSpellFailureChance=25,
  Key="Breastplate (Base)",
  Description={
    Format="Covering only the torso, a breastplate is made up of a single piece of sculpted metal.",
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("6"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-3"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("4"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-4"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.150",
})
DefineEquipment({
  Name="Splint Mail",
  Visible=false,
  Cost=200,
  Weight=45,
  ArmorCheckPenalty=-7,
  MaxDex=0,
  Proficiency="ARMOR|Splint Mail",
  ArcaneSpellFailureChance=40,
  Key="Splint Mail (Base)",
  Description={
    Format="Splint mail is made up of metal strips, like banded mail. The suit includes gauntlets.",
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("7"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-3"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("7"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-7"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.153",
})
DefineEquipment({
  Name="Banded Mail",
  Visible=false,
  Cost=250,
  Weight=35,
  ArmorCheckPenalty=-6,
  MaxDex=1,
  Proficiency="ARMOR|Banded Mail",
  ArcaneSpellFailureChance=35,
  Key="Banded Mail (Base)",
  Description={
    Format="Banded mail is made up of overlapping strips of metal, fastened to a leather backing. The suit includes gauntlets.",
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("7"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-3"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("6"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-6"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.150",
})
DefineEquipment({
  Name="Half-Plate",
  Visible=false,
  Cost=600,
  Weight=50,
  ArmorCheckPenalty=-7,
  MaxDex=0,
  Proficiency="ARMOR|Half-Plate",
  ArcaneSpellFailureChance=40,
  Key="Half-Plate (Base)",
  Description={
    Format="Combining elements of full plate and chainmail, half-plate includes gauntlets and a helm.",
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("8"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-4"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("7"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-7"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Full Plate",
  Visible=false,
  Cost=1500,
  Weight=50,
  ArmorCheckPenalty=-6,
  MaxDex=1,
  Proficiency="ARMOR|Full Plate",
  ArcaneSpellFailureChance=35,
  Key="Full Plate (Base)",
  Description={
    Format="This metal suit includes gauntlets, heavy leather boots, a visored helmet, and a thick layer of padding that is worn underneath the armor. Each suit of full plate must be individually fitted to its owner by a master armorsmith, although a captured suit can be resized to fit a new owner at a cost of 200 to 800 (2d4 x 100) gold pieces.",
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("9"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-4"),
      Type={
        Name="Armor",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("6"),
      Type={
        Name="BaseArmor",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-6"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Armor"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.150",
})
CopyEquipment("Padded Armor (Base)", {
  Name="Padded Armor",
  Visible=true,
  Cost=0,
  BaseItem="Padded Armor (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Cloth",
    },
  },
  Key="Padded",
  SortKey="Padded Armor",
})
CopyEquipment("Leather Armor (Base)", {
  Name="Leather Armor",
  Visible=true,
  Cost=0,
  BaseItem="Leather Armor (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Leather",
  SortKey="Leather Armor",
})
CopyEquipment("Studded Leather (Base)", {
  Name="Studded Leather Armor",
  Visible=true,
  Cost=0,
  BaseItem="Studded Leather (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
    {
      Key="Material ~ Steel",
    },
  },
  Key="Studded Leather",
  SortKey="Studded Leather Armor",
})
CopyEquipment("Chain Shirt (Base)", {
  Name="Chain Shirt",
  Visible=true,
  Cost=0,
  BaseItem="Chain Shirt (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Chain Shirt",
  SortKey="Chain Shirt",
})
CopyEquipment("Hide Armor (Base)", {
  Name="Hide Armor",
  Visible=true,
  Cost=0,
  BaseItem="Hide Armor (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Hide",
  SortKey="Hide Armor",
})
CopyEquipment("Scale Mail (Base)", {
  Name="Scale Mail",
  Visible=true,
  Cost=0,
  BaseItem="Scale Mail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Scale Mail",
  SortKey="Scale Mail",
})
CopyEquipment("Chainmail (Base)", {
  Name="Chainmail",
  Visible=true,
  Cost=0,
  BaseItem="Chainmail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Chainmail",
  SortKey="Chainmail",
})
CopyEquipment("Breastplate (Base)", {
  Name="Breastplate",
  Visible=true,
  Cost=0,
  BaseItem="Breastplate (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Breastplate",
  SortKey="Breastplate",
})
CopyEquipment("Splint Mail (Base)", {
  Name="Splint Mail",
  Visible=true,
  Cost=0,
  BaseItem="Splint Mail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Splint Mail",
  SortKey="Splint Mail",
})
CopyEquipment("Banded Mail (Base)", {
  Name="Banded Mail",
  Visible=true,
  Cost=0,
  BaseItem="Banded Mail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Banded Mail",
  SortKey="Banded Mail",
})
CopyEquipment("Half-Plate (Base)", {
  Name="Half-Plate",
  Visible=true,
  Cost=0,
  BaseItem="Half-Plate (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Half-Plate",
  SortKey="Half-Plate",
})
CopyEquipment("Full Plate (Base)", {
  Name="Full Plate",
  Visible=true,
  Cost=0,
  BaseItem="Full Plate (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Full Plate",
  SortKey="Full Plate",
})
CopyEquipment("Breastplate (Base)", {
  Name="Adamantine Breastplate",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Armor / Medium",
    },
  },
  Key="Adamantine Breastplate",
  Description={
    Format="This nonmagical breastplate is made of adamantine, giving its wearer damage reduction of 2/--.",
  },
  SortKey="Adamantine Breastplate",
  SourcePage="p.464",
})
CopyEquipment("Banded Mail (Base)", {
  Name="Banded Mail of Luck",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +3 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("9500"),
      },
    },
  },
  Qualities={
    Aura="strong enchantment",
    ['Caster Level']="12th",
    Slot="armor",
    ['Construction Cost']="9,650 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, bless",
  },
  Key="Banded Mail of Luck",
  Description={
    Format="Ten 100-gp gems adorn this +3 banded mail. Once per week, the armor allows its wearer to require that an attack roll made against him be rerolled. He must take whatever consequences come from the second roll. The wearer's player must decide whether to have the attack roll rerolled before damage is rolled.",
  },
  SortKey="Banded Mail of Luck",
  SourcePage="p.465",
})
CopyEquipment("Breastplate (Base)", {
  Name="Breastplate of Command",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("21050"),
      },
    },
  },
  Qualities={
    Aura="strong enchantment",
    ['Caster Level']="15th",
    Slot="armor",
    ['Construction Cost']="12,875 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, mass charm monster",
  },
  Key="Breastplate of Command",
  Description={
    Format="This +2 breastplate bestows a commanding aura upon its wearer. The wearer gains a +2 competence bonus on all Charisma checks, including Charisma-based skill checks. The wearer also gains a +2 competence bonus to his Leadership score. Friendly troops within 360 feet of the user become braver than normal, gaining a +2 resistance bonus on saving throws against fear. Since the effect arises in great part from the distinctiveness of the armor, it does not function if the wearer hides or conceals herself in any way.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "TYPE=Charisma",
      },
      Formula=Formula("2"),
      Type={
        Name="Competence",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "LeadershipScore",
      },
      Formula=Formula("2"),
      Type={
        Name="Competence",
        Replace=false,
        Stack=false,
      },
    },
  },
  SortKey="Breastplate of Command",
  SourcePage="p.465",
})
CopyEquipment("Chainmail (Base)", {
  Name="Celestial Armor",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +3 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("13100"),
      },
    },
  },
  Qualities={
    Aura="faint transmutation [good]",
    ['Caster Level']="5th",
    Slot="armor",
    ['Construction Cost']="11,350 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, fly, creator must be good",
  },
  MaxDex=8,
  ArcaneSpellFailureChance=15,
  Key="Celestial Armor",
  Description={
    Format="This bright silver or gold +3 chainmail is so fine and light that it can be worn under normal clothing without betraying its presence. It has a maximum Dexterity bonus of +8, an armor check penalty of -2, and an arcane spell failure chance of 15%%. It is considered light armor and allows the wearer to use fly on command (as the spell) once per day.",
  },
  Types={
    "",
    "CLEAR",
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("2"),
    },
  },
  SortKey="Celestial Armor",
  SourcePage="p.465",
  SpellLikeAbilities={
    {
      Name="Fly",
      SpellBookName="Magic Item",
      Times="1",
      TimeUnit="Day",
      DC="14",
      CasterLevel="5",
    },
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Demon Armor",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +4 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("34610"),
      },
    },
  },
  Qualities={
    Aura="strong necromancy [evil]",
    ['Caster Level']="13th",
    Slot="armor",
    ['Construction Cost']="26,955 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, contagion",
  },
  Key="Demon Armor",
  Description={
    Format="This plate armor is fashioned to make the wearer appear to be a demon. The helmet is shaped to look like a horned demon head, and its wearer looks out of the open, tooth-filled mouth. This +4 full plate allows the wearer to make claw attacks that deal 1d10 points of damage, strike as +1 weapons, and afflict the target as if she had been struck by a contagion spell (Fortitude DC 14 negates). Use of contagion requires a normal melee attack with the claws. The \"claws\" are built into the armor's vambraces and gauntlets, and cannot be disarmed.&nl;A suit of demon armor is infused with evil, and as a result it bestows one negative level on any nonevil creature wearing it. This negative level persists as long as the armor is worn and disappears when the armor is removed. The negative level cannot be overcome in any way (including restoration spells) while the armor is worn.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return not (character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE")
        end,
      },
    },
  },
  SortKey="Demon Armor",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
    },
  },
  SourcePage="p.465",
})
CopyEquipment("Full Plate (Base)", {
  Name="Dwarven Plate",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Armor / Heavy",
    },
  },
  Key="Dwarven Plate",
  Description={
    Format="This full plate is made of adamantine, giving its wearer damage reduction of 3/--.",
  },
  SortKey="Dwarven Plate",
  SourcePage="p.466",
})
CopyEquipment("Full Plate (Base)", {
  Name="Dragonhide Plate",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Dragonhide",
    },
  },
  Key="Dragonhide Plate",
  Description={
    Format="This suit of full plate is made of dragonhide, rather than metal, so druids can wear it. It is otherwise identical to masterwork full plate.",
  },
  SortKey="Dragonhide Plate",
  SourcePage="p.466",
})
CopyEquipment("Chainmail (Base)", {
  Name="Elven Chain",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Mithril ~ Armor / Medium",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("1000"),
      },
    },
  },
  Key="Elven Chain",
  Description={
    Format="This extremely light chainmail is made of very fine mithral links. This armor is treated, in all ways, like light armor, including when determining proficiency. The armor has an arcane spell failure chance of 20%%, a maximum Dexterity bonus of +4, and an armor check penalty of -2.",
  },
  Types={
    "",
    "CLEAR",
    "Armor",
    "Medium",
    "ArmorProfLight",
    "Suit",
  },
  SortKey="Elven Chain",
  SourcePage="p.466",
})
CopyEquipment("Full Plate (Base)", {
  Name="Mithral Full Plate of Speed",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Mithril ~ Armor / Heavy",
    },
    {
      Key="Special Ability ~ +1 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("15000"),
      },
    },
  },
  Qualities={
    Aura="faint transmutation",
    ['Caster Level']="5th",
    Slot="armor",
    ['Construction Cost']="18,500 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, haste",
  },
  Key="Mithral Full Plate of Speed",
  Description={
    Format="As a free action, the wearer of this fine set of +1 mithral full plate can activate it, enabling him to act as though affected by a haste spell for up to 10 rounds each day. The duration of the haste effect need not be consecutive rounds.&nl;The armor has an arcane spell failure chance of 25%%, a maximum Dexterity bonus of +3, and an armor check penalty of -3. It is considered medium armor, except that you must be proficient in heavy armor to avoid taking nonproficiency penalties.",
  },
  SortKey="Mithral Full Plate of Speed",
  SourcePage="p.466",
})
CopyEquipment("Chain Shirt (Base)", {
  Name="Mithral Shirt",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Mithril ~ Armor / Light",
    },
  },
  Weight=20,
  Key="Mithral Shirt",
  Description={
    Format="This extremely light chain shirt is made of very fine mithral links. The armor has an arcane spell failure chance of 10%%, a maximum Dexterity bonus of +6, and no armor check penalty. It is considered light armor.",
  },
  SortKey="Mithral Shirt",
  SourcePage="p.466",
})
CopyEquipment("Full Plate (Base)", {
  Name="Plate Armor of the Deep",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("22000"),
      },
    },
  },
  Qualities={
    Aura="moderate abjuration",
    ['Caster Level']="11th",
    Slot="armor",
    ['Construction Cost']="13,150 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, freedom of movement, tongues, water breathing",
  },
  Key="Plate Armor of the Deep",
  Description={
    Format="This +1 full plate is decorated with a wave and fish motif. Although the armor remains as heavy and bulky as normal full plate, the wearer of plate armor of the deep is treated as unarmored for purposes of Swim checks. The wearer can breathe underwater and can converse with any water-breathing creature with a language.",
  },
  Bonuses={
    {
      Category="SKILL",
      Variables={
        "Swim",
      },
      Formula=Formula("5"),
    },
  },
  SortKey="Plate Armor of the Deep",
  SourcePage="p.466",
})
CopyEquipment("Hide Armor (Base)", {
  Name="Rhino Hide",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
    {
      Key="Special Ability ~ +2 ~ Armor",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("1000"),
      },
    },
  },
  Qualities={
    Aura="moderate transmutation",
    ['Caster Level']="9th",
    Slot="armor",
    ['Construction Cost']="2,665 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, bull's strength",
  },
  Key="Rhino Hide",
  Description={
    Format="This +2 hide armor is made from rhinoceros hide. In addition to granting a +2 enhancement bonus to AC, it has a -1 armor check penalty and deals an additional 2d6 points of damage on any successful charge attack made by the wearer, including a mounted charge.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("-1"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("1"),
    },
  },
  SortKey="Rhino Hide",
  SourcePage="p.466",
})
CopyEquipment("Padded Armor (Base)", {
  Name="Padded Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Light)",
  Key="Padded Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Leather Armor (Base)", {
  Name="Leather Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Light)",
  Key="Leather Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Studded Leather (Base)", {
  Name="Studded Leather Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Light)",
  Key="Studded Leather Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Chain Shirt (Base)", {
  Name="Chain Shirt Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Light)",
  Key="Chain Shirt Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Hide Armor (Base)", {
  Name="Hide Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Medium)",
  Key="Hide Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Scale Mail (Base)", {
  Name="Scale Mail Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Medium)",
  Key="Scale Mail Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Chainmail (Base)", {
  Name="Chainmail Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Medium)",
  Key="Chainmail Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Breastplate (Base)", {
  Name="Breastplate Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Medium)",
  Key="Breastplate Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Splint Mail (Base)", {
  Name="Splint Mail Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Heavy)",
  Key="Splint Mail Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Banded Mail (Base)", {
  Name="Banded Mail Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Heavy)",
  Key="Banded Mail Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Half-Plate (Base)", {
  Name="Half-Plate Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Heavy)",
  Key="Half-Plate Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Full Plate (Base)", {
  Name="Full Plate Barding",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Proficiency="ARMOR|Barding (Heavy)",
  Key="Full Plate Barding (Base)",
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Types={
    "Barding",
    "Mount",
  },
  SortKey="zzBase",
  SourcePage="p.162",
})
CopyEquipment("Padded Barding (Base)", {
  Name="Barding, Padded",
  Visible=true,
  Cost=0,
  BaseItem="Padded Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Cloth",
    },
  },
  Key="Barding (Padded)",
  DisplayName="Padded Barding",
  SortKey="Barding, Padded",
})
CopyEquipment("Leather Barding (Base)", {
  Name="Barding, Leather",
  Visible=true,
  Cost=0,
  BaseItem="Leather Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Barding (Leather)",
  DisplayName="Leather Barding",
  SortKey="Barding, Leather",
})
CopyEquipment("Studded Leather Barding (Base)", {
  Name="Barding, Studded Leather",
  Visible=true,
  Cost=0,
  BaseItem="Studded Leather Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
      Parameters={
        Formula("Material ~ Steel"),
      },
    },
  },
  Key="Barding (Studded Leather)",
  DisplayName="Studded Leather Barding",
  SortKey="Barding, Studded Leather",
})
CopyEquipment("Chain Shirt Barding (Base)", {
  Name="Barding, Chain Shirt",
  Visible=true,
  Cost=0,
  BaseItem="Chain Shirt Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Chain Shirt)",
  DisplayName="Chain Shirt Barding",
  SortKey="Barding, Chain Shirt",
})
CopyEquipment("Hide Barding (Base)", {
  Name="Barding, Hide",
  Visible=true,
  Cost=0,
  BaseItem="Hide Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Barding (Hide)",
  DisplayName="Hide Barding",
  SortKey="Barding, Hide",
})
CopyEquipment("Scale Mail Barding (Base)", {
  Name="Barding, Scale Mail",
  Visible=true,
  Cost=0,
  BaseItem="Scale Mail Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Scale Mail)",
  DisplayName="Scale Mail Barding",
  SortKey="Barding, Scale Mail",
})
CopyEquipment("Chainmail Barding (Base)", {
  Name="Barding, Chainmail",
  Visible=true,
  Cost=0,
  BaseItem="Chainmail Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Chainmail)",
  DisplayName="Chainmail Barding",
  SortKey="Barding, Chainmail",
})
CopyEquipment("Breastplate Barding (Base)", {
  Name="Barding, Breastplate",
  Visible=true,
  Cost=0,
  BaseItem="Breastplate Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Breastplate)",
  DisplayName="Breastplate Barding",
  SortKey="Barding, Breastplate",
})
CopyEquipment("Splint Mail Barding (Base)", {
  Name="Barding, Splint Mail",
  Visible=true,
  Cost=0,
  BaseItem="Splint Mail Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Splint Mail)",
  DisplayName="Splint Mail Barding",
  SortKey="Barding, Splint Mail",
})
CopyEquipment("Banded Mail Barding (Base)", {
  Name="Barding, Banded Mail",
  Visible=true,
  Cost=0,
  BaseItem="Banded Mail Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Banded Mail)",
  DisplayName="Banded Mail Barding",
  SortKey="Barding, Banded Mail",
})
CopyEquipment("Half-Plate Barding (Base)", {
  Name="Barding, Half-Plate",
  Visible=true,
  Cost=0,
  BaseItem="Half-Plate Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Half-Plate)",
  DisplayName="Half-Plate Barding",
  SortKey="Barding, Half-Plate",
})
CopyEquipment("Full Plate Barding (Base)", {
  Name="Barding, Full Plate",
  Visible=true,
  Cost=0,
  BaseItem="Full Plate Barding (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Barding (Full Plate)",
  DisplayName="Full Plate Barding",
  SortKey="Barding, Full Plate",
})
DefineEquipment({
  Name="Buckler",
  Visible=false,
  Cost=5,
  UsedSlots=0,
  Weight=5,
  ArmorCheckPenalty=-1,
  Proficiency="SHIELD|Buckler",
  ArcaneSpellFailureChance=5,
  Key="Buckler (Base)",
  Description={
    Format="This small metal shield is worn strapped to your forearm. You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon (whether you are using an offhand weapon or using your off hand to help wield a twohanded weapon), but you take a -1 penalty on attack rolls while doing so. This penalty stacks with those that may apply for fighting with your off hand and for fighting with two weapons. In any case, if you use a weapon in your off hand, you lose the buckler's AC bonus until your next turn. You can cast a spell with somatic components using your shield arm, but you lose the buckler's AC bonus until your next turn. You can't make a shield bash with a buckler.",
  },
  Types={
    "Shield",
    "Buckler",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Shield",
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
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("1"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-1"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="applies a -1 to hit to Two-Handed Weapon, or Off-hand held weapon",
    },
  },
  SortKey="zzBase",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Aspect Combat Bonus ~ Buckler",
      },
    },
  },
  SourcePage="p.150",
})
DefineEquipment({
  Name="Light Wooden Shield",
  Visible=false,
  Cost=3,
  Size="M",
  Weight=5,
  ArmorCheckPenalty=-1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="SHIELD|Shield (Light)",
  ArcaneSpellFailureChance=5,
  WieldCategory="Light",
  Key="Light Wooden Shield (Base)",
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A light shield's weight lets you carry other items in that hand, although you cannot use weapons with it.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to some spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a light shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Types={
    "Shield",
    "Light",
    "Weapon",
    "Resizable",
    "Melee",
    "ShieldBash",
    "Close",
    "Weapon Group Close",
    "Nonmetal",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Shield",
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
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("1"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-1"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("4"),
      Conditions={
        function (character)
          return ((character.IsProficientWithWeapon("Shieldbash"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.152",
})
DefineEquipment({
  Name="Light Steel Shield",
  Visible=false,
  Cost=9,
  Size="M",
  Weight=6,
  ArmorCheckPenalty=-1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="SHIELD|Shield (Light)",
  ArcaneSpellFailureChance=5,
  WieldCategory="Light",
  Key="Light Steel Shield (Base)",
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A light shield's weight lets you carry other items in that hand, although you cannot use weapons with it.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to some spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a light shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Types={
    "Shield",
    "Light",
    "Weapon",
    "Resizable",
    "Melee",
    "ShieldBash",
    "Close",
    "Weapon Group Close",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("1"),
      Type={
        Name="Shield",
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
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("1"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-1"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("4"),
      Conditions={
        function (character)
          return ((character.IsProficientWithWeapon("Shieldbash"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.152",
})
DefineEquipment({
  Name="Heavy Wooden Shield",
  Visible=false,
  Cost=7,
  Size="M",
  Weight=10,
  ArmorCheckPenalty=-2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="SHIELD|Shield (Heavy)",
  ArcaneSpellFailureChance=15,
  WieldCategory="OneHanded",
  Key="Heavy Wooden Shield (Base)",
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A heavy shield is so heavy that you can't use your shield hand for anything else.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a heavy shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Types={
    "Shield",
    "Heavy",
    "Weapon",
    "Resizable",
    "Melee",
    "ShieldBash",
    "Close",
    "Weapon Group Close",
    "Nonmetal",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("2"),
      Type={
        Name="Shield",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-1"),
      Type={
        Name="Shield",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-2"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("4"),
      Conditions={
        function (character)
          return ((character.IsProficientWithWeapon("Shieldbash"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Heavy Steel Shield",
  Visible=false,
  Cost=20,
  Size="M",
  Weight=15,
  ArmorCheckPenalty=-2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="SHIELD|Shield (Heavy)",
  ArcaneSpellFailureChance=15,
  WieldCategory="OneHanded",
  Key="Heavy Steel Shield (Base)",
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A heavy shield is so heavy that you can't use your shield hand for anything else.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a heavy shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Types={
    "Shield",
    "Heavy",
    "Weapon",
    "Resizable",
    "Melee",
    "ShieldBash",
    "Close",
    "Weapon Group Close",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("2"),
      Type={
        Name="Shield",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-1"),
      Type={
        Name="Shield",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("2"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-2"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("4"),
      Conditions={
        function (character)
          return ((character.IsProficientWithWeapon("Shieldbash"))) >= 1
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.151",
})
DefineEquipment({
  Name="Tower Shield",
  Visible=false,
  Cost=30,
  Weight=45,
  ArmorCheckPenalty=-10,
  MaxDex=2,
  Proficiency="SHIELD|Tower Shield",
  ArcaneSpellFailureChance=50,
  Key="Tower Shield (Base)",
  Description={
    Format="This massive wooden shield is nearly as tall as you are. In most situations, it provides the indicated shield bonus to your AC. As a standard action, however, you can use a tower shield to grant you total cover until the beginning of your next turn. When using a tower shield in this way, you must choose one edge of your space. That edge is treated as a solid wall for attacks targeting you only. You gain total cover for attacks that pass through this edge and no cover for attacks that do not pass through this edge. The shield does not, however, provide cover against targeted spells; a spellcaster can cast a spell on you by targeting the shield you are holding. You cannot bash with a tower shield, nor can you use your shield hand for anything else.&nl;When employing a tower shield in combat, you take a -2 penalty on attack rolls because of the shield's encumbrance.",
  },
  Types={
    "Shield",
    "Tower",
    "Nonmetal",
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("4"),
      Type={
        Name="Shield",
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
      Category="COMBAT",
      Variables={
        "AC",
      },
      Formula=Formula("-2"),
      Type={
        Name="Shield",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "TOHIT",
      },
      Formula=Formula("-2"),
      Conditions={
        function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Tower Shield Proficiency")
          end)
        end,
      },
    },
    {
      Category="COMBAT",
      Variables={
        "TOHIT",
      },
      Formula=Formula("SHIELDACCHECK"),
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "FEAT" and (ability.Name == "Tower Shield Proficiency")
          end))
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArmorCheckPenalty",
      },
      Formula=Formula("10"),
    },
    {
      Category="EQMARMOR",
      Variables={
        "ACCHECK",
      },
      Formula=Formula("-10"),
      Conditions={
        function (item)
          return ((item.HasModifier("Special Quality ~ Broken ~ Shield"))) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="a tower shield can instead grant you cover",
    },
  },
  SortKey="zzBase",
  SourcePage="p.153",
})
CopyEquipment("Buckler (Base)", {
  Name="Buckler",
  Visible=true,
  Cost=0,
  BaseItem="Buckler (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Buckler",
  SortKey="Buckler",
})
CopyEquipment("Light Wooden Shield (Base)", {
  Name="Shield, Light Wooden",
  Visible=true,
  Cost=0,
  BaseItem="Light Wooden Shield (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Shield (Light/Wooden)",
  DisplayName="Light Wooden Shield",
  SortKey="Shield, Light Wooden",
})
CopyEquipment("Light Steel Shield (Base)", {
  Name="Shield, Light Steel",
  Visible=true,
  Cost=0,
  BaseItem="Light Steel Shield (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Shield (Light/Steel)",
  DisplayName="Light Steel Shield",
  SortKey="Shield, Light Steel",
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Shield, Heavy Wooden",
  Visible=true,
  Cost=0,
  BaseItem="Heavy Wooden Shield (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Shield (Heavy/Wooden)",
  DisplayName="Heavy Wooden Shield",
  SortKey="Shield, Heavy Wooden",
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Shield, Heavy Steel",
  Visible=true,
  Cost=0,
  BaseItem="Heavy Steel Shield (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Shield (Heavy/Steel)",
  DisplayName="Heavy Steel Shield",
  SortKey="Shield, Heavy Steel",
})
CopyEquipment("Tower Shield (Base)", {
  Name="Shield, Tower",
  Visible=true,
  Cost=0,
  BaseItem="Tower Shield (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Shield (Tower)",
  DisplayName="Tower Shield",
  SortKey="Shield, Tower",
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Absorbing Shield",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Shield",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("49000"),
      },
    },
  },
  Qualities={
    Aura="strong transmutation",
    ['Caster Level']="17th",
    Slot="shield",
    ['Construction Cost']="25,170 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, disintegrate",
  },
  Key="Absorbing Shield",
  Description={
    Format="This +1 heavy steel shield is made of metal, but its color is flat black that seems to absorb light. Once every 2 days, on command, it can disintegrate an object that it touches, as the spell but requiring a melee touch attack. This effect only functions as an attack--it can't be activated to target a creature or weapon as it strikes the shield.",
  },
  SortKey="Absorbing Shield",
  SourcePage="p.466",
})
CopyEquipment("Light Wooden Shield (Base)", {
  Name="Caster's Shield",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +1 ~ Shield",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("2000"),
      },
    },
  },
  Qualities={
    Aura="moderate abjuration",
    ['Caster Level']="6th",
    Slot="shield",
    ['Construction Cost']="1,653 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, Scribe Scroll, creator must be at least 6th level",
  },
  Key="Caster's Shield",
  Description={
    Format="This +1 light wooden shield has a leather strip on the back on which a spellcaster can scribe a single spell as on a scroll. A spell so scribed requires half the normal cost in raw materials. The strip cannot accommodate spells of higher than 3rd level. The strip is reusable.&nl;A random caster's shield has a 50%% chance of having a single medium scroll spell on it. The spell is divine (01-80 on d%%) or arcane (81-100). A caster's shield has a 5%% arcane spell failure chance.",
  },
  SortKey="Caster's Shield",
  SourcePage="p.467",
})
CopyEquipment("Light Wooden Shield (Base)", {
  Name="Darkwood Buckler",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Darkwood",
    },
  },
  Key="Darkwood Buckler",
  Description={
    Format="This nonmagical light wooden shield is made out of darkwood. It has no enhancement bonus, but its construction material makes it lighter than a normal wooden shield. It has no armor check penalty.",
  },
  SortKey="Darkwood Buckler",
  SourcePage="p.467",
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Darkwood Shield",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Darkwood",
    },
  },
  Key="Darkwood Shield",
  Description={
    Format="This nonmagical heavy wooden shield is made out of darkwood. It has no enhancement bonus, but its construction material makes it lighter than a normal wooden shield. It has no armor check penalty.",
  },
  SortKey="Darkwood Shield",
  SourcePage="p.467",
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Lion's Shield",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Shield",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("5000"),
      },
    },
  },
  Qualities={
    Aura="moderate conjuration",
    ['Caster Level']="10th",
    Slot="shield",
    ['Construction Cost']="4,670 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, summon nature's ally IV",
  },
  Key="Lion's Shield",
  Description={
    Format="This +2 heavy steel shield is fashioned to appear to be a roaring lion's head. Three times per day as a free action, the lion's head can be commanded to attack (independently of the shield wearer), biting with the wielder's base attack bonus (including multiple attacks, if the wielder has them) and dealing 2d6 points of damage. This attack is in addition to any actions performed by the wielder.",
  },
  SortKey="Lion's Shield",
  SourcePage="p.467",
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Mithral Heavy Shield",
  Visible=true,
  Cost=20,
  EquipmentModifiers={
    {
      Key="Material ~ Mithril ~ Shield",
    },
  },
  Key="Mithral Heavy Shield",
  Description={
    Format="This heavy shield is made of mithral and thus is much lighter than a standard steel shield. It has a 5%% arcane spell failure chance and no armor check penalty.",
  },
  SortKey="Mithral Heavy Shield",
  SourcePage="p.467",
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Spined Shield",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Shield",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("4410"),
      },
    },
    {
      Key="Special Quality ~ Spikes ~ Shieldbash",
    },
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="6th",
    Slot="shield",
    ['Construction Cost']="2,875 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, magic missile",
  },
  Key="Spined Shield",
  Description={
    Format="This +1 heavy steel shield is covered in spines. It acts as a normal spiked shield. On command up to three times per day, the shield's wearer can fire one of the shield's spines. A fired spine has a +1 enhancement bonus, a range increment of 120 feet, and deals 1d10 points of damage (19-20/x2). Fired spines regenerate each day.",
  },
  SortKey="Spined Shield",
  SourcePage="p.467",
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Winged Shield",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +3 ~ Shield",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("8100"),
      },
    },
  },
  Qualities={
    Aura="faint transmutation",
    ['Caster Level']="5th",
    Slot="shield",
    ['Construction Cost']="8,707 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, fly",
  },
  Key="Winged Shield",
  Description={
    Format="This heavy wooden shield has a +3 enhancement bonus. Arching bird wings are carved into the face of the shield. Once per day, it can be commanded to fly (as the spell), carrying the wielder. The shield can carry up to 133 pounds and move at 60 feet per round, or up to 266 pounds and move at 40 feet per round.",
  },
  SortKey="Winged Shield",
  SourcePage="p.467",
  SpellLikeAbilities={
    {
      Name="Fly",
      SpellBookName="Magic Item",
      Times="1",
      TimeUnit="Day",
      DC="14",
      CasterLevel="5",
    },
  },
})
DefineEquipment({
  Name="Demon Armor Claw Attack",
  Cost=-2300,
  EquipmentModifiers={
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Material ~ Steel",
    },
  },
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Unarmed Strike",
  WieldCategory="Light",
  Key="Demon Armor Claw Attack",
  Types={
    "Weapon",
    "Melee",
    "Simple",
    "Unarmed",
    "Piercing",
    "Slashing",
  },
  SortKey="Demon Armor Claw Attack",
})
DefineEquipment({
  Name="Armor Spikes",
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  UsedSlots=0,
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Spiked Armor",
  WieldCategory="Light",
  Key="Armor Spikes",
  Description={
    Format="You can outfit your armor with spikes, which can deal damage in a grapple or as a separate attack.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Piercing",
    "Unarmed",
    "Accessories",
    "Weapon Group Natural",
  },
  SpecialProperties={
    {
      Format="deals extra piercing damage on a successful grapple attack",
    },
  },
  SortKey="Armor Spikes",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Gauntlet",
  Visible=false,
  Cost=2,
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="WEAPON|Gauntlet",
  WieldCategory="Light",
  Key="Gauntlet (Base)",
  Description={
    Format="This metal glove lets you deal lethal damage rather than nonlethal damage with unarmed strikes. A strike with a gauntlet is otherwise considered an unarmed attack. The cost and weight given are for a single gauntlet. Medium and heavy armors (except breastplate) come with gauntlets. Your opponent cannot use a disarm action to disarm you of gauntlets.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "Light",
    "Unarmed",
    "Finesseable",
    "Bludgeoning",
    "Gauntlet",
    "Close",
    "Weapon Group Close",
    "Weapon Group Natural",
  },
  Bonuses={
    {
      Category="EQM",
      Variables={
        "WEIGHTADD",
      },
      Formula=Formula("-1*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Armor") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Medium") end)) + (character.HasEquipped(function (item) return item.IsType("Heavy") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return not (((character.HasEquipped(function (item) return stringMatch(item.Name, "Breastplate") end))) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 3
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Dagger",
  Visible=false,
  Cost=2,
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Dagger",
  Range=10,
  WieldCategory="Light",
  Key="Dagger (Base)",
  Description={
    Format="A dagger has a blade that is about 1 foot in length. You get a +2 bonus on Sleight of Hand skill checks made to conceal a dagger on your body.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "Light",
    "Finesseable",
    "Ranged",
    "Thrown",
    "Piercing",
    "Slashing",
    "Dagger",
    "BladeLight",
    "Weapon Group Blades Light",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Punching Dagger",
  Visible=false,
  Cost=2,
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Dagger (Punching)",
  WieldCategory="Light",
  Key="Punching Dagger (Base)",
  Description={
    Format="A punching dagger's blade is attached to a horizontal handle that projects out from the fist when held.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "Light",
    "Finesseable",
    "Piercing",
    "Dagger",
    "Close",
    "Weapon Group Close",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Spiked Gauntlet",
  Visible=false,
  Cost=5,
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Gauntlet (Spiked)",
  WieldCategory="Light",
  Key="Spiked Gauntlet (Base)",
  Description={
    Format="The cost and weight given are for a single gauntlet. An attack with a spiked gauntlet is considered an armed attack. Your opponent cannot use a disarm action to disarm you of spiked gauntlets.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "Light",
    "Unarmed",
    "Finesseable",
    "Piercing",
    "Gauntlet",
    "Close",
    "Weapon Group Close",
    "Weapon Group Natural",
  },
  Bonuses={
    {
      Category="EQM",
      Variables={
        "WEIGHTADD",
      },
      Formula=Formula("-1*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
      Conditions={
        function (character)
          local count = 0
          local subCondition
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Armor") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return ((character.HasEquipped(function (item) return item.IsType("Medium") end)) + (character.HasEquipped(function (item) return item.IsType("Heavy") end))) >= 1
          end
          if subCondition(character) then
            count = count + 1
          end
          subCondition = function (character)
            return not (((character.HasEquipped(function (item) return stringMatch(item.Name, "Breastplate") end))) >= 1)
          end
          if subCondition(character) then
            count = count + 1
          end
          return count >= 3
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Light Mace",
  Visible=false,
  Cost=5,
  Size="M",
  Weight=4,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Mace (Light)",
  WieldCategory="Light",
  Key="Light Mace (Base)",
  Description={
    Format="A mace is made up of an ornate metal head attached to a simple wooden or metal shaft.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "Light",
    "Finesseable",
    "Bludgeoning",
    "Mace",
    "Hammer",
    "Weapon Group Hammers",
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Sickle",
  Visible=false,
  Cost=6,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Sickle",
  WieldCategory="Light",
  Key="Sickle (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "Light",
    "Finesseable",
    "Slashing",
    "Sickle",
    "BladeLight",
    "Weapon Group Blades Light",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Club",
  Visible=false,
  Cost=0,
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Club",
  Range=10,
  WieldCategory="OneHanded",
  Key="Club (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "OneHanded",
    "Ranged",
    "Thrown",
    "Bludgeoning",
    "Club",
    "Hammer",
    "Weapon Group Hammers",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Heavy Mace",
  Visible=false,
  Cost=12,
  Size="M",
  Weight=8,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Mace (Heavy)",
  WieldCategory="OneHanded",
  Key="Heavy Mace (Base)",
  Description={
    Format="A heavy mace has a larger head and a longer handle than a normal mace.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "OneHanded",
    "Bludgeoning",
    "Mace",
    "Hammer",
    "Weapon Group Hammers",
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Morningstar",
  Visible=false,
  Cost=8,
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Morningstar",
  WieldCategory="OneHanded",
  Key="Morningstar (Base)",
  Description={
    Format="A morningstar is a spiked metal ball, affixed to the top of a long handle.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "OneHanded",
    "Bludgeoning",
    "Piercing",
    "Mace",
    "Flail",
    "Weapon Group Flails",
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Shortspear",
  Visible=false,
  Cost=1,
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Shortspear",
  Range=20,
  WieldCategory="OneHanded",
  Key="Shortspear (Base)",
  Description={
    Format="A shortspear is about 3 feet in length, making it a suitable thrown weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "OneHanded",
    "Ranged",
    "Thrown",
    "Piercing",
    "Spear",
    "Weapon Group Spears",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Longspear",
  Visible=false,
  Cost=5,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
    {
      Key="Special Quality ~ Reach",
    },
  },
  Size="M",
  Weight=9,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Longspear",
  ReachMultiplier=2,
  WieldCategory="TwoHanded",
  Key="Longspear (Base)",
  Description={
    Format="A longspear is about 8 feet in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "TwoHanded",
    "Piercing",
    "Spear",
    "Weapon Group Spears",
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Quarterstaff",
  Visible=false,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
    {
      Key="Special Quality ~ Monk",
    },
  },
  Size="M",
  Weight=4,
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
    Types={
      "Weapon",
      "Resizable",
      "Melee",
      "Bludgeoning",
    },
    EquipmentModifiers={
      {
        Key="Special Quality ~ Double",
      },
      {
        Key="Special Quality ~ Monk",
      },
    },
  },
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Quarterstaff",
  WieldCategory="TwoHanded",
  Key="Quarterstaff (Base)",
  Description={
    Format="A quarterstaff is a simple piece of wood, about 5 feet in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "OneHanded",
    "Double",
    "Bludgeoning",
    "Quarterstaff",
    "Polearm",
    "Weapon Group Double",
    "Weapon Group Monk",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Spear",
  Visible=false,
  Cost=2,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
  },
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Spear",
  Range=20,
  WieldCategory="TwoHanded",
  Key="Spear (Base)",
  Description={
    Format="A spear is 5 feet in length and can be thrown.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Simple",
    "TwoHanded",
    "Ranged",
    "Thrown",
    "Piercing",
    "Spear",
    "Weapon Group Spears",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Throwing Axe",
  Visible=false,
  Cost=8,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Axe (Throwing)",
  Range=10,
  WieldCategory="Light",
  Key="Throwing Axe (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Ranged",
    "Thrown",
    "Slashing",
    "Axe",
    "Weapon Group Axes",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Light Hammer",
  Visible=false,
  Cost=1,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Hammer (Light)",
  Range=20,
  WieldCategory="Light",
  Key="Light Hammer (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Ranged",
    "Thrown",
    "Bludgeoning",
    "Hammer",
    "Weapon Group Hammers",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Handaxe",
  Visible=false,
  Cost=6,
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Handaxe",
  WieldCategory="Light",
  Key="Handaxe (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Slashing",
    "Axe",
    "Weapon Group Axes",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Kukri",
  Visible=false,
  Cost=8,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="3",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Kukri",
  WieldCategory="Light",
  Key="Kukri (Base)",
  Description={
    Format="A kukri is a curved blade, about 1 foot in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Slashing",
    "BladeLight",
    "Weapon Group Blades Light",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Light Pick",
  Visible=false,
  Cost=4,
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x4",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Pick (Light)",
  WieldCategory="Light",
  Key="Light Pick (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Piercing",
    "MeleePiercing",
    "Pick",
    "Axe",
    "Weapon Group Axes",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Sap",
  Visible=false,
  Cost=1,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonlethal",
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Sap",
  WieldCategory="Light",
  Key="Sap (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Bludgeoning",
    "Sap",
    "Close",
    "Weapon Group Close",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Spiked Armor",
  Visible=false,
  Cost=0,
  Size="M",
  UsedSlots=0,
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Spiked Armor",
  WieldCategory="Light",
  Key="Spiked Armor (Base)",
  Description={
    Format="You can outfit your armor with spikes, which can deal damage in a grapple or as a separate attack.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Accessories",
    "Piercing",
    "Spiked",
    "Close",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Starknife",
  Visible=false,
  Cost=24,
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Starknife",
  Range=20,
  WieldCategory="Light",
  Key="Starknife (Base)",
  Description={
    Format="From a central metal ring, four tapering metal blades extend like points on a compass rose. A wielder can stab with the starknife or throw it.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Ranged",
    "Thrown",
    "Piercing",
    "BladeLight",
    "Weapon Group Blades Light",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
DefineEquipment({
  Name="Short Sword",
  Visible=false,
  Cost=10,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Sword (Short)",
  WieldCategory="Light",
  Key="Short Sword (Base)",
  Description={
    Format="This sword is about 2 feet in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Piercing",
    "Sword",
    "BladeLight",
    "Weapon Group Blades Light",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Battleaxe",
  Visible=false,
  Cost=10,
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Battleaxe",
  WieldCategory="OneHanded",
  Key="Battleaxe (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Slashing",
    "Axe",
    "Weapon Group Axes",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Light Flail",
  Visible=false,
  Cost=8,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=5,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Flail",
  WieldCategory="OneHanded",
  Key="Light Flail (Base)",
  Description={
    Format="A flail consists of a spiked metal ball, connected to a handle by a sturdy chain.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Bludgeoning",
    "Flail",
    "Weapon Group Flails",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Longsword",
  Visible=false,
  Cost=15,
  Size="M",
  Weight=4,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Longsword",
  WieldCategory="OneHanded",
  Key="Longsword (Base)",
  Description={
    Format="This sword is about 3-1/2 feet in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Heavy Pick",
  Visible=false,
  Cost=8,
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x4",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Pick (Heavy)",
  WieldCategory="OneHanded",
  Key="Heavy Pick (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Piercing",
    "Pick",
    "Axe",
    "Weapon Group Axes",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Rapier",
  Visible=false,
  Cost=20,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="3",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Rapier",
  WieldCategory="OneHanded",
  Key="Rapier (Base)",
  Description={
    Format="You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a rapier sized for you, even though it isn't a light weapon. You can't wield a rapier in two hands in order to apply 1-1/2 times your Strength bonus to damage.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Finesseable",
    "Piercing",
    "MeleePiercing",
    "Sword",
    "BladeLight",
    "Weapon Group Blades Light",
    "Weapon Group Melee OneHanded Piercing",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGEMULT:2",
      },
      Formula=Formula("-0.5"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Scimitar",
  Visible=false,
  Cost=15,
  Size="M",
  Weight=4,
  Attack={
    CritMultiplier="x2",
    CritRange="3",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Scimitar",
  WieldCategory="OneHanded",
  Key="Scimitar (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Trident",
  Visible=false,
  Cost=15,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
  },
  Size="M",
  Weight=4,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Trident",
  Range=10,
  WieldCategory="OneHanded",
  Key="Trident (Base)",
  Description={
    Format="A trident has three metal prongs at end of a 4-foot-long shaft. This weapon can be thrown.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Ranged",
    "Thrown",
    "Piercing",
    "Trident",
    "Spear",
    "Weapon Group Spears",
    "Weapon Group Melee OneHanded Piercing",
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
DefineEquipment({
  Name="Warhammer",
  Visible=false,
  Cost=12,
  Size="M",
  Weight=5,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Warhammer",
  WieldCategory="OneHanded",
  Key="Warhammer (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Bludgeoning",
    "Hammer",
    "Weapon Group Hammers",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Falchion",
  Visible=false,
  Cost=75,
  Size="M",
  Weight=8,
  Attack={
    CritMultiplier="x2",
    CritRange="3",
    Damage=DiceFormula("2d4"),
  },
  Proficiency="WEAPON|Falchion",
  WieldCategory="TwoHanded",
  Key="Falchion (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  SortKey="zzBase",
  SourcePage="p.143",
})
DefineEquipment({
  Name="Glaive",
  Visible=false,
  Cost=8,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Reach",
    },
  },
  Size="M",
  Weight=10,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Glaive",
  ReachMultiplier=2,
  WieldCategory="TwoHanded",
  Key="Glaive (Base)",
  Description={
    Format="A glaive is a simple blade, mounted to the end of a pole about 7 feet in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Slashing",
    "Polearm",
    "Weapon Group Polearms",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Greataxe",
  Visible=false,
  Cost=20,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d12"),
  },
  Proficiency="WEAPON|Greataxe",
  WieldCategory="TwoHanded",
  Key="Greataxe (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Slashing",
    "Axe",
    "Weapon Group Axes",
  },
  SortKey="zzBase",
  SourcePage="p.143",
})
DefineEquipment({
  Name="Greatclub",
  Visible=false,
  Cost=5,
  Size="M",
  Weight=8,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Greatclub",
  WieldCategory="TwoHanded",
  Key="Greatclub (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Bludgeoning",
    "Club",
    "Hammer",
    "Weapon Group Hammers",
  },
  SortKey="zzBase",
  SourcePage="p.143",
})
DefineEquipment({
  Name="Heavy Flail",
  Visible=false,
  Cost=15,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=10,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Flail (Heavy)",
  WieldCategory="TwoHanded",
  Key="Heavy Flail (Base)",
  Description={
    Format="Similar to a flail, a heavy flail has a larger metal ball and a longer handle.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Bludgeoning",
    "Flail",
    "Weapon Group Flails",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Greatsword",
  Visible=false,
  Cost=50,
  Size="M",
  Weight=8,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("2d6"),
  },
  Proficiency="WEAPON|Greatsword",
  WieldCategory="TwoHanded",
  Key="Greatsword (Base)",
  Description={
    Format="This immense two-handed sword is about 5 feet in length.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Guisarme",
  Visible=false,
  Cost=9,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Reach",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("2d4"),
  },
  Proficiency="WEAPON|Guisarme",
  ReachMultiplier=2,
  WieldCategory="TwoHanded",
  Key="Guisarme (Base)",
  Description={
    Format="A guisarme is an 8-foot-long shaft with a blade and a hook mounted at the tip.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Slashing",
    "Polearm",
    "Weapon Group Polearms",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Halberd",
  Visible=false,
  Cost=10,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Halberd",
  WieldCategory="TwoHanded",
  Key="Halberd (Base)",
  Description={
    Format="A halberd is similar to a 5-foot-long spear, but it also has a small, axe-like head mounted near the tip.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Piercing",
    "Slashing",
    "Polearm",
    "Weapon Group Polearms",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Lance",
  Visible=false,
  Cost=10,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Reach",
    },
  },
  Size="M",
  Weight=10,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Lance",
  ReachMultiplier=2,
  WieldCategory="OneHanded",
  Key="Lance (Base)",
  Description={
    Format="A lance deals double damage when used from the back of a charging mount. While mounted, you can wield a lance with one hand.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Piercing",
    "Lance",
    "Spear",
    "Weapon Group Spears",
  },
  SpecialProperties={
    {
      Format="two-handed unless mounted",
    },
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Ranseur",
  Visible=false,
  Cost=10,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Reach",
    },
  },
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("2d4"),
  },
  Proficiency="WEAPON|Ranseur",
  ReachMultiplier=2,
  WieldCategory="TwoHanded",
  Key="Ranseur (Base)",
  Description={
    Format="Similar in appearance to a trident, a ranseur has a single spear at its tip, flanked by a pair of short, curving blades.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Piercing",
    "Polearm",
    "Weapon Group Polearms",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Scythe",
  Visible=false,
  Cost=18,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=10,
  Attack={
    CritMultiplier="x4",
    CritRange="1",
    Damage=DiceFormula("2d4"),
  },
  Proficiency="WEAPON|Scythe",
  WieldCategory="TwoHanded",
  Key="Scythe (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "TwoHanded",
    "Piercing",
    "Slashing",
    "Scythe",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  SortKey="zzBase",
  SourcePage="p.143",
})
DefineEquipment({
  Name="Kama",
  Visible=false,
  Cost=2,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Monk",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Kama",
  WieldCategory="Light",
  Key="Kama (Base)",
  Description={
    Format="Similar to a sickle, a kama is a short, curved blade attached to a simple handle.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "Light",
    "Finesseable",
    "Slashing",
    "Kama",
    "BladeLight",
    "Weapon Group Blades Light",
    "Weapon Group Monk",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Nunchaku",
  Visible=false,
  Cost=2,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Monk",
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Nunchaku",
  WieldCategory="Light",
  Key="Nunchaku (Base)",
  Description={
    Format="A nunchaku is made up of two wooden or metal bars connected by a small length of rope or chain.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "Light",
    "Finesseable",
    "Bludgeoning",
    "Nunchaku",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Sai",
  Visible=false,
  Cost=1,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Monk",
    },
  },
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Sai",
  WieldCategory="Light",
  Key="Sai (Base)",
  Description={
    Format="A sai is a metal spike flanked by a pair of prongs used to trap an enemy's weapon. With a sai, you get a +2 bonus on Combat Maneuver Checks to sunder an enemy's weapon. Though pointed, a sai is used primarily to bludgeon foes and to disarm weapons.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "Light",
    "Finesseable",
    "Bludgeoning",
    "Sai",
    "Weapon Group Monk",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Siangham",
  Visible=false,
  Cost=3,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Monk",
    },
  },
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Siangham",
  WieldCategory="Light",
  Key="Siangham (Base)",
  Description={
    Format="This weapon is a handheld shaft fitted with a pointed tip for stabbing foes.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "Light",
    "Finesseable",
    "Piercing",
    "Siangham",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Bastard Sword",
  Visible=false,
  Cost=35,
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Sword (Bastard)",
  WieldCategory="TwoHanded",
  Key="Bastard Sword (Base)",
  Description={
    Format="A bastard sword is about 4 feet in length, making it too large to use in one hand without special training; thus, it is an exotic weapon. A character can use a bastard sword two-handed as a martial weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "Martial",
    "OneHanded",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-1"),
      Conditions={
        function (character)
          return (character.Variables["BastardSwordExoticUse"] >= 1)
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
DefineEquipment({
  Name="Dwarven Waraxe",
  Visible=false,
  Cost=30,
  Size="M",
  Weight=8,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Waraxe (Dwarven)",
  WieldCategory="TwoHanded",
  Key="Dwarven Waraxe (Base)",
  Description={
    Format="A dwarven waraxe has a large, ornate head mounted to a thick handle, making it too large to use in one hand without special training; thus, it is an exotic weapon. A Medium character can use a dwarven waraxe two-handed as a martial weapon, or a Large creature can use it one-handed in the same way. A dwarf treats a dwarven waraxe as a martial weapon even when using it in one hand.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "Martial",
    "OneHanded",
    "Dwarven",
    "Slashing",
    "Axe",
    "Weapon Group Axes",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("-1"),
      Conditions={
        function (character)
          return (character.Variables["DwarvenWaraxeExoticUse"] >= 1)
        end,
      },
    },
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
DefineEquipment({
  Name="Whip",
  Visible=false,
  Cost=1,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Nonlethal",
    },
    {
      Key="Special Quality ~ Reach",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="WEAPON|Whip",
  Reach=15,
  WieldCategory="OneHanded",
  Key="Whip (Base)",
  Description={
    Format="A whip deals no damage to any creature with an armor bonus of +1 or higher or a natural armor bonus of +3 or higher. The whip is treated as a melee weapon with 15- foot reach, though you don't threaten the area into which you can make an attack. In addition, unlike most other weapons with reach, you can use it against foes anywhere within your reach (including adjacent foes).&nl; Using a whip provokes an attack of opportunity, just as if you had used a ranged weapon.&nl;You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a whip sized for you, even though it isn't a light weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "OneHanded",
    "Finesseable",
    "Slashing",
    "Flail",
    "Weapon Group Flails",
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
DefineEquipment({
  Name="Orc Double Axe",
  Visible=false,
  Cost=60,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
  },
  Size="M",
  Weight=15,
  SecondAttack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
    Types={
      "Weapon",
      "Resizable",
      "Melee",
      "Slashing",
    },
    EquipmentModifiers={
      {
        Key="Special Quality ~ Double",
      },
    },
  },
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Axe (Orc Double)",
  WieldCategory="TwoHanded",
  Key="Orc Double Axe (Base)",
  Description={
    Format="A cruel weapon with blades placed at opposite ends of a long haft, an orc double axe is a double weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "OneHanded",
    "Double",
    "Orc",
    "Slashing",
    "Axe",
    "Weapon Group Axes",
    "Weapon Group Double",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Spiked Chain",
  Visible=false,
  Cost=25,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=10,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("2d4"),
  },
  Proficiency="WEAPON|Chain (Spiked)",
  WieldCategory="TwoHanded",
  Key="Spiked Chain (Base)",
  Description={
    Format="A spiked chain is about 4 feet in length, covered in wicked barbs. You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a spiked chain sized for you, even though it isn't a light weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "TwoHanded",
    "Finesseable",
    "Piercing",
    "Chain",
    "Flail",
    "Weapon Group Flails",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Elven Curve Blade",
  Visible=false,
  Cost=80,
  Size="M",
  Weight=7,
  Attack={
    CritMultiplier="x2",
    CritRange="3",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Curve Blade (Elven)",
  WieldCategory="TwoHanded",
  Key="Elven Curve Blade (Base)",
  Description={
    Format="Essentially a longer version of a scimitar, but with a thinner blade, the elven curve blade is exceptionally rare. You receive a +2 circumstance bonus to your Combat Maneuver Defense whenever a foe attempts to sunder your elven curve blade due to its flexible metal.&nl;You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with an elven curve blade sized for you, even though it isn't a light weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "TwoHanded",
    "Finesseable",
    "Elven",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Dire Flail",
  Visible=false,
  Cost=90,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Double",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=10,
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
    Types={
      "Weapon",
      "Resizable",
      "Melee",
      "Bludgeoning",
    },
    EquipmentModifiers={
      {
        Key="Special Quality ~ Disarm",
      },
      {
        Key="Special Quality ~ Double",
      },
      {
        Key="Special Quality ~ Trip",
      },
    },
  },
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Flail (Dire)",
  WieldCategory="TwoHanded",
  Key="Dire Flail (Base)",
  Description={
    Format="A dire flail consists of two spheres of spiked iron dangling from chains at opposite ends of a long haft.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "OneHanded",
    "Double",
    "Bludgeoning",
    "Flail",
    "Weapon Group Double",
    "Weapon Group Flails",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Gnome Hooked Hammer",
  Visible=false,
  Cost=20,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=6,
  SecondAttack={
    CritMultiplier="x4",
    CritRange="1",
    Damage=DiceFormula("1d6"),
    Types={
      "Weapon",
      "Resizable",
      "Melee",
      "Exotic",
      "Piercing",
    },
    EquipmentModifiers={
      {
        Key="Special Quality ~ Double",
      },
      {
        Key="Special Quality ~ Trip",
      },
    },
  },
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Hammer (Gnome Hooked)",
  WieldCategory="TwoHanded",
  Key="Gnome Hooked Hammer (Base)",
  Description={
    Format="A gnome hooked hammer is a double weapon--an ingenious tool with a hammer head at one end of its haft and a long, curved pick at the other. The hammer's blunt head is a bludgeoning weapon that deals 1d6 points of damage (crit x3). Its hook is a piercing weapon that deals 1d4 points of damage (crit x4). You can use either head as the primary weapon. Gnomes treat hooked hammers as martial weapons.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "OneHanded",
    "Double",
    "Gnome",
    "Bludgeoning",
    "Hammer",
    "Weapon Group Double",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Two-Bladed Sword",
  Visible=false,
  Cost=100,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
  },
  Size="M",
  Weight=10,
  SecondAttack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d8"),
    Types={
      "Weapon",
      "Resizable",
      "Melee",
      "Slashing",
    },
    EquipmentModifiers={
      {
        Key="Special Quality ~ Double",
      },
    },
  },
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Sword (Two-Bladed)",
  WieldCategory="TwoHanded",
  Key="Two-Bladed Sword (Base)",
  Description={
    Format="A two-bladed sword is a double weapon--twin blades extend from either side of a central, short haft, allowing the wielder to attack with graceful but deadly flourishes.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "OneHanded",
    "Double",
    "Slashing",
    "Sword",
    "BladeHeavy",
    "Weapon Group Blades Heavy",
    "Weapon Group Double",
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
DefineEquipment({
  Name="Dwarven Urgrosh",
  Visible=false,
  Cost=50,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
  },
  Size="M",
  Weight=12,
  SecondAttack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d6"),
    Types={
      "Weapon",
      "Resizable",
      "Melee",
      "Exotic",
      "Piercing",
    },
    EquipmentModifiers={
      {
        Key="Special Quality ~ Brace",
      },
      {
        Key="Special Quality ~ Double",
      },
    },
  },
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Urgrosh (Dwarven)",
  WieldCategory="TwoHanded",
  Key="Dwarven Urgrosh (Base)",
  Description={
    Format="A dwarven urgrosh is a double weapon--an axe head and a spear point on opposite ends of a long haft. The urgrosh's axe head is a slashing weapon that deals 1d8 points of damage. Its spear head is a piercing weapon that deals 1d6 points of damage. You can use either head as the primary weapon. The other becomes the off-hand weapon. If you use an urgrosh against a charging character, the spear head is the part of the weapon that deals damage. Dwarves treat dwarven urgroshes as martial weapons.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Exotic",
    "OneHanded",
    "Double",
    "Dwarven",
    "Slashing",
    "Weapon Group Double",
  },
  SortKey="zzBase",
  SourcePage="p.149",
})
CopyEquipment("Gauntlet (Base)", {
  Name="Gauntlet",
  Visible=true,
  Cost=0,
  BaseItem="Gauntlet (Base)",
  Key="Gauntlet (Part of Armor Suit)",
  SortKey="Gauntlet",
})
CopyEquipment("Gauntlet (Base)", {
  Name="Gauntlet",
  Visible=true,
  Cost=0,
  BaseItem="Gauntlet (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Gauntlet",
  SortKey="Gauntlet",
})
CopyEquipment("Dagger (Base)", {
  Name="Dagger",
  Visible=true,
  Cost=0,
  BaseItem="Dagger (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Dagger",
  SortKey="Dagger",
})
CopyEquipment("Punching Dagger (Base)", {
  Name="Dagger, Punching",
  Visible=true,
  Cost=0,
  BaseItem="Punching Dagger (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Dagger (Punching)",
  DisplayName="Punching Dagger",
  SortKey="Dagger, Punching",
})
CopyEquipment("Spiked Gauntlet (Base)", {
  Name="Gauntlet, Spiked",
  Visible=true,
  Cost=0,
  BaseItem="Spiked Gauntlet (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Gauntlet (Spiked)",
  DisplayName="Spiked Gauntlet",
  SortKey="Gauntlet, Spiked",
})
CopyEquipment("Light Mace (Base)", {
  Name="Mace, Light",
  Visible=true,
  Cost=0,
  BaseItem="Light Mace (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Mace (Light)",
  DisplayName="Light Mace",
  SortKey="Mace, Light",
})
CopyEquipment("Sickle (Base)", {
  Name="Sickle",
  Visible=true,
  Cost=0,
  BaseItem="Sickle (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Sickle",
  SortKey="Sickle",
})
CopyEquipment("Club (Base)", {
  Name="Club",
  Visible=true,
  Cost=0,
  BaseItem="Club (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Club",
  SortKey="Club",
})
CopyEquipment("Heavy Mace (Base)", {
  Name="Mace, Heavy",
  Visible=true,
  Cost=0,
  BaseItem="Heavy Mace (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Mace (Heavy)",
  DisplayName="Heavy Mace",
  SortKey="Mace, Heavy",
})
CopyEquipment("Morningstar (Base)", {
  Name="Morningstar",
  Visible=true,
  Cost=0,
  BaseItem="Morningstar (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Morningstar",
  SortKey="Morningstar",
})
CopyEquipment("Shortspear (Base)", {
  Name="Shortspear",
  Visible=true,
  Cost=0,
  BaseItem="Shortspear (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Shortspear",
  SortKey="Shortspear",
})
CopyEquipment("Longspear (Base)", {
  Name="Longspear",
  Visible=true,
  Cost=0,
  BaseItem="Longspear (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Longspear",
  SortKey="Longspear",
})
CopyEquipment("Quarterstaff (Base)", {
  Name="Quarterstaff",
  Visible=true,
  Cost=0,
  BaseItem="Quarterstaff (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Wood",
      },
    },
  },
  Key="Quarterstaff",
  SortKey="Quarterstaff",
})
CopyEquipment("Spear (Base)", {
  Name="Spear",
  Visible=true,
  Cost=0,
  BaseItem="Spear (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Spear",
  SortKey="Spear",
})
CopyEquipment("Throwing Axe (Base)", {
  Name="Axe, Throwing",
  Visible=true,
  Cost=0,
  BaseItem="Throwing Axe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Axe (Throwing)",
  DisplayName="Throwing Axe",
  SortKey="Axe, Throwing",
})
CopyEquipment("Light Hammer (Base)", {
  Name="Hammer, Light",
  Visible=true,
  Cost=0,
  BaseItem="Light Hammer (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Hammer (Light)",
  DisplayName="Light Hammer",
  SortKey="Hammer, Light",
})
CopyEquipment("Handaxe (Base)", {
  Name="Handaxe",
  Visible=true,
  Cost=0,
  BaseItem="Handaxe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Handaxe",
  SortKey="Handaxe",
})
CopyEquipment("Kukri (Base)", {
  Name="Kukri",
  Visible=true,
  Cost=0,
  BaseItem="Kukri (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Kukri",
  SortKey="Kukri",
})
CopyEquipment("Light Pick (Base)", {
  Name="Pick, Light",
  Visible=true,
  Cost=0,
  BaseItem="Light Pick (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Pick (Light)",
  DisplayName="Light Pick",
  SortKey="Pick, Light",
})
CopyEquipment("Sap (Base)", {
  Name="Sap",
  Visible=true,
  Cost=0,
  BaseItem="Sap (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Sap",
  SortKey="Sap",
})
CopyEquipment("Spiked Armor (Base)", {
  Name="Spiked Armor",
  Visible=true,
  Cost=0,
  BaseItem="Spiked Armor (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Spiked Armor",
  SortKey="Spiked Armor",
})
CopyEquipment("Starknife (Base)", {
  Name="Starknife",
  Visible=true,
  Cost=0,
  BaseItem="Starknife (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Starknife",
  SortKey="Starknife",
})
CopyEquipment("Short Sword (Base)", {
  Name="Sword, Short",
  Visible=true,
  Cost=0,
  BaseItem="Short Sword (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Sword (Short)",
  DisplayName="Short Sword",
  SortKey="Sword, Short",
})
CopyEquipment("Battleaxe (Base)", {
  Name="Battleaxe",
  Visible=true,
  Cost=0,
  BaseItem="Battleaxe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Battleaxe",
  SortKey="Battleaxe",
})
CopyEquipment("Light Flail (Base)", {
  Name="Flail, Light",
  Visible=true,
  Cost=0,
  BaseItem="Light Flail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Flail",
  DisplayName="Light Flail",
  SortKey="Flail, Light",
})
CopyEquipment("Longsword (Base)", {
  Name="Longsword",
  Visible=true,
  Cost=0,
  BaseItem="Longsword (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Longsword",
  SortKey="Longsword",
})
CopyEquipment("Heavy Pick (Base)", {
  Name="Pick, Heavy",
  Visible=true,
  Cost=0,
  BaseItem="Heavy Pick (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Pick (Heavy)",
  DisplayName="Heavy Pick",
  SortKey="Pick, Heavy",
})
CopyEquipment("Rapier (Base)", {
  Name="Rapier",
  Visible=true,
  Cost=0,
  BaseItem="Rapier (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Rapier",
  SortKey="Rapier",
})
CopyEquipment("Scimitar (Base)", {
  Name="Scimitar",
  Visible=true,
  Cost=0,
  BaseItem="Scimitar (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Scimitar",
  SortKey="Scimitar",
})
CopyEquipment("Trident (Base)", {
  Name="Trident",
  Visible=true,
  Cost=0,
  BaseItem="Trident (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Trident",
  SortKey="Trident",
})
CopyEquipment("Warhammer (Base)", {
  Name="Warhammer",
  Visible=true,
  Cost=0,
  BaseItem="Warhammer (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Warhammer",
  SortKey="Warhammer",
})
CopyEquipment("Falchion (Base)", {
  Name="Falchion",
  Visible=true,
  Cost=0,
  BaseItem="Falchion (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Falchion",
  SortKey="Falchion",
})
CopyEquipment("Glaive (Base)", {
  Name="Glaive",
  Visible=true,
  Cost=0,
  BaseItem="Glaive (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Glaive",
  SortKey="Glaive",
})
CopyEquipment("Greataxe (Base)", {
  Name="Greataxe",
  Visible=true,
  Cost=0,
  BaseItem="Greataxe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Greataxe",
  SortKey="Greataxe",
})
CopyEquipment("Greatclub (Base)", {
  Name="Greatclub",
  Visible=true,
  Cost=0,
  BaseItem="Greatclub (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Greatclub",
  SortKey="Greatclub",
})
CopyEquipment("Heavy Flail (Base)", {
  Name="Flail, Heavy",
  Visible=true,
  Cost=0,
  BaseItem="Heavy Flail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Flail (Heavy)",
  DisplayName="Heavy Flail",
  SortKey="Flail, Heavy",
})
CopyEquipment("Greatsword (Base)", {
  Name="Greatsword",
  Visible=true,
  Cost=0,
  BaseItem="Greatsword (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Greatsword",
  SortKey="Greatsword",
})
CopyEquipment("Guisarme (Base)", {
  Name="Guisarme",
  Visible=true,
  Cost=0,
  BaseItem="Guisarme (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Guisarme",
  SortKey="Guisarme",
})
CopyEquipment("Halberd (Base)", {
  Name="Halberd",
  Visible=true,
  Cost=0,
  BaseItem="Halberd (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Halberd",
  SortKey="Halberd",
})
CopyEquipment("Lance (Base)", {
  Name="Lance",
  Visible=true,
  Cost=0,
  BaseItem="Lance (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Lance",
  SortKey="Lance",
})
CopyEquipment("Ranseur (Base)", {
  Name="Ranseur",
  Visible=true,
  Cost=0,
  BaseItem="Ranseur (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Ranseur",
  SortKey="Ranseur",
})
CopyEquipment("Scythe (Base)", {
  Name="Scythe",
  Visible=true,
  Cost=0,
  BaseItem="Scythe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Scythe",
  SortKey="Scythe",
})
CopyEquipment("Kama (Base)", {
  Name="Kama",
  Visible=true,
  Cost=0,
  BaseItem="Kama (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Kama",
  SortKey="Kama",
})
CopyEquipment("Nunchaku (Base)", {
  Name="Nunchaku",
  Visible=true,
  Cost=0,
  BaseItem="Nunchaku (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Nunchaku",
  SortKey="Nunchaku",
})
CopyEquipment("Nunchaku (Base)", {
  Name="Nunchaku, Metal",
  Visible=true,
  Cost=0,
  BaseItem="Nunchaku (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Nunchaku (Metal)",
  DisplayName="Metal Nunchaku",
  SortKey="Nunchaku, Metal",
})
CopyEquipment("Sai (Base)", {
  Name="Sai",
  Visible=true,
  Cost=0,
  BaseItem="Sai (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Sai",
  SortKey="Sai",
})
CopyEquipment("Siangham (Base)", {
  Name="Siangham",
  Visible=true,
  Cost=0,
  BaseItem="Siangham (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Siangham",
  SortKey="Siangham",
})
CopyEquipment("Bastard Sword (Base)", {
  Name="Sword, Bastard",
  Visible=true,
  Cost=0,
  BaseItem="Bastard Sword (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Sword (Bastard)",
  DisplayName="Bastard Sword",
  SortKey="Sword, Bastard",
})
CopyEquipment("Dwarven Waraxe (Base)", {
  Name="Waraxe, Dwarven",
  Visible=true,
  Cost=0,
  BaseItem="Dwarven Waraxe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Waraxe (Dwarven)",
  DisplayName="Dwarven Waraxe",
  SortKey="Waraxe, Dwarven",
})
CopyEquipment("Whip (Base)", {
  Name="Whip",
  Visible=true,
  Cost=0,
  BaseItem="Whip (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Whip",
  SortKey="Whip",
})
CopyEquipment("Orc Double Axe (Base)", {
  Name="Axe, Orc Double",
  Visible=true,
  Cost=0,
  BaseItem="Orc Double Axe (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Key="Axe (Orc Double)",
  DisplayName="Orc Double Axe",
  SortKey="Axe, Orc Double",
})
CopyEquipment("Spiked Chain (Base)", {
  Name="Chain, Spiked",
  Visible=true,
  Cost=0,
  BaseItem="Spiked Chain (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Chain (Spiked)",
  DisplayName="Spiked Chain",
  SortKey="Chain, Spiked",
})
CopyEquipment("Elven Curve Blade (Base)", {
  Name="Curve Blade, Elven",
  Visible=true,
  Cost=0,
  BaseItem="Elven Curve Blade (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Curve Blade (Elven)",
  DisplayName="Elven Curve Blade",
  SortKey="Curve Blade, Elven",
})
CopyEquipment("Dire Flail (Base)", {
  Name="Flail, Dire",
  Visible=true,
  Cost=0,
  BaseItem="Dire Flail (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Key="Flail (Dire)",
  DisplayName="Dire Flail",
  SortKey="Flail, Dire",
})
CopyEquipment("Gnome Hooked Hammer (Base)", {
  Name="Hammer, Gnome Hooked",
  Visible=true,
  Cost=0,
  BaseItem="Gnome Hooked Hammer (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Key="Hammer (Gnome Hooked)",
  DisplayName="Gnome Hooked Hammer",
  SortKey="Hammer, Gnome Hooked",
})
CopyEquipment("Two-Bladed Sword (Base)", {
  Name="Sword, Two-Bladed",
  Visible=true,
  Cost=0,
  BaseItem="Two-Bladed Sword (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Key="Sword (Two-Bladed)",
  DisplayName="Two-Bladed Sword",
  SortKey="Sword, Two-Bladed",
})
CopyEquipment("Dwarven Urgrosh (Base)", {
  Name="Urgrosh, Dwarven",
  Visible=true,
  Cost=0,
  BaseItem="Dwarven Urgrosh (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Key="Urgrosh (Dwarven)",
  DisplayName="Dwarven Urgrosh",
  SortKey="Urgrosh, Dwarven",
})
CopyEquipment("Battleaxe (Base)", {
  Name="Adamantine Battleaxe",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Weapon",
    },
  },
  Key="Battleaxe (Adamantine)",
  Description={
    Format="This nonmagical axe is made out of adamantine. As a masterwork weapon, it has a +1 enhancement bonus on attack rolls.",
  },
  SortKey="Battleaxe, Adamantine",
  SourcePage="p.472",
})
CopyEquipment("Dagger (Base)", {
  Name="Adamantine Dagger",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Weapon",
    },
  },
  Key="Dagger (Adamantine)",
  Description={
    Format="This nonmagical dagger is made out of adamantine. As a masterwork weapon, it has a +1 enhancement bonus on attack rolls.",
  },
  SortKey="Dagger, Adamantine",
  SourcePage="p.472",
})
CopyEquipment("Dagger (Base)", {
  Name="Assassin's Dagger",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("2000"),
      },
    },
  },
  Qualities={
    Aura="moderate necromancy",
    ['Caster Level']="9th",
    Slot="none",
    ['Construction Cost']="5,302 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, slay living",
  },
  Key="Dagger (Assassin's)",
  Description={
    Format="This wicked-looking, curved +2 dagger provides a +1 bonus to the DC of a Fortitude save forced by the death attack of an assassin.",
  },
  SpecialProperties={
    {
      Format="+1 to the DC of a death attack of an assassin",
    },
  },
  SortKey="Dagger, Assassin's",
  SourcePage="p.472",
})
CopyEquipment("Dagger (Base)", {
  Name="Dagger of Venom",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("6000"),
      },
    },
  },
  Qualities={
    Aura="faint necromancy",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="4,302 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, poison",
  },
  Key="Dagger of Venom",
  Description={
    Format="This black +1 dagger has a serrated edge. It allows the wielder to use a poison effect (as the spell, save DC 14) upon a creature struck by the blade once per day. The wielder can decide to use the power after he has struck. Doing so is a free action, but the poison effect must be invoked in the same round that the dagger strikes.",
  },
  SpecialProperties={
    {
      Format="1/day inflict a poison spell effect (save DC14)",
    },
  },
  SortKey="Dagger of Venom",
  SourcePage="p.473",
})
CopyEquipment("Warhammer (Base)", {
  Name="Dwarven Thrower",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("52000"),
      },
    },
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="10th",
    Slot="none",
    ['Construction Cost']="30,312 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, creator must be a dwarf of at least 10th level",
  },
  Key="Dwarven Thrower",
  Description={
    Format="This weapon functions as a +2 warhammer in the hands of most users. Yet in the hands of a dwarf, the warhammer gains an additional +1 enhancement bonus (for a total enhancement bonus of +3) and gains the returning special ability. It can be hurled with a 30-foot range increment. When hurled, a dwarven thrower deals an extra 2d8 points of damage against creatures of the giant subtype or an extra 1d8 points of damage against any other target.",
  },
  Types={
    "Ranged",
    "Thrown",
  },
  Bonuses={
    {
      Category="EQMWEAPON",
      Variables={
        "RANGEADD",
      },
      Formula=Formula("30"),
      Conditions={
        function (character)
          return ((character.Race.Name == "Dwarf%" and 1 or 0) + (any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Dwarf") end) and 1 or 0)) >= 1
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
      Conditions={
        function (character)
          return ((character.Race.Name == "Dwarf%" and 1 or 0) + (any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Dwarf") end) and 1 or 0)) >= 1
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="when thrown will return just before thrower's next turn, when hurled deals an extra 1d8 damage or an extra 2d8 against giants",
      Arguments={
        Formula("PRERACE:1,Dwarf%,RACESUBTYPE=Dwarf"),
      },
    },
  },
  SortKey="Dwarven Thrower",
  SourcePage="p.473",
})
CopyEquipment("Longsword (Base)", {
  Name="Flame Tongue",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Flaming Burst ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("2400"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="12th",
    Slot="none",
    ['Construction Cost']="10,515 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, scorching ray and fireball, flame blade, or flame strike",
  },
  Key="Flame Tongue",
  Description={
    Format="This is a +1 flaming burst longsword. Once per day, the sword can blast forth a fiery ray at any target within 30 feet as a ranged touch attack. The ray deals 4d6 points of fire damage on a successful hit.",
  },
  SpecialProperties={
    {
      Format="1/day the sword can blast forth a fiery ray at any target within 30 feet as a ranged touch attack dealing 4d6 points of fire damage",
    },
  },
  SortKey="Flame Tongue",
  SourcePage="p.473",
})
CopyEquipment("Greatsword (Base)", {
  Name="Frost Brand",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +3 ~ Weapon",
    },
    {
      Key="Special Ability ~ Frost ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("22125"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="14th",
    Slot="none",
    ['Construction Cost']="27,375 gp and 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, ice storm, dispel magic, protection from energy",
    ['Bright Illumination']="20 ft.",
    ['Shadowy Illumination']="40 ft.",
    Duration="below 0 degrees F",
  },
  Key="Frost Brand",
  Description={
    Format="This +3 frost greatsword sheds light as a torch when the temperature drops below 0° F. At such times it cannot be concealed when drawn, nor can its light be shut off. Its wielder is protected from fire; the sword absorbs the first 10 points of fire damage each round that the wielder would otherwise take.&nl;A frost brand extinguishes all nonmagical fires in a 20-foot radius. As a standard action, it can also dispel lasting fire spells, but not instantaneous effects. You must succeed on a dispel check (1d20 +14) against each spell to dispel it. The DC to dispel such spells is 11 + the caster level of the fire spell.",
  },
  Types={
    "Light Source",
  },
  SpecialProperties={
    {
      Format="absorbs the first 10 points of fire damage each round",
    },
  },
  SortKey="Frost Brand",
  SourcePage="p.473",
})
CopyEquipment("Longsword (Base)", {
  Name="Holy Avenger",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Cold Iron",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("110300"),
      },
    },
  },
  Qualities={
    Aura="strong abjuration",
    ['Caster Level']="18th",
    Slot="none",
    ['Construction Cost']="60,630 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, holy aura, creator must be good",
  },
  Key="Holy Avenger",
  Description={
    Format="This +2 cold iron longsword becomes a +5 holy cold iron longsword in the hands of a paladin.&nl;This sacred weapon provides spell resistance of 5 + the paladin's level to the wielder and anyone adjacent to her. It also enables the paladin to use greater dispel magic (once per round as a standard action) at the class level of the paladin. Only the area dispel is possible, not the targeted dispel or counterspell versions of greater dispel magic.",
  },
  Bonuses={
    {
      Category="MISC",
      Variables={
        "SR",
      },
      Formula=Formula("HolyAvengerSR"),
      Conditions={
        function (character)
          return (character.Variables["AllowHolyAvenger"] >= 1)
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
        "TOHIT",
      },
      Formula=Formula("5*(AllowHolyAvenger>=1)"),
      Type={
        Name="Enhancement",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="provides spell resistance of % to the wielder and anyone adjacent",
      Arguments={
        Formula("HolyAvengerSR"),
        Formula("PREVARGTEQ:AllowHolyAvenger,1"),
      },
    },
  },
  SortKey="Holy Avenger",
  SourcePage="p.473",
  SpellLikeAbilities={
    {
      Name="Dispel Magic (Greater)",
      SpellBookName="Magic Item",
      Times="1",
      TimeUnit="Round",
      DC="19",
      CasterLevel="HolyAvengerCL",
      Conditions={
        function (character)
          return (character.Variables["AllowHolyAvenger"] >= 1)
        end,
      },
    },
  },
})
CopyEquipment("Greataxe (Base)", {
  Name="Life-Drinker",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("38000"),
      },
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="20,320 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, enervation",
  },
  Key="Life-Drinker",
  Description={
    Format="This +1 greataxe is favored by undead and constructs, who do not suffer its drawback. A life-drinker bestows two negative levels on its target whenever it deals damage, just as if its target had been struck by an undead creature. One day after being struck, subjects must make a DC 16 Fortitude save for each negative level or the negative levels become permanent.&nl;Each time a life-drinker deals damage to a foe, it also bestows one negative level on the wielder. Any negative levels gained by the wielder in this fashion lasts for 1 hour.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return not (((any(character.Race.RaceTypes, function (type) stringMatch(type, "Construct") end) and 1 or 0) + (any(character.Race.RaceTypes, function (type) stringMatch(type, "Undead") end) and 1 or 0)) >= 1)
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="bestows two negative levels on its target whenever it deals damage and one negative level on the wielder",
    },
  },
  SortKey="Life-Drinker",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
      Conditions={
        function (character)
          return not (((any(character.Race.RaceTypes, function (type) stringMatch(type, "Construct") end) and 1 or 0) + (any(character.Race.RaceTypes, function (type) stringMatch(type, "Undead") end) and 1 or 0)) >= 1)
        end,
      },
    },
  },
  SourcePage="p.473",
})
CopyEquipment("Longsword (Base)", {
  Name="Masterwork Cold Iron Longsword",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Cold Iron",
    },
    {
      Key="Special Quality ~ Masterwork ~ Weapon",
    },
  },
  Key="Longsword (Cold Iron/Masterwork)",
  Description={
    Format="This nonmagical longsword is crafted out of cold iron. As a masterwork weapon, it has a +1 enhancement bonus on attack rolls.",
  },
  SortKey="Longsword, Masterwork Cold Iron",
  SourcePage="p.474",
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (0 wishes)",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("13750"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="11,185 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
  Key="Luck Blade (0 wishes)",
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  SortKey="Luck Blade (0 wishes)",
  SourcePage="p.474",
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (1 wish)",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("54050"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="43,835 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
  Key="Luck Blade (1 wish)",
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  SortKey="Luck Blade (1 wish)",
  SourcePage="p.474",
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (2 wishes)",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("94350"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="76,485 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
  Key="Luck Blade (2 wishes)",
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  SortKey="Luck Blade (2 wishes)",
  SourcePage="p.474",
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (3 wishes)",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("134650"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="109,135 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
  Key="Luck Blade (3 wishes)",
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  Bonuses={
    {
      Category="SAVE",
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
        Replace=false,
        Stack=false,
      },
    },
  },
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  SortKey="Luck Blade (3 wishes)",
  SourcePage="p.474",
})
CopyEquipment("Heavy Mace (Base)", {
  Name="Mace of Smiting",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Weapon",
    },
    {
      Key="Special Ability ~ +3 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("54300"),
      },
    },
  },
  Qualities={
    Aura="moderate transmutation",
    ['Caster Level']="11th",
    Slot="none",
    ['Construction Cost']="39,312 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, disintegrate",
  },
  Key="Mace of Smiting",
  Description={
    Format="This +3 adamantine heavy mace has a +5 enhancement bonus against constructs, and a successful critical hit dealt to a construct completely destroys the construct (no saving throw). A critical hit dealt to an outsider deals x4 damage rather than x2.",
  },
  SpecialProperties={
    {
      Format="+5 against constructs and critical destroys construct, critical x4 against outsiders",
    },
  },
  SortKey="Mace of Smiting",
  SourcePage="p.474",
})
CopyEquipment("Heavy Mace (Base)", {
  Name="Mace of Terror",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("30240"),
      },
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="19,432 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, fear",
  },
  Key="Mace of Terror",
  Description={
    Format="This weapon usually appears to be a particularly frightening-looking iron or steel mace. On command, this +2 heavy mace causes the wielder's clothes and appearance to transform into an illusion of darkest horror such that living creatures in a 30-foot cone become panicked as if by a fear spell (Will DC 16 partial). Those who fail take a -2 morale penalty on saving throws, and they flee from the wielder. The wielder may use this ability up to three times per day.",
  },
  SpecialProperties={
    {
      Format="3/day transform into an illusion of darkest horror such that living creatures in a 30-foot cone become panicked as if by a fear spell (Will DC 16 partial)",
    },
  },
  SortKey="Mace of Terror",
  SourcePage="p.474",
})
CopyEquipment("Longsword (Base)", {
  Name="Nine Lives Stealer",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("14742"),
      },
    },
  },
  Qualities={
    Aura="strong necromancy [evil]",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="11,528 gp 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, finger of death",
  },
  Key="Nine Lives Stealer",
  Description={
    Format="This longsword always performs as a +2 longsword, but it also has the power to draw the life force from an opponent. It can do this nine times before the ability is lost. At that point, the sword becomes a simple +2 longsword (with a faint evil aura). A critical hit must be dealt for the sword's death-dealing ability to function, and this weapon has no effect on creatures not subject to critical hits. The victim is entitled to a DC 20 Fortitude save to avoid death. If the save is successful, the sword's death-dealing ability does not function, no use of the ability is expended, and normal critical damage is determined. This sword is evil, and any good character attempting to wield it gains two negative levels. These negative levels remain as long as the sword is in hand and disappear when the sword is no longer wielded. These negative levels never result in actual level loss, but they cannot be overcome in any way (including restoration spells) while the sword is wielded.",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("2"),
      Conditions={
        function (character)
          return character.Alignment == "LG" or character.Alignment == "NG" or character.Alignment == "CG"
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="draws lifeforce from opponent on critical hits (Fortitude DC 20 or die)",
    },
  },
  SortKey="Nine Lives Stealer",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
    },
  },
  SourcePage="p.474",
})
CopyEquipment("Rapier (Base)", {
  Name="Rapier of Puncturing",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Wounding ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("18000"),
      },
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="25,320 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, harm",
  },
  Key="Rapier of Puncturing",
  Description={
    Format="Three times per day, this +2 wounding rapier allows the wielder to make a touch attack with the weapon that deals 1d6 points of Constitution damage by draining blood. Creatures immune to critical hits are immune to the Constitution damage dealt by this weapon.",
  },
  SpecialProperties={
    {
      Format="3/day allows the wielder to make a touch attack with the weapon that deals 1d6 points of Constitution damage",
    },
  },
  SortKey="Rapier of Puncturing",
  SourcePage="p.474",
})
CopyEquipment("Longsword (Base)", {
  Name="Shatterspike",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("2000"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="2,315 gp",
    ['Construction Requirements']="Str 13, Craft Magic Arms and Armor, Improved Sunder, Power Attack, shatter",
  },
  Key="Shatterspike",
  Description={
    Format="This intimidating weapon appears to be a longsword with multiple hooks, barbs, and serrations along the blade, excellent for catching and sundering a foe's weapon. Wielders without the Improved Sunder feat use a shatterspike as a +1 longsword only. Wielders with the Improved Sunder feat instead use shatterspike as a +4 longsword when attempting to sunder an opponent's weapon. Shatterspike can damage weapons with an enhancement bonus of +4 or lower.",
  },
  SpecialProperties={
    {
      Format="use shatterspike as a +4 longsword when attempting to sunder an opponent's weapon",
      Arguments={
        Formula("PREABILITY:1,CATEGORY=FEAT,Improved Sunder"),
      },
    },
  },
  SortKey="Shatterspike",
  SourcePage="p.475",
})
CopyEquipment("Two-Bladed Sword (Base)", {
  Name="Shifter's Sorrow",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Alchemical Silver",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("7720"),
      },
    },
  },
  Qualities={
    Aura="strong transmutation",
    ['Caster Level']="15th",
    Slot="none",
    ['Construction Cost']="6,780 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, baleful polymorph",
  },
  SecondAttack={
    CritMultiplier="x2",
    CritRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Alchemical Silver",
      },
      {
        Key="Special Ability ~ +1 ~ Weapon",
      },
    },
  },
  Key="Shifter's Sorrow",
  Description={
    Format="This +1/+1 two-bladed sword has blades of alchemical silver. The weapon deals an extra 2d6 points of damage against any creature with the shapechanger subtype. When a shapechanger or a creature in an alternate form (such as a druid using wild shape) is struck by the weapon, it must make a DC 15 Will save or return to its natural form.",
  },
  SpecialProperties={
    {
      Format="deals an extra 2d6 points of damage against any creature with the shapechanger subtype",
    },
    {
      Format="struck creature in an alternate form must make a DC 15 Will save or return to its natural form",
    },
  },
  SortKey="Shifter's Sorrow",
  SourcePage="p.475",
})
CopyEquipment("Dagger (Base)", {
  Name="Masterwork Silver Dagger",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Alchemical Silver",
    },
    {
      Key="Special Quality ~ Masterwork ~ Weapon",
    },
  },
  Key="Dagger (Silver/Masterwork)",
  Description={
    Format="As a masterwork weapon, this alchemical silver dagger has a +1 enhancement bonus on attack rolls (but not to damage rolls).",
  },
  SortKey="Dagger, Masterwork Silver",
  SourcePage="p.476",
})
CopyEquipment("Bastard Sword (Base)", {
  Name="Sun Blade (Bastard Sword)",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("42000"),
      },
    },
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="10th",
    Slot="none",
    ['Construction Cost']="25,335 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, daylight, creator must be good",
  },
  Weight=2,
  WieldCategory="Light",
  Key="Sun Blade (Bastard)",
  Description={
    Format="This sword is the size of a bastard sword. However, a sun blade is wielded as if it were a short sword with respect to weight and ease of use. In other words, the weapon appears to all viewers to be a bastard sword, and deals bastard sword damage, but the wielder feels and reacts as if the weapon were a short sword. Any individual able to use either a bastard sword or a short sword with proficiency is proficient in the use of a sun blade. Likewise, Weapon Focus and Weapon Specialization in short sword and bastard sword apply equally, but the benefits of those feats do not stack.&nl;In normal combat, the glowing golden blade of the weapon is equal to a +2 bastard sword. Against evil creatures, its enhancement bonus is +4. Against Negative Energy Plane creatures or undead creatures, the sword deals double damage (and x3 on a critical hit instead of the usual x2).&nl;The blade also has a special sunlight power. Once per day, the wielder can swing the blade vigorously above his head while speaking a command word. The sun blade then sheds a bright yellow radiance that acts like bright light and affects creatures susceptible to light as if it were natural sunlight. The radiance begins shining in a 10-foot radius around the sword wielder and extends outward at 5 feet per round for 10 rounds thereafter, to create a globe of light with a 60-foot radius. When the wielder stops swinging, the radiance fades to a dim glow that persists for another minute before disappearing entirely. All sun blades are of good alignment, and any evil creature attempting to wield one gains one negative level. The negative level remains as long as the sword is in hand and disappears when the sword is no longer wielded. This negative level cannot be overcome in any way (including by restoration spells) while the sword is wielded.",
  },
  Types={
    "Light",
    "Finesseable",
    "BladeLight",
    "Weapon Group Blades Light",
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "NegLevels",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
        end,
      },
    },
    {
      Category="WEAPON",
      Variables={
        "WIELDCATEGORY",
      },
      Formula=Formula("1"),
      Conditions={
        function (character)
          return (character.Variables["BastardSwordExoticUse"] >= 1)
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="+4 enhancement bonus against evil creatures and double damage against negative energy plane or undead creatures",
    },
    {
      Format="1/day sheds bright light as natural sunlight in 10- to 60-foot radius over 10 rounds",
    },
  },
  DisplayName="Sun Blade",
  SortKey="Sun Blade",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
    },
  },
  SourcePage="p.476",
})
CopyEquipment("Sun Blade (Bastard)", {
  Name="Sun Blade (Short Sword)",
  Cost=0,
  Proficiency="WEAPON|Sword (Short)",
  Key="Sun Blade (Short)",
  SortKey="Sun Blade",
})
CopyEquipment("Longsword (Base)", {
  Name="Sword of Life Stealing",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("17400"),
      },
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="13,015 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, enervation",
  },
  Key="Sword of Life Stealing",
  Description={
    Format="This black iron +2 longsword bestows a negative level when it deals a critical hit. The sword wielder gains 1d6 temporary hit points each time a negative level is bestowed on another. These temporary hit points last for 24 hours. One day after being struck, subjects must make a DC 16 Fortitude save for each negative level gained or they become permanent.",
  },
  SpecialProperties={
    {
      Format="bestows a negative level when it deals a critical hit and wielder gains 1d6 temporary hit points each time a negative level is bestowed",
    },
  },
  SortKey="Sword of Life Stealing",
  SourcePage="p.477",
})
CopyEquipment("Longsword (Base)", {
  Name="Sword of the Planes",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("20000"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="15th",
    Slot="none",
    ['Construction Cost']="11,315 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, plane shift",
  },
  Key="Sword of the Planes",
  Description={
    Format="This longsword has an enhancement bonus of +1 on the Material Plane, but on any Elemental Plane its enhancement bonus increases to +2. The +2 enhancement bonus also applies whenever the weapon is used against creatures native to the Elemental Plane. It operates as a +3 longsword on the Astral Plane and the Ethereal Plane, or when used against opponents native to either of those planes. On any other plane, or against any outsider, it functions as a +4 longsword.",
  },
  SpecialProperties={
    {
      Format="+2/+3/+4 enhancement bonus on the Elemental Plane/Astral and Ethereal Planes/any other plane or creatures from those planes",
    },
  },
  SortKey="Sword of the Planes",
  SourcePage="p.477",
})
CopyEquipment("Short Sword (Base)", {
  Name="Sword of Subtlety",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("20000"),
      },
    },
  },
  Qualities={
    Aura="moderate illusion",
    ['Caster Level']="7th",
    Slot="none",
    ['Construction Cost']="11,310 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, blur",
  },
  Key="Sword of Subtlety",
  Description={
    Format="A +1 short sword with a thin, dull gray blade, this weapon provides a +4 bonus on its wielder's attack and damage rolls when he is making a sneak attack with it.",
  },
  SpecialProperties={
    {
      Format="+4 bonus on attack and damage rolls when making a sneak attack",
    },
  },
  SortKey="Sword of Subtlety",
  SourcePage="p.477",
})
CopyEquipment("Scimitar (Base)", {
  Name="Sylvan Scimitar",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +3 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("29000"),
      },
    },
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="11th",
    Slot="none",
    ['Construction Cost']="23,815 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, divine power or creator must be a 7th-level druid",
  },
  Key="Sylvan Scimitar",
  Description={
    Format="This +3 scimitar, when used outdoors in a temperate climate, grants its wielder the use of the Cleave feat and deals an extra 1d6 points of damage.",
  },
  SpecialProperties={
    {
      Format="grants its wielder the use of the Cleave feat and deals an extra 1d6 points of damage when used outdoors in a temperate climate",
    },
  },
  SortKey="Scimitar, Sylvan",
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Sylvan Scimitar ~ Cleave",
      },
    },
  },
  SourcePage="p.477",
})
CopyEquipment("Trident (Base)", {
  Name="Trident of Fish Command",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("16335"),
      },
    },
  },
  Qualities={
    Aura="moderate enchantment",
    ['Caster Level']="7th",
    Slot="none",
    ['Construction Cost']="9,482 gp and 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, charm animals, speak with animals",
  },
  Key="Trident of Fish Command",
  Description={
    Format="The magical properties of this +1 trident with a 6-foot-long haft enable its wielder to charm up to 14 HD of aquatic animals as per the spell charm animals (Will DC 16 negates, animals get a +5 bonus if currently under attack by the wielder or his allies), no two of which can be more than 30 feet apart. The wielder can use this effect up to three times per day. The wielder can communicate with the animals as if using a speak with animals spell. Animals making their saving throws are free of control, but they will not approach within 10 feet of the trident.",
  },
  SpecialProperties={
    {
      Format="3/day the wielder can charm up to 14HD of aquatic animals as charm animals spell and can speak to these charmed creatures as speak with animals spell",
    },
  },
  SortKey="Trident of Fish Command",
  SourcePage="p.477",
})
CopyEquipment("Trident (Base)", {
  Name="Trident of Warning",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("1800"),
      },
    },
  },
  Qualities={
    Aura="moderate divination",
    ['Caster Level']="7th",
    Slot="none",
    ['Construction Cost']="5,215 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, locate creature",
  },
  Key="Trident of Warning",
  Description={
    Format="A weapon of this type enables its wielder to determine the location, depth, kind, and number of aquatic predators within 680 feet. A trident of warning must be grasped and pointed in order for the character using it to gain such information, and it requires 1 round to scan a hemisphere with a radius of 680 feet. The weapon is otherwise a +2 trident.",
  },
  SpecialProperties={
    {
      Format="enables its wielder to determine the location, depth, kind, and number of aquatic predators within 680 feet",
    },
  },
  SortKey="Trident of Warning",
  SourcePage="p.477",
})
DefineEquipment({
  Name="Mattock of the Titans",
  Cost=23348,
  Size="G",
  Weight=120,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("4d6"),
  },
  Proficiency="WEAPON|Warhammer",
  WieldCategory="OneHanded",
  Key="Mattock of the Titans",
  Description={
    Format="This digging tool is 10 feet long. Any creature of at least Huge size can use it to loosen or tumble earth or earthen ramparts (a 10-foot cube every 10 minutes). It also smashes rock (a 10- foot cube per hour). If used as a weapon, it is the equivalent of a Gargantuan +3 adamantine warhammer, dealing 4d6 points of base damage.",
  },
  Types={
    "Magic",
    "Wondrous",
    "Tool",
    "Weapon",
    "Melee",
    "Martial",
    "OneHanded",
    "Bludgeoning",
    "Hammer",
    "Metal",
    "Adamantine",
    "Masterwork",
  },
  Bonuses={
    {
      Category="WEAPON",
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
  SortKey="Mattock of the Titans",
  SourcePage="p.523",
})
DefineEquipment({
  Name="Maul of the Titans",
  Cost=25305,
  Size="M",
  Weight=160,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Greatclub",
  WieldCategory="TwoHanded",
  Key="Maul of the Titans",
  Description={
    Format="This mallet is 8 feet long. If used as a weapon, it is the equivalent of a +3 greatclub and deals triple damage against inanimate objects. The wielder must have a Strength of at least 18 to wield it properly. Otherwise, she takes a -4 penalty on attack rolls.",
  },
  Types={
    "Magic",
    "Wondrous",
    "Tool",
    "Weapon",
    "Melee",
    "Martial",
    "TwoHanded",
    "Bludgeoning",
    "Club",
    "Hammer",
  },
  Bonuses={
    {
      Category="WEAPON",
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
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("-4"),
      Type={
        Name="StrengthPenalty",
        Replace=false,
        Stack=false,
      },
      Conditions={
        function (character)
          return (character.Variables["PreStatScore_STR"] < 18)
        end,
      },
    },
  },
  SpecialProperties={
    {
      Format="deals triple damage against inanimate objects",
    },
  },
  SortKey="Maul of the Titans",
  SourcePage="p.523",
})
CopyEquipment("Dwarven Waraxe (Base)", {
  Name="Axe of the Dwarvish Lords",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Special Ability ~ Bane ~ Weapon",
      Parameters={
        Formula("Goblinoid Bane"),
      },
    },
    {
      Key="Special Ability ~ Keen ~ Weapon",
    },
    {
      Key="Special Ability ~ Throwing ~ Melee",
    },
  },
  Qualities={
    Aura="strong conjuration and transmutation",
    ['Caster Level']="20th",
    Slot="none",
    Destruction="The Axe of the Dwarvish Lords rusts away to nothing if it is ever used by a goblin to behead a dwarven king.",
  },
  Key="Axe of the Dwarvish Lords",
  Description={
    Format="This is a +6 keen throwing goblinoid bane dwarven waraxe. Any dwarf who holds it doubles the range of his or her darkvision. Any nondwarf who grasps the Axe takes 4 points of temporary Charisma damage; these points cannot be healed or restored in any way while the Axe is held. The current owner of the Axe gains a +10 bonus on Craft (armor, jewelry, stonemasonry, traps, and weapons) checks. The wielder of the Axe can summon an elder earth elemental (as summon monster IX; duration 20 rounds) once per week.",
  },
  Types={
    "Artifact",
    "Major",
  },
  Bonuses={
    {
      Category="STAT",
      Variables={
        "CHA",
      },
      Formula=Formula("-4"),
      Conditions={
        function (character)
          return not (((character.Race.Name == "Dwarf" and 1 or 0)) >= 1)
        end,
      },
    },
    {
      Category="VISION",
      Variables={
        "Darkvision",
      },
      Formula=Formula("60"),
      Conditions={
        function (character)
          return ((character.Race.Name == "Dwarf" and 1 or 0)) >= 1
        end,
      },
    },
  },
  SortKey="Axe of the Dwarvish Lords",
  SourcePage="p.547",
})
DefineEquipment({
  Name="Flurry of Blows",
  Cost=0,
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="WEAPON|Unarmed Strike",
  WieldCategory="Light",
  Key="Flurry of Blows",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Special",
    "Finesseable",
    "Bludgeoning",
    "Close",
    "Unarmed",
    "Monk",
    "Weapon Group Close",
    "Weapon Group Monk",
    "Weapon Group Natural",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "WEAPONBAB",
      },
      Formula=Formula("FlurryBABBonus-BAB"),
    },
    {
      Category="WEAPON",
      Variables={
        "ATTACKS",
      },
      Formula=Formula("FlurryExtraAttacks"),
    },
    {
      Category="WEAPON",
      Variables={
        "TOHIT",
      },
      Formula=Formula("-2"),
    },
  },
  DisplayName="Flurry of Blows",
  SourcePage="p.57",
})
DefineEquipment({
  Name="Shieldbash (Light Shield)",
  Cost=0,
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="WEAPON|Shieldbash",
  WieldCategory="Light",
  Key="Shieldbash (Light)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "Light",
    "Finesseable",
    "Bludgeoning",
    "Shieldbash",
    "Unarmed",
  },
  DisplayName="Shieldbash",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Shieldbash (Heavy Shield)",
  Cost=0,
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Shieldbash",
  WieldCategory="OneHanded",
  Key="Shieldbash (Heavy)",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Martial",
    "OneHanded",
    "Bludgeoning",
    "Shieldbash",
    "Unarmed",
  },
  DisplayName="Shieldbash",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Touch Attack (Ray Spell)",
  Cost=0,
  CanHaveMods=false,
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("0"),
  },
  Proficiency="WEAPON|Spells (Ray)",
  Range=1,
  WieldCategory="Light",
  Key="Touch Attack (Ray)",
  Types={
    "Weapon",
    "Ranged",
    "Thrown",
    "Unarmed",
  },
  SpecialProperties={
    {
      Format="damage or effect as per spell",
    },
  },
  DisplayName="Touch Attack (Ray Spell)",
  SourcePage="p.179",
})
DefineEquipment({
  Name="Unarmed Strike",
  Cost=0,
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="WEAPON|Unarmed Strike",
  WieldCategory="Light",
  Key="Unarmed Strike",
  Types={
    "Weapon",
    "Resizable",
    "Melee",
    "Special",
    "Unarmed",
    "Monk",
    "Bludgeoning",
    "Finesseable",
    "Close",
    "Weapon Group Close",
    "Weapon Group Monk",
    "Weapon Group Natural",
  },
  DisplayName="Unarmed Strike",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Blowgun",
  Visible=false,
  Cost=2,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d2"),
  },
  Proficiency="WEAPON|Blowgun",
  Range=20,
  WieldCategory="TwoHandsOnly",
  Key="Blowgun (Base)",
  Description={
    Format="Blowguns are generally used to deliver debilitating (but rarely fatal) poisons from a distance. They are nearly silent when fired.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Simple",
    "Container",
    "Projectile",
    "Piercing",
    "Blowgun",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Heavy Crossbow",
  Visible=false,
  Cost=50,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=8,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Crossbow (Heavy)",
  Range=120,
  WieldCategory="TwoHandsOnly",
  Key="Heavy Crossbow (Base)",
  Description={
    Format="You draw a heavy crossbow back by turning a small winch. Loading a heavy crossbow is a fullround action that provokes attacks of opportunity.&nl;Normally, operating a heavy crossbow requires two hands. However, you can shoot, but not load, a heavy crossbow with one hand at a -4 penalty on attack rolls. You can shoot a heavy crossbow with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Simple",
    "Container",
    "Projectile",
    "Piercing",
    "Crossbow",
    "Weapon Group Crossbows",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Light Crossbow",
  Visible=false,
  Cost=35,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=4,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Crossbow (Light)",
  Range=80,
  WieldCategory="TwoHandsOnly",
  Key="Light Crossbow (Base)",
  Description={
    Format="You draw a light crossbow back by pulling a lever. Loading a light crossbow is a move action that provokes attacks of opportunity.&nl;Normally, operating a light crossbow requires two hands. However, you can shoot, but not load, a light crossbow with one hand at a -2 penalty on attack rolls. You can shoot a light crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons. This penalty is cumulative with the penalty for onehanded firing.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Simple",
    "Container",
    "Projectile",
    "Piercing",
    "Crossbow",
    "Weapon Group Crossbows",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Dart",
  Visible=false,
  Cost=0.5,
  Size="M",
  Weight=0.5,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Dart",
  Range=20,
  WieldCategory="Light",
  Key="Dart (Base)",
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Simple",
    "Thrown",
    "Piercing",
    "Dart",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.142",
})
DefineEquipment({
  Name="Javelin",
  Visible=false,
  Cost=1,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Javelin",
  Range=30,
  WieldCategory="OneHandOnly",
  Key="Javelin (Base)",
  Description={
    Format="A javelin is a thin throwing spear. Since it is not designed for melee, you are treated as nonproficient with it and take a -4 penalty on attack rolls if you use a javelin as a melee weapon.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Simple",
    "Thrown",
    "Piercing",
    "Javelin",
    "Spear",
    "Weapon Group Spears",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.146",
})
DefineEquipment({
  Name="Sling",
  Visible=false,
  Cost=0,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=0,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Sling",
  Range=50,
  WieldCategory="OneHandOnly",
  Key="Sling (Base)",
  Description={
    Format="A sling is little more than a leather cup attached to a pair of strings. Your Strength modifier applies to damage rolls when you use a sling, just as it does for thrown weapons. You can fire, but not load, a sling with one hand. Loading a sling is a move action that requires two hands and provokes attacks of opportunity.&nl;You can hurl ordinary stones with a sling, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a -1 penalty on attack rolls.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Simple",
    "Container",
    "Projectile",
    "Bludgeoning",
    "Sling",
    "Weapon Group Thrown",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("STR"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Longbow",
  Visible=false,
  Cost=75,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Longbow",
  Range=100,
  WieldCategory="TwoHandsOnly",
  Key="Longbow (Base)",
  Description={
    Format="At almost 5 feet in height, a longbow is made up of one solid piece of carefully curved wood. You need two hands to use a bow, regardless of its size. A longbow is too unwieldy to use while you are mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a longbow. If you have a Strength bonus, you can apply it to damage rolls when you use a composite longbow, but not when you use a regular longbow.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Martial",
    "Container",
    "Projectile",
    "Piercing",
    "Bow",
    "Longbow",
    "Weapon Group Bows",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("min(STR,0)"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Composite Longbow",
  Visible=false,
  Cost=100,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  ModsRequired=true,
  Size="M",
  Weight=3,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Longbow",
  Range=110,
  WieldCategory="TwoHandsOnly",
  Key="Composite Longbow (Base)",
  Description={
    Format="You need at least two hands to use a bow, regardless of its size. You can use a composite longbow while mounted. All composite bows are made with a particular strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is less than the strength rating of the composite bow, you can't effectively use it, so you take a -2 penalty on attacks with it. The default composite longbow requires a Strength modifier of +0 or higher to use with proficiency. A composite longbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 100 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite longbow.&nl;For purposes of Weapon Proficiency and similar feats, a composite longbow is treated as if it were a longbow.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Martial",
    "Container",
    "Projectile",
    "Piercing",
    "Bow",
    "Longbow",
    "Composite",
    "Weapon Group Bows",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("min(STR,0)"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Shortbow",
  Visible=false,
  Cost=30,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Shortbow",
  Range=60,
  WieldCategory="TwoHandsOnly",
  Key="Shortbow (Base)",
  Description={
    Format="A shortbow is made up of one piece of wood, about 3 feet in length. You need two hands to use a bow, regardless of its size. You can use a shortbow while mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a shortbow. If you have a bonus for high Strength, you can apply it to damage rolls when you use a composite shortbow, but not a regular shortbow.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Martial",
    "Container",
    "Projectile",
    "Piercing",
    "Bow",
    "Shortbow",
    "Weapon Group Bows",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("min(STR,0)"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Composite Shortbow",
  Visible=false,
  Cost=75,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  ModsRequired=true,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Shortbow",
  Range=70,
  WieldCategory="TwoHandsOnly",
  Key="Composite Shortbow (Base)",
  Description={
    Format="You need at least two hands to use a bow, regardless of its size. You can use a composite shortbow while mounted. All composite bows are made with a particular strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is lower than the strength rating of the composite bow, you can't effectively use it, so you take a -2 penalty on attacks with it. The default composite shortbow requires a Strength modifier of +0 or higher to use with proficiency. A composite shortbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 75 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite shortbow.&nl;For purposes of Weapon Proficiency, Weapon Focus, and similar feats, a composite shortbow is treated as if it were a shortbow.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Martial",
    "Container",
    "Projectile",
    "Piercing",
    "Bow",
    "Shortbow",
    "Composite",
    "Weapon Group Bows",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("min(STR,0)"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Bolas",
  Visible=false,
  Cost=5,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonlethal",
    },
    {
      Key="Special Quality ~ Trip",
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Bolas",
  Range=10,
  WieldCategory="OneHandOnly",
  Key="Bolas (Base)",
  Description={
    Format="A bolas is a pair of weights, connected by a thin rope or cord. You can use this weapon to make a ranged trip attack against an opponent. You can't be tripped during your own trip attempt when using a bolas.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Thrown",
    "Bludgeoning",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Hand Crossbow",
  Visible=false,
  Cost=100,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Crossbow (Hand)",
  Range=30,
  WieldCategory="Light",
  Key="Hand Crossbow (Base)",
  Description={
    Format="You can draw a hand crossbow back by hand. Loading a hand crossbow is a move action that provokes attacks of opportunity. You can shoot, but not load, a hand crossbow with one hand at no penalty. You can shoot a hand crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Container",
    "Projectile",
    "Piercing",
    "Crossbow",
    "Weapon Group Crossbows",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Repeating Heavy Crossbow",
  Visible=false,
  Cost=400,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Crossbow (Repeating Heavy)",
  Range=120,
  WieldCategory="TwoHandsOnly",
  Key="Repeating Heavy Crossbow (Base)",
  Description={
    Format="The repeating crossbow (whether heavy or light) holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.&nl;You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Container",
    "Projectile",
    "Piercing",
    "Crossbow",
    "Weapon Group Crossbows",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Repeating Light Crossbow",
  Visible=false,
  Cost=250,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x2",
    CritRange="2",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Crossbow (Repeating Light)",
  Range=80,
  WieldCategory="TwoHandsOnly",
  Key="Repeating Light Crossbow (Base)",
  Description={
    Format="The repeating crossbow (whether heavy or light) holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.&nl;You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Container",
    "Projectile",
    "Piercing",
    "Crossbow",
    "Weapon Group Crossbows",
  },
  SortKey="zzBase",
  SourcePage="p.145",
})
DefineEquipment({
  Name="Net",
  Visible=false,
  Cost=20,
  Size="M",
  Weight=6,
  Proficiency="WEAPON|Net",
  Range=10,
  WieldCategory="OneHandOnly",
  Key="Net (Base)",
  Description={
    Format="A net is used to entangle enemies. When you throw a net, you make a ranged touch attack against your target. A net's maximum range is 10 feet. If you hit, the target is entangled. An entangled creature takes a -2 penalty on attack rolls and a -4 penalty on Dexterity, can move at only half speed, and cannot charge or run. If you control the trailing rope by succeeding on an opposed Strength check while holding it, the entangled creature can move only within the limits that the rope allows. If the entangled creature attempts to cast a spell, it must make a concentration check with a DC of 15 + the spell's level or be unable to cast the spell.&nl;An entangled creature can escape with a DC 20 Escape Artist check (a full-round action). The net has 5 hit points and can be burst with a DC 25 Strength check (also a fullround action). A net is useful only against creatures within one size category of you.&nl;A net must be folded to be thrown effectively. The first time you throw your net in a fight, you make a normal ranged touch attack roll. After the net is unfolded, you take a -4 penalty on attack rolls with it. It takes 2 rounds for a proficient user to fold a net and twice that long for a nonproficient one to do so.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Thrown",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.147",
})
DefineEquipment({
  Name="Shuriken",
  Visible=false,
  Cost=0.2,
  EquipmentModifiers={
    {
      Key="Special Quality ~ Thrown Ammunition",
    },
    {
      Key="Special Quality ~ Monk",
    },
  },
  Size="M",
  Weight=0.1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d2"),
  },
  Proficiency="WEAPON|Shuriken",
  Range=10,
  WieldCategory="Light",
  Key="Shuriken (Base)",
  Description={
    Format="A shuriken is a small piece of metal with sharpened edges, designed for throwing. A shuriken can't be used as a melee weapon. Although they are thrown weapons, shuriken are treated as ammunition for the purposes of drawing them, crafting masterwork or otherwise special versions of them, and what happens to them after they are thrown.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Thrown",
    "Consumable",
    "Ammunition",
    "Piercing",
    "Shuriken",
    "Weapon Group Monk",
    "Weapon Group Thrown",
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
DefineEquipment({
  Name="Halfling Sling Staff",
  Visible=false,
  Cost=20,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Size="S",
  Weight=3,
  Attack={
    CritMultiplier="x3",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Sling Staff (Halfling)",
  Range=80,
  WieldCategory="OneHandOnly",
  Key="Halfling Sling Staff (Base)",
  Description={
    Format="Made from a specially designed sling attached to a short club, a halfling sling staff can be used by a proficient wielder to devastating effect. Your Strength modifier applies to damage rolls when you use a halfling sling staff, just as it does for thrown weapons. You can fire, but not load, a halfling sling staff with one hand. Loading a halfling sling staff is a move action that requires two hands and provokes attacks of opportunity.&nl;You can hurl ordinary stones with a halfling sling staff, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a -1 penalty on attack rolls.&nl;A halfling sling staff can be used as a simple weapon that deals bludgeoning damage equal to that of a club of its size. Halflings treat halfling sling staves as martial weapons.",
  },
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Container",
    "Projectile",
    "Halfling",
    "Bludgeoning",
    "Sling",
    "Weapon Group Thrown",
  },
  Bonuses={
    {
      Category="WEAPON",
      Variables={
        "DAMAGE",
      },
      Formula=Formula("STR"),
    },
  },
  SortKey="zzBase",
  SourcePage="p.148",
})
CopyEquipment("Blowgun (Base)", {
  Name="Blowgun",
  Visible=true,
  Cost=0,
  BaseItem="Blowgun (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Blowgun",
  SortKey="Blowgun",
})
CopyEquipment("Heavy Crossbow (Base)", {
  Name="Crossbow, Heavy",
  Visible=true,
  Cost=0,
  BaseItem="Heavy Crossbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Crossbow (Heavy)",
  DisplayName="Heavy Crossbow",
  SortKey="Crossbow, Heavy",
})
CopyEquipment("Light Crossbow (Base)", {
  Name="Crossbow, Light",
  Visible=true,
  Cost=0,
  BaseItem="Light Crossbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Crossbow (Light)",
  DisplayName="Light Crossbow",
  SortKey="Crossbow, Light",
})
CopyEquipment("Dart (Base)", {
  Name="Dart",
  Visible=true,
  Cost=0,
  BaseItem="Dart (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Dart",
  SortKey="Dart",
})
CopyEquipment("Javelin (Base)", {
  Name="Javelin",
  Visible=true,
  Cost=0,
  BaseItem="Javelin (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Javelin",
  SortKey="Javelin",
})
CopyEquipment("Sling (Base)", {
  Name="Sling",
  Visible=true,
  Cost=0,
  BaseItem="Sling (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Sling",
  SortKey="Sling",
})
CopyEquipment("Longbow (Base)", {
  Name="Longbow",
  Visible=true,
  Cost=0,
  BaseItem="Longbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Longbow",
  SortKey="Longbow",
})
CopyEquipment("Composite Longbow (Base)", {
  Name="Longbow, Composite",
  Visible=true,
  Cost=0,
  BaseItem="Composite Longbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Longbow (Composite)",
  DisplayName="Composite Longbow",
  SortKey="Longbow, Composite",
})
CopyEquipment("Composite Longbow (Base)", {
  Name="Longbow, Composite (+0 Str)",
  Visible=true,
  Cost=0,
  BaseItem="Composite Longbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Quality ~ Composite Bow Strength Rating",
      Parameters={
        Formula("0"),
      },
    },
  },
  CanHaveMods=false,
  Key="Longbow (Composite +0)",
  DisplayName="Composite Longbow (+0 Str)",
  SortKey="Longbow, Composite (+0 Str)",
})
CopyEquipment("Shortbow (Base)", {
  Name="Shortbow",
  Visible=true,
  Cost=0,
  BaseItem="Shortbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Shortbow",
  SortKey="Shortbow",
})
CopyEquipment("Composite Shortbow (Base)", {
  Name="Shortbow, Composite",
  Visible=true,
  Cost=0,
  BaseItem="Composite Shortbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Shortbow (Composite)",
  DisplayName="Composite Shortbow",
  SortKey="Shortbow, Composite",
})
CopyEquipment("Composite Shortbow (Base)", {
  Name="Shortbow, Composite (+0 Str)",
  Visible=true,
  Cost=0,
  BaseItem="Composite Shortbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Quality ~ Composite Bow Strength Rating",
      Parameters={
        Formula("0"),
      },
    },
  },
  CanHaveMods=false,
  Key="Shortbow (Composite +0)",
  DisplayName="Composite Shortbow (+0 Str)",
  SortKey="Shortbow, Composite (+0 Str)",
})
CopyEquipment("Bolas (Base)", {
  Name="Bolas",
  Visible=true,
  Cost=0,
  BaseItem="Bolas (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
  Key="Bolas",
  SortKey="Bolas",
})
CopyEquipment("Hand Crossbow (Base)", {
  Name="Crossbow, Hand",
  Visible=true,
  Cost=0,
  BaseItem="Hand Crossbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Crossbow (Hand)",
  DisplayName="Hand Crossbow",
  SortKey="Crossbow, Hand",
})
CopyEquipment("Repeating Heavy Crossbow (Base)", {
  Name="Crossbow, Repeating Heavy",
  Visible=true,
  Cost=0,
  BaseItem="Repeating Heavy Crossbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Crossbow (Repeating Heavy)",
  DisplayName="Repeating Heavy Crossbow",
  SortKey="Crossbow, Repeating Heavy",
})
CopyEquipment("Repeating Light Crossbow (Base)", {
  Name="Crossbow, Repeating Light",
  Visible=true,
  Cost=0,
  BaseItem="Repeating Light Crossbow (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
  Key="Crossbow (Repeating Light)",
  DisplayName="Repeating Light Crossbow",
  SortKey="Crossbow, Repeating Light",
})
CopyEquipment("Net (Base)", {
  Name="Net",
  Visible=true,
  Cost=0,
  BaseItem="Net (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Rope",
    },
  },
  Key="Net",
  SortKey="Net",
})
CopyEquipment("Shuriken (Base)", {
  Name="Shuriken",
  Visible=true,
  Cost=0,
  BaseItem="Shuriken (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Key="Shuriken",
  SortKey="Shuriken",
})
CopyEquipment("Halfling Sling Staff (Base)", {
  Name="Sling Staff, Halfling",
  Visible=true,
  Cost=0,
  BaseItem="Halfling Sling Staff (Base)",
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Key="Sling Staff (Halfling)",
  DisplayName="Halfling Sling Staff",
  SortKey="Sling Staff, Halfling",
})
CopyEquipment("Javelin (Base)", {
  Name="Javelin of Lightning",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("1499"),
      },
    },
  },
  Qualities={
    Aura="faint evocation",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="750 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, lightning bolt",
  },
  Key="Javelin of Lightning",
  Description={
    Format="This javelin becomes a 5d6 lightning bolt when thrown (Reflex DC 14 half ). It is consumed in the attack.",
  },
  SpecialProperties={
    {
      Format="becomes a 5d6 lightning bolt when thrown (Reflex DC 14 half )",
    },
  },
  SortKey="Javelin of Lightning",
  SourcePage="p.473",
})
CopyEquipment("Composite Longbow (Base)", {
  Name="Oathbow",
  Visible=true,
  Cost=0,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
    {
      Key="Special Ability ~ +2 ~ Weapon",
    },
    {
      Key="Special Ability ~ Enhancement Cost",
      Parameters={
        Formula("25000"),
      },
    },
    {
      Key="Special Quality ~ Composite Bow Strength Rating",
      Parameters={
        Formula("2"),
      },
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="15th",
    Slot="none",
    ['Construction Cost']="13,100 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, creator must be an elf",
  },
  Key="Oathbow",
  Description={
    Format="Of elven make, this white +2 composite longbow (+2 Str bonus) whispers, \"Swift defeat to my enemies\" in Elven when nocked and pulled. Once per day, if the archer swears aloud to slay her target (a free action), the bow's whisper becomes the shout \"Death to those who have wronged me!\" Against such a sworn enemy, the bow has a +5 enhancement bonus, and arrows launched from it deal an additional 2d6 points of damage (and x4 on a critical hit instead of the normal x3). After an enemy has been sworn, the bow is treated as only a masterwork weapon against all foes other than the sworn enemy, and the archer takes a -1 penalty on attack rolls with any weapon other than the oathbow. These bonuses and penalties last for 7 days or until the sworn enemy is slain or destroyed by the wielder of the oathbow, whichever comes first.&nl;The oathbow may only have one sworn enemy at a time. Once the wielder swears to slay a target, he cannot make a new oath until he has slain that target or 7 days have passed. Even if the wielder slays the sworn enemy on the same day that he makes the oath, he cannot activate the oathbow's special power again until 24 hours have passed from the time he made the oath.",
  },
  SpecialProperties={
    {
      Format="+5 enhancement bonus against sworn enemy and arrows launched from it deal an additional 2d6 points of damage with x4 critical",
    },
  },
  SortKey="Oathbow",
  SourcePage="p.474",
})
DefineEquipment({
  Name="Improvised Weapon (1d2)",
  Cost=0,
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d2"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d3)",
  Cost=0,
  Size="M",
  Weight=1,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d3"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d4)",
  Cost=0,
  Size="M",
  Weight=2,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d4"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d6)",
  Cost=0,
  Size="M",
  Weight=6,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d6"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d8)",
  Cost=0,
  Size="M",
  Weight=10,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d8"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d10)",
  Cost=0,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d10"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d12)",
  Cost=0,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("1d12"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d4)",
  Cost=0,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("2d4"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d6)",
  Cost=0,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("2d6"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d8)",
  Cost=0,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("2d8"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d10)",
  Cost=0,
  Size="M",
  Weight=12,
  Attack={
    CritMultiplier="x2",
    CritRange="1",
    Damage=DiceFormula("2d10"),
  },
  Proficiency="WEAPON|Improvised Weapon",
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
