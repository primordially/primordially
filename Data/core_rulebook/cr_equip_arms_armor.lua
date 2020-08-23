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
  Key="Arrow (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Cost=0.05,
  Description={
    Format="An arrow used as a melee weapon is treated as a light improvised weapon (-4 penalty on attack rolls) and deals damage as a dagger of its size (critical multiplier x2). Arrows come in a leather quiver that holds 20 arrows.",
  },
  SourcePage="p.145",
  Visible=false,
  Weight=0.15,
  Types={
    "Ammunition",
    "Resizable",
    "Arrow",
  },
})
DefineEquipment({
  Name="Bolt",
  Key="Bolt (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Cost=0.1,
  Description={
    Format="A crossbow bolt used as a melee weapon is treated as a light improvised weapon (-4 penalty on attack rolls) and deals damage as a dagger of its size (crit x2). Bolts come in a case or quiver that holds 10 bolts (or 5, for a repeating crossbow).",
  },
  SourcePage="p.145",
  Visible=false,
  Weight=0.1,
  Types={
    "Ammunition",
    "Resizable",
    "Bolt",
  },
})
DefineEquipment({
  Name="Repeating Bolt",
  Key="Repeating Bolt (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Cost=0.2,
  Description={
    Format="A crossbow bolt used as a melee weapon is treated as a light improvised weapon (-4 penalty on attack rolls) and deals damage as a dagger of its size (crit x2). Bolts come in a case or quiver that holds 10 bolts (or 5, for a repeating crossbow).",
  },
  SourcePage="p.145",
  Visible=false,
  Weight=0.2,
  Types={
    "Ammunition",
    "Resizable",
    "Bolt",
  },
})
DefineEquipment({
  Name="Bullet",
  Key="Sling Bullet (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Cost=0.01,
  Description={
    Format="Bullets are shaped metal balls, designed to be used by a sling or halfling sling staff. Bullets come in a leather pouch that holds 10 bullets.",
  },
  SourcePage="p.145",
  Visible=false,
  Weight=0.5,
  Types={
    "Ammunition",
    "Resizable",
    "Bullet",
  },
})
DefineEquipment({
  Name="Blowgun Dart",
  Key="Blowgun Dart (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Cost=0.05,
  SourcePage="p.142",
  Visible=false,
  Weight=0,
  Types={
    "Ammunition",
    "Resizable",
    "Dart",
  },
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow",
  Key="Arrow",
  SortKey="Arrow",
  BaseItem="Arrow (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Bolt (Base)", {
  Name="Bolt, Crossbow",
  Key="Bolt (Crossbow)",
  SortKey="Bolt, Crossbow",
  BaseItem="Bolt (Base)",
  CanHaveMods=true,
  DisplayName="Bolt",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Repeating Bolt (Base)", {
  Name="Bolt, Repeating Crossbow",
  Key="Bolt (Crossbow/Repeating)",
  SortKey="Bolt, Repeating Crossbow",
  BaseItem="Repeating Bolt (Base)",
  CanHaveMods=true,
  DisplayName="Repeating Bolt",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Sling Bullet (Base)", {
  Name="Bullet, Sling",
  Key="Bullet (Sling)",
  SortKey="Bullet, Sling",
  BaseItem="Sling Bullet (Base)",
  CanHaveMods=true,
  DisplayName="Bullet",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Blowgun Dart (Base)", {
  Name="Dart, Blowgun",
  Key="Dart (Blowgun)",
  SortKey="Dart, Blowgun",
  BaseItem="Blowgun Dart (Base)",
  CanHaveMods=true,
  DisplayName="Blowgun Dart",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Arrow (Base)", {
  Name="Arrows (20)",
  Key="Arrows (20)",
  SortKey="Arrow (20)",
  BaseItem="Arrow (Base)",
  BaseQuantity=20,
  CanHaveMods=true,
  Cost=1,
  DisplayName="20 Arrows",
  Visible=true,
  Weight=3,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Types={
    "Stack",
  },
})
CopyEquipment("Bolt (Base)", {
  Name="Bolts, Crossbow (10)",
  Key="Bolts (Crossbow/10)",
  SortKey="Bolt, Crossbow (10)",
  BaseItem="Bolt (Base)",
  BaseQuantity=10,
  CanHaveMods=true,
  Cost=1,
  DisplayName="10 Bolts",
  Visible=true,
  Weight=1,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Types={
    "Stack",
  },
})
CopyEquipment("Repeating Bolt (Base)", {
  Name="Bolts, Repeating Crossbow (5)",
  Key="Bolts (Crossbow/Repeating/5)",
  SortKey="Bolt, Repeating Crossbow (5)",
  BaseItem="Repeating Bolt (Base)",
  BaseQuantity=5,
  CanHaveMods=true,
  Cost=1,
  DisplayName="5 Repeating Bolts",
  Visible=true,
  Weight=1,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
  Types={
    "Stack",
  },
})
CopyEquipment("Sling Bullet (Base)", {
  Name="Bullets, Sling (10)",
  Key="Bullets (Sling/10)",
  SortKey="Bullet, Sling (10)",
  BaseItem="Sling Bullet (Base)",
  BaseQuantity=10,
  CanHaveMods=true,
  Cost=0.1,
  DisplayName="10 Bullets",
  Visible=true,
  Weight=5,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Types={
    "Stack",
  },
})
CopyEquipment("Blowgun Dart (Base)", {
  Name="Darts, Blowgun (10)",
  Key="Darts (Blowgun/10)",
  SortKey="Dart, Blowgun (10)",
  BaseItem="Blowgun Dart (Base)",
  BaseQuantity=10,
  CanHaveMods=true,
  Cost=0.5,
  DisplayName="10 Blowgun Darts",
  Visible=true,
  Weight=0,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  Types={
    "Stack",
  },
})
CopyEquipment("Bolt (Base)", {
  Name="Bolt, Screaming",
  Key="Bolt (Screaming)",
  SortKey="Bolt, Screaming",
  CanHaveMods=false,
  Cost=0,
  Description={
    Format="These +2 bolts scream when fired, forcing all enemies of the wielder within 20 feet of the path of the bolt to succeed on a DC 14 Will save or become shaken. This is a mind-affecting fear effect.",
  },
  DisplayName="Screaming Bolt",
  ModsRequired=false,
  SourcePage="p.475",
  Visible=true,
  Weight=0.1,
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
  Qualities={
    Aura="faint enchantment",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="137 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, doom",
  },
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow, Slaying",
  Key="Arrow (Slaying)",
  SortKey="Arrow, Slaying",
  CanHaveMods=false,
  Cost=0,
  Description={
    Format="This +1 arrow is keyed to a particular type or subtype of creature. If it strikes such a creature, the target must make a DC 20 Fortitude save or take 50 points of damage. Note that even creatures normally exempt from Fortitude saves (undead and constructs) are subject to this attack. When keyed to a living creature, this is a death effect (and thus death ward protects a target).",
  },
  DisplayName="Slaying Arrow",
  ModsRequired=false,
  SourcePage="p.476",
  Visible=true,
  Weight=0.1,
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
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="1,144 gp 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, finger of death",
  },
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow, Greater Slaying",
  Key="Arrow (Slaying/Greater)",
  SortKey="Arrow, Slaying (Greater)",
  CanHaveMods=false,
  Cost=0,
  Description={
    Format="This +1 arrow is keyed to a particular type or subtype of creature. If it strikes such a creature, the target must make a DC 23 Fortitude save or take 100 points of damage. Note that even creatures normally exempt from Fortitude saves (undead and constructs) are subject to this attack. When keyed to a living creature, this is a death effect (and thus death ward protects a target).",
  },
  DisplayName="Greater Slaying Arrow",
  ModsRequired=false,
  SourcePage="p.476",
  Visible=true,
  Weight=0.1,
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
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="2,032 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, heightened finger of death",
  },
})
CopyEquipment("Arrow (Base)", {
  Name="Arrow, Sleep",
  Key="Arrow (Sleep)",
  SortKey="Arrow, Sleep",
  CanHaveMods=false,
  Cost=0,
  Description={
    Format="This +1 arrow is painted white and has white fletching. If it strikes a foe so that it would normally deal damage, it instead bursts into magical energy that deals nonlethal damage (in the same amount as would lethal damage) and forces the target to make a DC 11 Will save or fall asleep.",
  },
  DisplayName="Sleep Arrow",
  ModsRequired=false,
  SourcePage="p.476",
  Visible=true,
  Weight=0.1,
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
  Qualities={
    Aura="faint enchantment",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="70 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, sleep",
  },
})
DefineEquipment({
  Name="Padded Armor",
  Key="Padded Armor (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=5,
  ArmorCheckPenalty=0,
  CanHaveMods=true,
  Cost=5,
  Description={
    Format="Little more than heavy, quilted cloth, this armor provides only the most basic protection.",
  },
  MaxDex=8,
  Proficiency="ARMOR|Padded",
  SourcePage="p.151",
  Visible=false,
  Weight=10,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Armor",
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
      Category="VAR",
      Formula=Formula("0"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
    "Nonmetal",
  },
})
DefineEquipment({
  Name="Leather Armor",
  Key="Leather Armor (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=10,
  ArmorCheckPenalty=0,
  CanHaveMods=true,
  Cost=10,
  Description={
    Format="Leather armor is made up of pieces of hard boiled leather carefully sewn together.",
  },
  MaxDex=6,
  Proficiency="ARMOR|Leather",
  SourcePage="p.151",
  Visible=false,
  Weight=15,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-1"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("0"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
    "Nonmetal",
  },
})
DefineEquipment({
  Name="Studded Leather Armor",
  Key="Studded Leather (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=15,
  ArmorCheckPenalty=-1,
  CanHaveMods=true,
  Cost=25,
  Description={
    Format="Similar to leather armor, this suit is reinforced with small metal studs.",
  },
  MaxDex=5,
  Proficiency="ARMOR|Studded Leather",
  SourcePage="p.153",
  Visible=false,
  Weight=20,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("3"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-1"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-1"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
  },
})
DefineEquipment({
  Name="Chain Shirt",
  Key="Chain Shirt (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=20,
  ArmorCheckPenalty=-2,
  CanHaveMods=true,
  Cost=100,
  Description={
    Format="Covering the torso, this shirt is made up of thousands of interlocking metal rings.",
  },
  MaxDex=4,
  Proficiency="ARMOR|Chain Shirt",
  SourcePage="p.150",
  Visible=false,
  Weight=25,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("4"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-2"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-2"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
  },
})
DefineEquipment({
  Name="Hide Armor",
  Key="Hide Armor (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=20,
  ArmorCheckPenalty=-3,
  CanHaveMods=true,
  Cost=15,
  Description={
    Format="Hide armor is made up of the tanned and preserved skin of any thick-hided beast.",
  },
  MaxDex=4,
  Proficiency="ARMOR|Hide",
  SourcePage="p.151",
  Visible=false,
  Weight=25,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("4"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-2"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("3"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-3"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
    "Nonmetal",
  },
})
DefineEquipment({
  Name="Scale Mail",
  Key="Scale Mail (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=25,
  ArmorCheckPenalty=-4,
  CanHaveMods=true,
  Cost=50,
  Description={
    Format="Scale mail is made up of dozens of small overlapping metal plates. The suit includes gauntlets.",
  },
  MaxDex=3,
  Proficiency="ARMOR|Scale Mail",
  SourcePage="p.151",
  Visible=false,
  Weight=30,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("5"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-2"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-4"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
  },
})
DefineEquipment({
  Name="Chainmail",
  Key="Chainmail (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=30,
  ArmorCheckPenalty=-5,
  CanHaveMods=true,
  Cost=150,
  Description={
    Format="Unlike a chain shirt, chainmail covers the legs and arms of the wearer. The suit includes gauntlets.",
  },
  MaxDex=2,
  Proficiency="ARMOR|Chainmail",
  SourcePage="p.150",
  Visible=false,
  Weight=40,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("6"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-3"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("5"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-5"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
  },
})
DefineEquipment({
  Name="Breastplate",
  Key="Breastplate (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=25,
  ArmorCheckPenalty=-4,
  CanHaveMods=true,
  Cost=200,
  Description={
    Format="Covering only the torso, a breastplate is made up of a single piece of sculpted metal.",
  },
  MaxDex=3,
  Proficiency="ARMOR|Breastplate",
  SourcePage="p.150",
  Visible=false,
  Weight=30,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("6"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-3"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("4"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-4"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Medium",
    "ArmorProfMedium",
    "Suit",
  },
})
DefineEquipment({
  Name="Splint Mail",
  Key="Splint Mail (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=40,
  ArmorCheckPenalty=-7,
  CanHaveMods=true,
  Cost=200,
  Description={
    Format="Splint mail is made up of metal strips, like banded mail. The suit includes gauntlets.",
  },
  MaxDex=0,
  Proficiency="ARMOR|Splint Mail",
  SourcePage="p.153",
  Visible=false,
  Weight=45,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("7"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-3"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-7"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
})
DefineEquipment({
  Name="Banded Mail",
  Key="Banded Mail (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=35,
  ArmorCheckPenalty=-6,
  CanHaveMods=true,
  Cost=250,
  Description={
    Format="Banded mail is made up of overlapping strips of metal, fastened to a leather backing. The suit includes gauntlets.",
  },
  MaxDex=1,
  Proficiency="ARMOR|Banded Mail",
  SourcePage="p.150",
  Visible=false,
  Weight=35,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("7"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-3"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-6"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
})
DefineEquipment({
  Name="Half-Plate",
  Key="Half-Plate (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=40,
  ArmorCheckPenalty=-7,
  CanHaveMods=true,
  Cost=600,
  Description={
    Format="Combining elements of full plate and chainmail, half-plate includes gauntlets and a helm.",
  },
  MaxDex=0,
  Proficiency="ARMOR|Half-Plate",
  SourcePage="p.151",
  Visible=false,
  Weight=50,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("8"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-4"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("7"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-7"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
})
DefineEquipment({
  Name="Full Plate",
  Key="Full Plate (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=35,
  ArmorCheckPenalty=-6,
  CanHaveMods=true,
  Cost=1500,
  Description={
    Format="This metal suit includes gauntlets, heavy leather boots, a visored helmet, and a thick layer of padding that is worn underneath the armor. Each suit of full plate must be individually fitted to its owner by a master armorsmith, although a captured suit can be resized to fit a new owner at a cost of 200 to 800 (2d4 x 100) gold pieces.",
  },
  MaxDex=1,
  Proficiency="ARMOR|Full Plate",
  SourcePage="p.150",
  Visible=false,
  Weight=50,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("9"),
      Type={
        Name="Armor",
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
      Category="COMBAT",
      Formula=Formula("-4"),
      Type={
        Name="Armor",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("6"),
      Type={
        Name="BaseArmor",
      },
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-6"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Armor"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  Types={
    "Armor",
    "Heavy",
    "ArmorProfHeavy",
    "Suit",
  },
})
CopyEquipment("Padded Armor (Base)", {
  Name="Padded Armor",
  Key="Padded",
  SortKey="Padded Armor",
  BaseItem="Padded Armor (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Cloth",
    },
  },
})
CopyEquipment("Leather Armor (Base)", {
  Name="Leather Armor",
  Key="Leather",
  SortKey="Leather Armor",
  BaseItem="Leather Armor (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Studded Leather (Base)", {
  Name="Studded Leather Armor",
  Key="Studded Leather",
  SortKey="Studded Leather Armor",
  BaseItem="Studded Leather (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Chain Shirt (Base)", {
  Name="Chain Shirt",
  Key="Chain Shirt",
  SortKey="Chain Shirt",
  BaseItem="Chain Shirt (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Hide Armor (Base)", {
  Name="Hide Armor",
  Key="Hide",
  SortKey="Hide Armor",
  BaseItem="Hide Armor (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Scale Mail (Base)", {
  Name="Scale Mail",
  Key="Scale Mail",
  SortKey="Scale Mail",
  BaseItem="Scale Mail (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Chainmail (Base)", {
  Name="Chainmail",
  Key="Chainmail",
  SortKey="Chainmail",
  BaseItem="Chainmail (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Breastplate (Base)", {
  Name="Breastplate",
  Key="Breastplate",
  SortKey="Breastplate",
  BaseItem="Breastplate (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Splint Mail (Base)", {
  Name="Splint Mail",
  Key="Splint Mail",
  SortKey="Splint Mail",
  BaseItem="Splint Mail (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Banded Mail (Base)", {
  Name="Banded Mail",
  Key="Banded Mail",
  SortKey="Banded Mail",
  BaseItem="Banded Mail (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Half-Plate (Base)", {
  Name="Half-Plate",
  Key="Half-Plate",
  SortKey="Half-Plate",
  BaseItem="Half-Plate (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Full Plate",
  Key="Full Plate",
  SortKey="Full Plate",
  BaseItem="Full Plate (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Breastplate (Base)", {
  Name="Adamantine Breastplate",
  Key="Adamantine Breastplate",
  SortKey="Adamantine Breastplate",
  CanHaveMods=true,
  Description={
    Format="This nonmagical breastplate is made of adamantine, giving its wearer damage reduction of 2/--.",
  },
  SourcePage="p.464",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Armor / Medium",
    },
  },
})
CopyEquipment("Banded Mail (Base)", {
  Name="Banded Mail of Luck",
  Key="Banded Mail of Luck",
  SortKey="Banded Mail of Luck",
  CanHaveMods=true,
  Description={
    Format="Ten 100-gp gems adorn this +3 banded mail. Once per week, the armor allows its wearer to require that an attack roll made against him be rerolled. He must take whatever consequences come from the second roll. The wearer's player must decide whether to have the attack roll rerolled before damage is rolled.",
  },
  SourcePage="p.465",
  Visible=true,
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
})
CopyEquipment("Breastplate (Base)", {
  Name="Breastplate of Command",
  Key="Breastplate of Command",
  SortKey="Breastplate of Command",
  CanHaveMods=true,
  Description={
    Format="This +2 breastplate bestows a commanding aura upon its wearer. The wearer gains a +2 competence bonus on all Charisma checks, including Charisma-based skill checks. The wearer also gains a +2 competence bonus to his Leadership score. Friendly troops within 360 feet of the user become braver than normal, gaining a +2 resistance bonus on saving throws against fear. Since the effect arises in great part from the distinctiveness of the armor, it does not function if the wearer hides or conceals herself in any way.",
  },
  SourcePage="p.465",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("2"),
      Type={
        Name="Competence",
      },
      Variables={
        "TYPE=Charisma",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Competence",
      },
      Variables={
        "LeadershipScore",
      },
    },
  },
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
})
CopyEquipment("Chainmail (Base)", {
  Name="Celestial Armor",
  Key="Celestial Armor",
  SortKey="Celestial Armor",
  ArcaneSpellFailureChance=15,
  CanHaveMods=true,
  Description={
    Format="This bright silver or gold +3 chainmail is so fine and light that it can be worn under normal clothing without betraying its presence. It has a maximum Dexterity bonus of +8, an armor check penalty of -2, and an arcane spell failure chance of 15%%. It is considered light armor and allows the wearer to use fly on command (as the spell) once per day.",
  },
  MaxDex=8,
  SourcePage="p.465",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-2"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("2"),
      Variables={
        "ACCHECK",
      },
    },
  },
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
  Types={
    "Armor",
    "Light",
    "ArmorProfLight",
    "Suit",
  },
  Qualities={
    Aura="faint transmutation [good]",
    ['Caster Level']="5th",
    Slot="armor",
    ['Construction Cost']="11,350 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, fly, creator must be good",
  },
  Clear={
    Types=nil,
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Demon Armor",
  Key="Demon Armor",
  SortKey="Demon Armor",
  CanHaveMods=true,
  Description={
    Format="This plate armor is fashioned to make the wearer appear to be a demon. The helmet is shaped to look like a horned demon head, and its wearer looks out of the open, tooth-filled mouth. This +4 full plate allows the wearer to make claw attacks that deal 1d10 points of damage, strike as +1 weapons, and afflict the target as if she had been struck by a contagion spell (Fortitude DC 14 negates). Use of contagion requires a normal melee attack with the claws. The \"claws\" are built into the armor's vambraces and gauntlets, and cannot be disarmed.&nl;A suit of demon armor is infused with evil, and as a result it bestows one negative level on any nonevil creature wearing it. This negative level persists as long as the armor is worn and disappears when the armor is removed. The negative level cannot be overcome in any way (including restoration spells) while the armor is worn.",
  },
  SourcePage="p.465",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return not (character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE"))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
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
})
CopyEquipment("Full Plate (Base)", {
  Name="Dwarven Plate",
  Key="Dwarven Plate",
  SortKey="Dwarven Plate",
  CanHaveMods=true,
  Description={
    Format="This full plate is made of adamantine, giving its wearer damage reduction of 3/--.",
  },
  SourcePage="p.466",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Armor / Heavy",
    },
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Dragonhide Plate",
  Key="Dragonhide Plate",
  SortKey="Dragonhide Plate",
  CanHaveMods=true,
  Description={
    Format="This suit of full plate is made of dragonhide, rather than metal, so druids can wear it. It is otherwise identical to masterwork full plate.",
  },
  SourcePage="p.466",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Dragonhide",
    },
  },
})
CopyEquipment("Chainmail (Base)", {
  Name="Elven Chain",
  Key="Elven Chain",
  SortKey="Elven Chain",
  CanHaveMods=true,
  Description={
    Format="This extremely light chainmail is made of very fine mithral links. This armor is treated, in all ways, like light armor, including when determining proficiency. The armor has an arcane spell failure chance of 20%%, a maximum Dexterity bonus of +4, and an armor check penalty of -2.",
  },
  SourcePage="p.466",
  Visible=true,
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
  Types={
    "Armor",
    "Medium",
    "ArmorProfLight",
    "Suit",
  },
  Clear={
    Types=nil,
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Mithral Full Plate of Speed",
  Key="Mithral Full Plate of Speed",
  SortKey="Mithral Full Plate of Speed",
  CanHaveMods=true,
  Description={
    Format="As a free action, the wearer of this fine set of +1 mithral full plate can activate it, enabling him to act as though affected by a haste spell for up to 10 rounds each day. The duration of the haste effect need not be consecutive rounds.&nl;The armor has an arcane spell failure chance of 25%%, a maximum Dexterity bonus of +3, and an armor check penalty of -3. It is considered medium armor, except that you must be proficient in heavy armor to avoid taking nonproficiency penalties.",
  },
  SourcePage="p.466",
  Visible=true,
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
})
CopyEquipment("Chain Shirt (Base)", {
  Name="Mithral Shirt",
  Key="Mithral Shirt",
  SortKey="Mithral Shirt",
  CanHaveMods=true,
  Description={
    Format="This extremely light chain shirt is made of very fine mithral links. The armor has an arcane spell failure chance of 10%%, a maximum Dexterity bonus of +6, and no armor check penalty. It is considered light armor.",
  },
  SourcePage="p.466",
  Visible=true,
  Weight=20,
  EquipmentModifiers={
    {
      Key="Material ~ Mithril ~ Armor / Light",
    },
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Plate Armor of the Deep",
  Key="Plate Armor of the Deep",
  SortKey="Plate Armor of the Deep",
  CanHaveMods=true,
  Description={
    Format="This +1 full plate is decorated with a wave and fish motif. Although the armor remains as heavy and bulky as normal full plate, the wearer of plate armor of the deep is treated as unarmored for purposes of Swim checks. The wearer can breathe underwater and can converse with any water-breathing creature with a language.",
  },
  SourcePage="p.466",
  Visible=true,
  Bonuses={
    {
      Category="SKILL",
      Formula=Formula("5"),
      Variables={
        "Swim",
      },
    },
  },
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
})
CopyEquipment("Hide Armor (Base)", {
  Name="Rhino Hide",
  Key="Rhino Hide",
  SortKey="Rhino Hide",
  CanHaveMods=true,
  Description={
    Format="This +2 hide armor is made from rhinoceros hide. In addition to granting a +2 enhancement bonus to AC, it has a -1 armor check penalty and deals an additional 2d6 points of damage on any successful charge attack made by the wearer, including a mounted charge.",
  },
  SourcePage="p.466",
  Visible=true,
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("-1"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("1"),
      Variables={
        "ACCHECK",
      },
    },
  },
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
})
CopyEquipment("Padded Armor (Base)", {
  Name="Padded Barding",
  Key="Padded Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Light)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Leather Armor (Base)", {
  Name="Leather Barding",
  Key="Leather Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Light)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Studded Leather (Base)", {
  Name="Studded Leather Barding",
  Key="Studded Leather Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Light)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Chain Shirt (Base)", {
  Name="Chain Shirt Barding",
  Key="Chain Shirt Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Light)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Hide Armor (Base)", {
  Name="Hide Barding",
  Key="Hide Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Medium)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Scale Mail (Base)", {
  Name="Scale Mail Barding",
  Key="Scale Mail Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Medium)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Chainmail (Base)", {
  Name="Chainmail Barding",
  Key="Chainmail Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Medium)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Breastplate (Base)", {
  Name="Breastplate Barding",
  Key="Breastplate Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Medium)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Splint Mail (Base)", {
  Name="Splint Mail Barding",
  Key="Splint Mail Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Heavy)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Banded Mail (Base)", {
  Name="Banded Mail Barding",
  Key="Banded Mail Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Heavy)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Half-Plate (Base)", {
  Name="Half-Plate Barding",
  Key="Half-Plate Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Heavy)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Full Plate (Base)", {
  Name="Full Plate Barding",
  Key="Full Plate Barding (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Description={
    Format="Barding is a type of armor that covers the head, neck, chest, body, and possibly legs of a horse or other mount. Barding made of medium or heavy armor provides better protection than light barding, but at the expense of speed. Barding can be made of any of the armor types.&nl; Armor for a horse (a Large nonhumanoid creature) costs four times as much as human armor (a Medium humanoid creature) and also weighs twice as much. If the barding is for a pony or other Medium mount, the cost is only double, and the weight is the same as for Medium armor worn by a humanoid. Medium or heavy barding slows a mount that wears it.&nl; Flying mounts can't fly in medium or heavy barding.&nl; Removing and fitting barding takes five times as long normal. A barded animal cannot be used to carry any load other than a rider and normal saddlebags.",
  },
  Proficiency="ARMOR|Barding (Heavy)",
  SourcePage="p.162",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonhumanoid ~ Armor",
    },
  },
  Types={
    "Barding",
    "Mount",
  },
})
CopyEquipment("Padded Barding (Base)", {
  Name="Barding, Padded",
  Key="Barding (Padded)",
  SortKey="Barding, Padded",
  BaseItem="Padded Barding (Base)",
  CanHaveMods=true,
  DisplayName="Padded Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Cloth",
    },
  },
})
CopyEquipment("Leather Barding (Base)", {
  Name="Barding, Leather",
  Key="Barding (Leather)",
  SortKey="Barding, Leather",
  BaseItem="Leather Barding (Base)",
  CanHaveMods=true,
  DisplayName="Leather Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Studded Leather Barding (Base)", {
  Name="Barding, Studded Leather",
  Key="Barding (Studded Leather)",
  SortKey="Barding, Studded Leather",
  BaseItem="Studded Leather Barding (Base)",
  CanHaveMods=true,
  DisplayName="Studded Leather Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
      Parameters={
        Formula("Material ~ Steel"),
      },
    },
  },
})
CopyEquipment("Chain Shirt Barding (Base)", {
  Name="Barding, Chain Shirt",
  Key="Barding (Chain Shirt)",
  SortKey="Barding, Chain Shirt",
  BaseItem="Chain Shirt Barding (Base)",
  CanHaveMods=true,
  DisplayName="Chain Shirt Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Hide Barding (Base)", {
  Name="Barding, Hide",
  Key="Barding (Hide)",
  SortKey="Barding, Hide",
  BaseItem="Hide Barding (Base)",
  CanHaveMods=true,
  DisplayName="Hide Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Scale Mail Barding (Base)", {
  Name="Barding, Scale Mail",
  Key="Barding (Scale Mail)",
  SortKey="Barding, Scale Mail",
  BaseItem="Scale Mail Barding (Base)",
  CanHaveMods=true,
  DisplayName="Scale Mail Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Chainmail Barding (Base)", {
  Name="Barding, Chainmail",
  Key="Barding (Chainmail)",
  SortKey="Barding, Chainmail",
  BaseItem="Chainmail Barding (Base)",
  CanHaveMods=true,
  DisplayName="Chainmail Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Breastplate Barding (Base)", {
  Name="Barding, Breastplate",
  Key="Barding (Breastplate)",
  SortKey="Barding, Breastplate",
  BaseItem="Breastplate Barding (Base)",
  CanHaveMods=true,
  DisplayName="Breastplate Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Splint Mail Barding (Base)", {
  Name="Barding, Splint Mail",
  Key="Barding (Splint Mail)",
  SortKey="Barding, Splint Mail",
  BaseItem="Splint Mail Barding (Base)",
  CanHaveMods=true,
  DisplayName="Splint Mail Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Banded Mail Barding (Base)", {
  Name="Barding, Banded Mail",
  Key="Barding (Banded Mail)",
  SortKey="Barding, Banded Mail",
  BaseItem="Banded Mail Barding (Base)",
  CanHaveMods=true,
  DisplayName="Banded Mail Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Half-Plate Barding (Base)", {
  Name="Barding, Half-Plate",
  Key="Barding (Half-Plate)",
  SortKey="Barding, Half-Plate",
  BaseItem="Half-Plate Barding (Base)",
  CanHaveMods=true,
  DisplayName="Half-Plate Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Full Plate Barding (Base)", {
  Name="Barding, Full Plate",
  Key="Barding (Full Plate)",
  SortKey="Barding, Full Plate",
  BaseItem="Full Plate Barding (Base)",
  CanHaveMods=true,
  DisplayName="Full Plate Barding",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
DefineEquipment({
  Name="Buckler",
  Key="Buckler (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=5,
  ArmorCheckPenalty=-1,
  CanHaveMods=true,
  Cost=5,
  Description={
    Format="This small metal shield is worn strapped to your forearm. You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon (whether you are using an offhand weapon or using your off hand to help wield a twohanded weapon), but you take a -1 penalty on attack rolls while doing so. This penalty stacks with those that may apply for fighting with your off hand and for fighting with two weapons. In any case, if you use a weapon in your off hand, you lose the buckler's AC bonus until your next turn. You can cast a spell with somatic components using your shield arm, but you lose the buckler's AC bonus until your next turn. You can't make a shield bash with a buckler.",
  },
  Proficiency="SHIELD|Buckler",
  SourcePage="p.150",
  UsedSlots=0,
  Visible=false,
  Weight=5,
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Aspect Combat Bonus ~ Buckler",
      },
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Shield",
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
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-1"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  SpecialProperties={
    {
      Format="applies a -1 to hit to Two-Handed Weapon, or Off-hand held weapon",
    },
  },
  Types={
    "Shield",
    "Buckler",
  },
})
DefineEquipment({
  Name="Light Wooden Shield",
  Key="Light Wooden Shield (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=5,
  ArmorCheckPenalty=-1,
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=3,
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A light shield's weight lets you carry other items in that hand, although you cannot use weapons with it.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to some spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a light shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Proficiency="SHIELD|Shield (Light)",
  Size="M",
  SourcePage="p.152",
  Visible=false,
  Weight=5,
  WieldCategory="Light",
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Shield",
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
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-1"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Conditions={
        function (character, item, sources)
          return (character.IsProficientWithWeapon("Shieldbash"))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
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
})
DefineEquipment({
  Name="Light Steel Shield",
  Key="Light Steel Shield (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=5,
  ArmorCheckPenalty=-1,
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=9,
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A light shield's weight lets you carry other items in that hand, although you cannot use weapons with it.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to some spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a light shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Proficiency="SHIELD|Shield (Light)",
  Size="M",
  SourcePage="p.152",
  Visible=false,
  Weight=6,
  WieldCategory="Light",
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("1"),
      Type={
        Name="Shield",
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
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-1"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Conditions={
        function (character, item, sources)
          return (character.IsProficientWithWeapon("Shieldbash"))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
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
})
DefineEquipment({
  Name="Heavy Wooden Shield",
  Key="Heavy Wooden Shield (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=15,
  ArmorCheckPenalty=-2,
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=7,
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A heavy shield is so heavy that you can't use your shield hand for anything else.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a heavy shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Proficiency="SHIELD|Shield (Heavy)",
  Size="M",
  SourcePage="p.151",
  Visible=false,
  Weight=10,
  WieldCategory="OneHanded",
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Type={
        Name="Shield",
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
      Category="COMBAT",
      Formula=Formula("-1"),
      Type={
        Name="Shield",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-2"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Conditions={
        function (character, item, sources)
          return (character.IsProficientWithWeapon("Shieldbash"))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
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
})
DefineEquipment({
  Name="Heavy Steel Shield",
  Key="Heavy Steel Shield (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=15,
  ArmorCheckPenalty=-2,
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=20,
  Description={
    Format="You strap a shield to your forearm and grip it with your hand. A heavy shield is so heavy that you can't use your shield hand for anything else.&nl;Wooden or Steel: Wooden and steel shields offer the same basic protection, though they respond differently to spells and effects.&nl;Shield Bash Attacks: You can bash an opponent with a heavy shield. If you use your shield as a weapon, you lose its AC bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.",
  },
  Proficiency="SHIELD|Shield (Heavy)",
  Size="M",
  SourcePage="p.151",
  Visible=false,
  Weight=15,
  WieldCategory="OneHanded",
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Type={
        Name="Shield",
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
      Category="COMBAT",
      Formula=Formula("-1"),
      Type={
        Name="Shield",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="VAR",
      Formula=Formula("2"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-2"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("4"),
      Conditions={
        function (character, item, sources)
          return (character.IsProficientWithWeapon("Shieldbash"))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
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
})
DefineEquipment({
  Name="Tower Shield",
  Key="Tower Shield (Base)",
  SortKey="zzBase",
  ArcaneSpellFailureChance=50,
  ArmorCheckPenalty=-10,
  CanHaveMods=true,
  Cost=30,
  Description={
    Format="This massive wooden shield is nearly as tall as you are. In most situations, it provides the indicated shield bonus to your AC. As a standard action, however, you can use a tower shield to grant you total cover until the beginning of your next turn. When using a tower shield in this way, you must choose one edge of your space. That edge is treated as a solid wall for attacks targeting you only. You gain total cover for attacks that pass through this edge and no cover for attacks that do not pass through this edge. The shield does not, however, provide cover against targeted spells; a spellcaster can cast a spell on you by targeting the shield you are holding. You cannot bash with a tower shield, nor can you use your shield hand for anything else.&nl;When employing a tower shield in combat, you take a -2 penalty on attack rolls because of the shield's encumbrance.",
  },
  MaxDex=2,
  Proficiency="SHIELD|Tower Shield",
  SourcePage="p.153",
  Visible=false,
  Weight=45,
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("4"),
      Type={
        Name="Shield",
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
      Category="COMBAT",
      Formula=Formula("-2"),
      Type={
        Name="Shield",
      },
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "AC",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("-2"),
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Tower Shield Proficiency" then return true end
            return false
          end)
        end,
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("SHIELDACCHECK"),
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Tower Shield Proficiency" then return true end
            return false
          end))
        end,
      },
      Variables={
        "TOHIT",
      },
    },
    {
      Category="VAR",
      Formula=Formula("10"),
      Variables={
        "ArmorCheckPenalty",
      },
    },
    {
      Category="EQMARMOR",
      Formula=Formula("-10"),
      Conditions={
        function (character, item, sources)
          return (item.HasModifier("Special Quality ~ Broken ~ Shield"))
        end,
      },
      Variables={
        "ACCHECK",
      },
    },
  },
  SpecialProperties={
    {
      Format="a tower shield can instead grant you cover",
    },
  },
  Types={
    "Shield",
    "Tower",
    "Nonmetal",
  },
})
CopyEquipment("Buckler (Base)", {
  Name="Buckler",
  Key="Buckler",
  SortKey="Buckler",
  BaseItem="Buckler (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Light Wooden Shield (Base)", {
  Name="Shield, Light Wooden",
  Key="Shield (Light/Wooden)",
  SortKey="Shield, Light Wooden",
  BaseItem="Light Wooden Shield (Base)",
  CanHaveMods=true,
  DisplayName="Light Wooden Shield",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Light Steel Shield (Base)", {
  Name="Shield, Light Steel",
  Key="Shield (Light/Steel)",
  SortKey="Shield, Light Steel",
  BaseItem="Light Steel Shield (Base)",
  CanHaveMods=true,
  DisplayName="Light Steel Shield",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Shield, Heavy Wooden",
  Key="Shield (Heavy/Wooden)",
  SortKey="Shield, Heavy Wooden",
  BaseItem="Heavy Wooden Shield (Base)",
  CanHaveMods=true,
  DisplayName="Heavy Wooden Shield",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Shield, Heavy Steel",
  Key="Shield (Heavy/Steel)",
  SortKey="Shield, Heavy Steel",
  BaseItem="Heavy Steel Shield (Base)",
  CanHaveMods=true,
  DisplayName="Heavy Steel Shield",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Tower Shield (Base)", {
  Name="Shield, Tower",
  Key="Shield (Tower)",
  SortKey="Shield, Tower",
  BaseItem="Tower Shield (Base)",
  CanHaveMods=true,
  DisplayName="Tower Shield",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Absorbing Shield",
  Key="Absorbing Shield",
  SortKey="Absorbing Shield",
  CanHaveMods=true,
  Description={
    Format="This +1 heavy steel shield is made of metal, but its color is flat black that seems to absorb light. Once every 2 days, on command, it can disintegrate an object that it touches, as the spell but requiring a melee touch attack. This effect only functions as an attack--it can't be activated to target a creature or weapon as it strikes the shield.",
  },
  SourcePage="p.466",
  Visible=true,
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
})
CopyEquipment("Light Wooden Shield (Base)", {
  Name="Caster's Shield",
  Key="Caster's Shield",
  SortKey="Caster's Shield",
  CanHaveMods=true,
  Description={
    Format="This +1 light wooden shield has a leather strip on the back on which a spellcaster can scribe a single spell as on a scroll. A spell so scribed requires half the normal cost in raw materials. The strip cannot accommodate spells of higher than 3rd level. The strip is reusable.&nl;A random caster's shield has a 50%% chance of having a single medium scroll spell on it. The spell is divine (01-80 on d%%) or arcane (81-100). A caster's shield has a 5%% arcane spell failure chance.",
  },
  SourcePage="p.467",
  Visible=true,
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
})
CopyEquipment("Light Wooden Shield (Base)", {
  Name="Darkwood Buckler",
  Key="Darkwood Buckler",
  SortKey="Darkwood Buckler",
  CanHaveMods=true,
  Description={
    Format="This nonmagical light wooden shield is made out of darkwood. It has no enhancement bonus, but its construction material makes it lighter than a normal wooden shield. It has no armor check penalty.",
  },
  SourcePage="p.467",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Darkwood",
    },
  },
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Darkwood Shield",
  Key="Darkwood Shield",
  SortKey="Darkwood Shield",
  CanHaveMods=true,
  Description={
    Format="This nonmagical heavy wooden shield is made out of darkwood. It has no enhancement bonus, but its construction material makes it lighter than a normal wooden shield. It has no armor check penalty.",
  },
  SourcePage="p.467",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Darkwood",
    },
  },
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Lion's Shield",
  Key="Lion's Shield",
  SortKey="Lion's Shield",
  CanHaveMods=true,
  Description={
    Format="This +2 heavy steel shield is fashioned to appear to be a roaring lion's head. Three times per day as a free action, the lion's head can be commanded to attack (independently of the shield wearer), biting with the wielder's base attack bonus (including multiple attacks, if the wielder has them) and dealing 2d6 points of damage. This attack is in addition to any actions performed by the wielder.",
  },
  SourcePage="p.467",
  Visible=true,
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
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Mithral Heavy Shield",
  Key="Mithral Heavy Shield",
  SortKey="Mithral Heavy Shield",
  CanHaveMods=true,
  Cost=20,
  Description={
    Format="This heavy shield is made of mithral and thus is much lighter than a standard steel shield. It has a 5%% arcane spell failure chance and no armor check penalty.",
  },
  SourcePage="p.467",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Mithril ~ Shield",
    },
  },
})
CopyEquipment("Heavy Steel Shield (Base)", {
  Name="Spined Shield",
  Key="Spined Shield",
  SortKey="Spined Shield",
  CanHaveMods=true,
  Description={
    Format="This +1 heavy steel shield is covered in spines. It acts as a normal spiked shield. On command up to three times per day, the shield's wearer can fire one of the shield's spines. A fired spine has a +1 enhancement bonus, a range increment of 120 feet, and deals 1d10 points of damage (19-20/x2). Fired spines regenerate each day.",
  },
  SourcePage="p.467",
  Visible=true,
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
})
CopyEquipment("Heavy Wooden Shield (Base)", {
  Name="Winged Shield",
  Key="Winged Shield",
  SortKey="Winged Shield",
  CanHaveMods=true,
  Description={
    Format="This heavy wooden shield has a +3 enhancement bonus. Arching bird wings are carved into the face of the shield. Once per day, it can be commanded to fly (as the spell), carrying the wielder. The shield can carry up to 133 pounds and move at 60 feet per round, or up to 266 pounds and move at 40 feet per round.",
  },
  SourcePage="p.467",
  Visible=true,
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
  Qualities={
    Aura="faint transmutation",
    ['Caster Level']="5th",
    Slot="shield",
    ['Construction Cost']="8,707 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, fly",
  },
})
DefineEquipment({
  Name="Demon Armor Claw Attack",
  Key="Demon Armor Claw Attack",
  SortKey="Demon Armor Claw Attack",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=-2300,
  Proficiency="WEAPON|Unarmed Strike",
  Size="M",
  Weight=0,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Ability ~ +1 ~ Weapon",
    },
    {
      Key="Material ~ Steel",
    },
  },
  Types={
    "Weapon",
    "Melee",
    "Simple",
    "Unarmed",
    "Piercing",
    "Slashing",
  },
})
DefineEquipment({
  Name="Armor Spikes",
  Key="Armor Spikes",
  SortKey="Armor Spikes",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=0,
  Description={
    Format="You can outfit your armor with spikes, which can deal damage in a grapple or as a separate attack.",
  },
  Proficiency="WEAPON|Spiked Armor",
  SourcePage="p.148",
  UsedSlots=0,
  Weight=0,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
  SpecialProperties={
    {
      Format="deals extra piercing damage on a successful grapple attack",
    },
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
})
DefineEquipment({
  Name="Gauntlet",
  Key="Gauntlet (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=2,
  Description={
    Format="This metal glove lets you deal lethal damage rather than nonlethal damage with unarmed strikes. A strike with a gauntlet is otherwise considered an unarmed attack. The cost and weight given are for a single gauntlet. Medium and heavy armors (except breastplate) come with gauntlets. Your opponent cannot use a disarm action to disarm you of gauntlets.",
  },
  Proficiency="WEAPON|Gauntlet",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=1,
  WieldCategory="Light",
  Bonuses={
    {
      Category="EQM",
      Formula=Formula("-1*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
      Conditions={
        function (character, item, sources)
          return (character.HasEquipped(function (item) return item.IsType("Armor") end)) and (character.HasEquipped(function (item) return item.IsType("Medium") end)) or (character.HasEquipped(function (item) return item.IsType("Heavy") end)) and not ((character.HasEquipped(function (item) return stringMatch(item.Name, "Breastplate") end)))
        end,
      },
      Variables={
        "WEIGHTADD",
      },
    },
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
})
DefineEquipment({
  Name="Dagger",
  Key="Dagger (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=2,
  Description={
    Format="A dagger has a blade that is about 1 foot in length. You get a +2 bonus on Sleight of Hand skill checks made to conceal a dagger on your body.",
  },
  Proficiency="WEAPON|Dagger",
  Range=10,
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=1,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Punching Dagger",
  Key="Punching Dagger (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=2,
  Description={
    Format="A punching dagger's blade is attached to a horizontal handle that projects out from the fist when held.",
  },
  Proficiency="WEAPON|Dagger (Punching)",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=1,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Spiked Gauntlet",
  Key="Spiked Gauntlet (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=5,
  Description={
    Format="The cost and weight given are for a single gauntlet. An attack with a spiked gauntlet is considered an armed attack. Your opponent cannot use a disarm action to disarm you of spiked gauntlets.",
  },
  Proficiency="WEAPON|Gauntlet (Spiked)",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=1,
  WieldCategory="Light",
  Bonuses={
    {
      Category="EQM",
      Formula=Formula("-1*(((SIZE<=3)*.5)+(SIZE==4)+(SIZE==5)+((SIZE>=6)*(2^(SIZE-5))))"),
      Conditions={
        function (character, item, sources)
          return (character.HasEquipped(function (item) return item.IsType("Armor") end)) and (character.HasEquipped(function (item) return item.IsType("Medium") end)) or (character.HasEquipped(function (item) return item.IsType("Heavy") end)) and not ((character.HasEquipped(function (item) return stringMatch(item.Name, "Breastplate") end)))
        end,
      },
      Variables={
        "WEIGHTADD",
      },
    },
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
})
DefineEquipment({
  Name="Light Mace",
  Key="Light Mace (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=5,
  Description={
    Format="A mace is made up of an ornate metal head attached to a simple wooden or metal shaft.",
  },
  Proficiency="WEAPON|Mace (Light)",
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=4,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Sickle",
  Key="Sickle (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=6,
  Proficiency="WEAPON|Sickle",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Trip",
    },
  },
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
})
DefineEquipment({
  Name="Club",
  Key="Club (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Club",
  Range=10,
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=3,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Heavy Mace",
  Key="Heavy Mace (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=12,
  Description={
    Format="A heavy mace has a larger head and a longer handle than a normal mace.",
  },
  Proficiency="WEAPON|Mace (Heavy)",
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=8,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Morningstar",
  Key="Morningstar (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=8,
  Description={
    Format="A morningstar is a spiked metal ball, affixed to the top of a long handle.",
  },
  Proficiency="WEAPON|Morningstar",
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=6,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Shortspear",
  Key="Shortspear (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=1,
  Description={
    Format="A shortspear is about 3 feet in length, making it a suitable thrown weapon.",
  },
  Proficiency="WEAPON|Shortspear",
  Range=20,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=3,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Longspear",
  Key="Longspear (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=5,
  Description={
    Format="A longspear is about 8 feet in length.",
  },
  Proficiency="WEAPON|Longspear",
  ReachMultiplier=2,
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=9,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
    {
      Key="Special Quality ~ Reach",
    },
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
})
DefineEquipment({
  Name="Quarterstaff",
  Key="Quarterstaff (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=0,
  Description={
    Format="A quarterstaff is a simple piece of wood, about 5 feet in length.",
  },
  Proficiency="WEAPON|Quarterstaff",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
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
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=4,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
    {
      Key="Special Quality ~ Monk",
    },
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
})
DefineEquipment({
  Name="Spear",
  Key="Spear (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=2,
  Description={
    Format="A spear is 5 feet in length and can be thrown.",
  },
  Proficiency="WEAPON|Spear",
  Range=20,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=6,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
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
})
DefineEquipment({
  Name="Throwing Axe",
  Key="Throwing Axe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=8,
  Proficiency="WEAPON|Axe (Throwing)",
  Range=10,
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Light Hammer",
  Key="Light Hammer (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=1,
  Proficiency="WEAPON|Hammer (Light)",
  Range=20,
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Handaxe",
  Key="Handaxe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=6,
  Proficiency="WEAPON|Handaxe",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=3,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Kukri",
  Key="Kukri (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="3",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=8,
  Description={
    Format="A kukri is a curved blade, about 1 foot in length.",
  },
  Proficiency="WEAPON|Kukri",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Light Pick",
  Key="Light Pick (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x4",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=4,
  Proficiency="WEAPON|Pick (Light)",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=3,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Sap",
  Key="Sap (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=1,
  Proficiency="WEAPON|Sap",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonlethal",
    },
  },
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
})
DefineEquipment({
  Name="Spiked Armor",
  Key="Spiked Armor (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=0,
  Description={
    Format="You can outfit your armor with spikes, which can deal damage in a grapple or as a separate attack.",
  },
  Proficiency="WEAPON|Spiked Armor",
  Size="M",
  SourcePage="p.148",
  UsedSlots=0,
  Visible=false,
  Weight=0,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Starknife",
  Key="Starknife (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=24,
  Description={
    Format="From a central metal ring, four tapering metal blades extend like points on a compass rose. A wielder can stab with the starknife or throw it.",
  },
  Proficiency="WEAPON|Starknife",
  Range=20,
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=3,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Short Sword",
  Key="Short Sword (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=10,
  Description={
    Format="This sword is about 2 feet in length.",
  },
  Proficiency="WEAPON|Sword (Short)",
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Battleaxe",
  Key="Battleaxe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=10,
  Proficiency="WEAPON|Battleaxe",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=6,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Light Flail",
  Key="Light Flail (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=8,
  Description={
    Format="A flail consists of a spiked metal ball, connected to a handle by a sturdy chain.",
  },
  Proficiency="WEAPON|Flail",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=5,
  WieldCategory="OneHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Longsword",
  Key="Longsword (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=15,
  Description={
    Format="This sword is about 3-1/2 feet in length.",
  },
  Proficiency="WEAPON|Longsword",
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=4,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Heavy Pick",
  Key="Heavy Pick (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x4",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=8,
  Proficiency="WEAPON|Pick (Heavy)",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=6,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Rapier",
  Key="Rapier (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="3",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=20,
  Description={
    Format="You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a rapier sized for you, even though it isn't a light weapon. You can't wield a rapier in two hands in order to apply 1-1/2 times your Strength bonus to damage.",
  },
  Proficiency="WEAPON|Rapier",
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=2,
  WieldCategory="OneHanded",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-0.5"),
      Variables={
        "DAMAGEMULT:2",
      },
    },
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
})
DefineEquipment({
  Name="Scimitar",
  Key="Scimitar (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="3",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=15,
  Proficiency="WEAPON|Scimitar",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=4,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Trident",
  Key="Trident (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=15,
  Description={
    Format="A trident has three metal prongs at end of a 4-foot-long shaft. This weapon can be thrown.",
  },
  Proficiency="WEAPON|Trident",
  Range=10,
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=4,
  WieldCategory="OneHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
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
})
DefineEquipment({
  Name="Warhammer",
  Key="Warhammer (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=12,
  Proficiency="WEAPON|Warhammer",
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=5,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Falchion",
  Key="Falchion (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="3",
    Damage=DiceFormula("2d4"),
  },
  CanHaveMods=true,
  Cost=75,
  Proficiency="WEAPON|Falchion",
  Size="M",
  SourcePage="p.143",
  Visible=false,
  Weight=8,
  WieldCategory="TwoHanded",
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
})
DefineEquipment({
  Name="Glaive",
  Key="Glaive (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=8,
  Description={
    Format="A glaive is a simple blade, mounted to the end of a pole about 7 feet in length.",
  },
  Proficiency="WEAPON|Glaive",
  ReachMultiplier=2,
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=10,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Reach",
    },
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
})
DefineEquipment({
  Name="Greataxe",
  Key="Greataxe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d12"),
  },
  CanHaveMods=true,
  Cost=20,
  Proficiency="WEAPON|Greataxe",
  Size="M",
  SourcePage="p.143",
  Visible=false,
  Weight=12,
  WieldCategory="TwoHanded",
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
})
DefineEquipment({
  Name="Greatclub",
  Key="Greatclub (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=5,
  Proficiency="WEAPON|Greatclub",
  Size="M",
  SourcePage="p.143",
  Visible=false,
  Weight=8,
  WieldCategory="TwoHanded",
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
})
DefineEquipment({
  Name="Heavy Flail",
  Key="Heavy Flail (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=15,
  Description={
    Format="Similar to a flail, a heavy flail has a larger metal ball and a longer handle.",
  },
  Proficiency="WEAPON|Flail (Heavy)",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=10,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Greatsword",
  Key="Greatsword (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("2d6"),
  },
  CanHaveMods=true,
  Cost=50,
  Description={
    Format="This immense two-handed sword is about 5 feet in length.",
  },
  Proficiency="WEAPON|Greatsword",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=8,
  WieldCategory="TwoHanded",
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
})
DefineEquipment({
  Name="Guisarme",
  Key="Guisarme (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("2d4"),
  },
  CanHaveMods=true,
  Cost=9,
  Description={
    Format="A guisarme is an 8-foot-long shaft with a blade and a hook mounted at the tip.",
  },
  Proficiency="WEAPON|Guisarme",
  ReachMultiplier=2,
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=12,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Reach",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Halberd",
  Key="Halberd (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=10,
  Description={
    Format="A halberd is similar to a 5-foot-long spear, but it also has a small, axe-like head mounted near the tip.",
  },
  Proficiency="WEAPON|Halberd",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=12,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Brace",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Lance",
  Key="Lance (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=10,
  Description={
    Format="A lance deals double damage when used from the back of a charging mount. While mounted, you can wield a lance with one hand.",
  },
  Proficiency="WEAPON|Lance",
  ReachMultiplier=2,
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=10,
  WieldCategory="OneHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Reach",
    },
  },
  SpecialProperties={
    {
      Format="two-handed unless mounted",
    },
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
})
DefineEquipment({
  Name="Ranseur",
  Key="Ranseur (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("2d4"),
  },
  CanHaveMods=true,
  Cost=10,
  Description={
    Format="Similar in appearance to a trident, a ranseur has a single spear at its tip, flanked by a pair of short, curving blades.",
  },
  Proficiency="WEAPON|Ranseur",
  ReachMultiplier=2,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=12,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Reach",
    },
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
})
DefineEquipment({
  Name="Scythe",
  Key="Scythe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x4",
    CriticalHitRange="1",
    Damage=DiceFormula("2d4"),
  },
  CanHaveMods=true,
  Cost=18,
  Proficiency="WEAPON|Scythe",
  Size="M",
  SourcePage="p.143",
  Visible=false,
  Weight=10,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Trip",
    },
  },
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
})
DefineEquipment({
  Name="Kama",
  Key="Kama (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=2,
  Description={
    Format="Similar to a sickle, a kama is a short, curved blade attached to a simple handle.",
  },
  Proficiency="WEAPON|Kama",
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Monk",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Nunchaku",
  Key="Nunchaku (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=2,
  Description={
    Format="A nunchaku is made up of two wooden or metal bars connected by a small length of rope or chain.",
  },
  Proficiency="WEAPON|Nunchaku",
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Monk",
    },
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
})
DefineEquipment({
  Name="Sai",
  Key="Sai (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=1,
  Description={
    Format="A sai is a metal spike flanked by a pair of prongs used to trap an enemy's weapon. With a sai, you get a +2 bonus on Combat Maneuver Checks to sunder an enemy's weapon. Though pointed, a sai is used primarily to bludgeon foes and to disarm weapons.",
  },
  Proficiency="WEAPON|Sai",
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=1,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Monk",
    },
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
})
DefineEquipment({
  Name="Siangham",
  Key="Siangham (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=3,
  Description={
    Format="This weapon is a handheld shaft fitted with a pointed tip for stabbing foes.",
  },
  Proficiency="WEAPON|Siangham",
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=1,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Monk",
    },
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
})
DefineEquipment({
  Name="Bastard Sword",
  Key="Bastard Sword (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=35,
  Description={
    Format="A bastard sword is about 4 feet in length, making it too large to use in one hand without special training; thus, it is an exotic weapon. A character can use a bastard sword two-handed as a martial weapon.",
  },
  Proficiency="WEAPON|Sword (Bastard)",
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=6,
  WieldCategory="TwoHanded",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["BastardSwordExoticUse"] >= 1)
        end,
      },
      Variables={
        "WIELDCATEGORY",
      },
    },
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
})
DefineEquipment({
  Name="Dwarven Waraxe",
  Key="Dwarven Waraxe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=30,
  Description={
    Format="A dwarven waraxe has a large, ornate head mounted to a thick handle, making it too large to use in one hand without special training; thus, it is an exotic weapon. A Medium character can use a dwarven waraxe two-handed as a martial weapon, or a Large creature can use it one-handed in the same way. A dwarf treats a dwarven waraxe as a martial weapon even when using it in one hand.",
  },
  Proficiency="WEAPON|Waraxe (Dwarven)",
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=8,
  WieldCategory="TwoHanded",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("-1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["DwarvenWaraxeExoticUse"] >= 1)
        end,
      },
      Variables={
        "WIELDCATEGORY",
      },
    },
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
})
DefineEquipment({
  Name="Whip",
  Key="Whip (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=1,
  Description={
    Format="A whip deals no damage to any creature with an armor bonus of +1 or higher or a natural armor bonus of +3 or higher. The whip is treated as a melee weapon with 15- foot reach, though you don't threaten the area into which you can make an attack. In addition, unlike most other weapons with reach, you can use it against foes anywhere within your reach (including adjacent foes).&nl; Using a whip provokes an attack of opportunity, just as if you had used a ranged weapon.&nl;You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a whip sized for you, even though it isn't a light weapon.",
  },
  Proficiency="WEAPON|Whip",
  Reach=15,
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=2,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Orc Double Axe",
  Key="Orc Double Axe (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=60,
  Description={
    Format="A cruel weapon with blades placed at opposite ends of a long haft, an orc double axe is a double weapon.",
  },
  Proficiency="WEAPON|Axe (Orc Double)",
  SecondAttack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
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
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=15,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
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
})
DefineEquipment({
  Name="Spiked Chain",
  Key="Spiked Chain (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("2d4"),
  },
  CanHaveMods=true,
  Cost=25,
  Description={
    Format="A spiked chain is about 4 feet in length, covered in wicked barbs. You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a spiked chain sized for you, even though it isn't a light weapon.",
  },
  Proficiency="WEAPON|Chain (Spiked)",
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=10,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Disarm",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Elven Curve Blade",
  Key="Elven Curve Blade (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="3",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=80,
  Description={
    Format="Essentially a longer version of a scimitar, but with a thinner blade, the elven curve blade is exceptionally rare. You receive a +2 circumstance bonus to your Combat Maneuver Defense whenever a foe attempts to sunder your elven curve blade due to its flexible metal.&nl;You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with an elven curve blade sized for you, even though it isn't a light weapon.",
  },
  Proficiency="WEAPON|Curve Blade (Elven)",
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=7,
  WieldCategory="TwoHanded",
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
})
DefineEquipment({
  Name="Dire Flail",
  Key="Dire Flail (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=90,
  Description={
    Format="A dire flail consists of two spheres of spiked iron dangling from chains at opposite ends of a long haft.",
  },
  Proficiency="WEAPON|Flail (Dire)",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
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
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=10,
  WieldCategory="TwoHanded",
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
})
DefineEquipment({
  Name="Gnome Hooked Hammer",
  Key="Gnome Hooked Hammer (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=20,
  Description={
    Format="A gnome hooked hammer is a double weapon--an ingenious tool with a hammer head at one end of its haft and a long, curved pick at the other. The hammer's blunt head is a bludgeoning weapon that deals 1d6 points of damage (crit x3). Its hook is a piercing weapon that deals 1d4 points of damage (crit x4). You can use either head as the primary weapon. Gnomes treat hooked hammers as martial weapons.",
  },
  Proficiency="WEAPON|Hammer (Gnome Hooked)",
  SecondAttack={
    CriticalHitMultiplier="x4",
    CriticalHitRange="1",
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
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=6,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Two-Bladed Sword",
  Key="Two-Bladed Sword (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=100,
  Description={
    Format="A two-bladed sword is a double weapon--twin blades extend from either side of a central, short haft, allowing the wielder to attack with graceful but deadly flourishes.",
  },
  Proficiency="WEAPON|Sword (Two-Bladed)",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
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
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=10,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
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
})
DefineEquipment({
  Name="Dwarven Urgrosh",
  Key="Dwarven Urgrosh (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=50,
  Description={
    Format="A dwarven urgrosh is a double weapon--an axe head and a spear point on opposite ends of a long haft. The urgrosh's axe head is a slashing weapon that deals 1d8 points of damage. Its spear head is a piercing weapon that deals 1d6 points of damage. You can use either head as the primary weapon. The other becomes the off-hand weapon. If you use an urgrosh against a charging character, the spear head is the part of the weapon that deals damage. Dwarves treat dwarven urgroshes as martial weapons.",
  },
  Proficiency="WEAPON|Urgrosh (Dwarven)",
  SecondAttack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
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
  Size="M",
  SourcePage="p.149",
  Visible=false,
  Weight=12,
  WieldCategory="TwoHanded",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Double",
    },
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
})
CopyEquipment("Gauntlet (Base)", {
  Name="Gauntlet",
  Key="Gauntlet (Part of Armor Suit)",
  SortKey="Gauntlet",
  BaseItem="Gauntlet (Base)",
  CanHaveMods=true,
  Cost=0,
  Visible=true,
})
CopyEquipment("Gauntlet (Base)", {
  Name="Gauntlet",
  Key="Gauntlet",
  SortKey="Gauntlet",
  BaseItem="Gauntlet (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Dagger (Base)", {
  Name="Dagger",
  Key="Dagger",
  SortKey="Dagger",
  BaseItem="Dagger (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Punching Dagger (Base)", {
  Name="Dagger, Punching",
  Key="Dagger (Punching)",
  SortKey="Dagger, Punching",
  BaseItem="Punching Dagger (Base)",
  CanHaveMods=true,
  DisplayName="Punching Dagger",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Spiked Gauntlet (Base)", {
  Name="Gauntlet, Spiked",
  Key="Gauntlet (Spiked)",
  SortKey="Gauntlet, Spiked",
  BaseItem="Spiked Gauntlet (Base)",
  CanHaveMods=true,
  DisplayName="Spiked Gauntlet",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Light Mace (Base)", {
  Name="Mace, Light",
  Key="Mace (Light)",
  SortKey="Mace, Light",
  BaseItem="Light Mace (Base)",
  CanHaveMods=true,
  DisplayName="Light Mace",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Sickle (Base)", {
  Name="Sickle",
  Key="Sickle",
  SortKey="Sickle",
  BaseItem="Sickle (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Club (Base)", {
  Name="Club",
  Key="Club",
  SortKey="Club",
  BaseItem="Club (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Heavy Mace (Base)", {
  Name="Mace, Heavy",
  Key="Mace (Heavy)",
  SortKey="Mace, Heavy",
  BaseItem="Heavy Mace (Base)",
  CanHaveMods=true,
  DisplayName="Heavy Mace",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Morningstar (Base)", {
  Name="Morningstar",
  Key="Morningstar",
  SortKey="Morningstar",
  BaseItem="Morningstar (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Shortspear (Base)", {
  Name="Shortspear",
  Key="Shortspear",
  SortKey="Shortspear",
  BaseItem="Shortspear (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Longspear (Base)", {
  Name="Longspear",
  Key="Longspear",
  SortKey="Longspear",
  BaseItem="Longspear (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Quarterstaff (Base)", {
  Name="Quarterstaff",
  Key="Quarterstaff",
  SortKey="Quarterstaff",
  BaseItem="Quarterstaff (Base)",
  CanHaveMods=true,
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Wood",
      },
    },
  },
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Spear (Base)", {
  Name="Spear",
  Key="Spear",
  SortKey="Spear",
  BaseItem="Spear (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Throwing Axe (Base)", {
  Name="Axe, Throwing",
  Key="Axe (Throwing)",
  SortKey="Axe, Throwing",
  BaseItem="Throwing Axe (Base)",
  CanHaveMods=true,
  DisplayName="Throwing Axe",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Light Hammer (Base)", {
  Name="Hammer, Light",
  Key="Hammer (Light)",
  SortKey="Hammer, Light",
  BaseItem="Light Hammer (Base)",
  CanHaveMods=true,
  DisplayName="Light Hammer",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Handaxe (Base)", {
  Name="Handaxe",
  Key="Handaxe",
  SortKey="Handaxe",
  BaseItem="Handaxe (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Kukri (Base)", {
  Name="Kukri",
  Key="Kukri",
  SortKey="Kukri",
  BaseItem="Kukri (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Light Pick (Base)", {
  Name="Pick, Light",
  Key="Pick (Light)",
  SortKey="Pick, Light",
  BaseItem="Light Pick (Base)",
  CanHaveMods=true,
  DisplayName="Light Pick",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Sap (Base)", {
  Name="Sap",
  Key="Sap",
  SortKey="Sap",
  BaseItem="Sap (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Spiked Armor (Base)", {
  Name="Spiked Armor",
  Key="Spiked Armor",
  SortKey="Spiked Armor",
  BaseItem="Spiked Armor (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Starknife (Base)", {
  Name="Starknife",
  Key="Starknife",
  SortKey="Starknife",
  BaseItem="Starknife (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Short Sword (Base)", {
  Name="Sword, Short",
  Key="Sword (Short)",
  SortKey="Sword, Short",
  BaseItem="Short Sword (Base)",
  CanHaveMods=true,
  DisplayName="Short Sword",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Battleaxe (Base)", {
  Name="Battleaxe",
  Key="Battleaxe",
  SortKey="Battleaxe",
  BaseItem="Battleaxe (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Light Flail (Base)", {
  Name="Flail, Light",
  Key="Flail",
  SortKey="Flail, Light",
  BaseItem="Light Flail (Base)",
  CanHaveMods=true,
  DisplayName="Light Flail",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Longsword (Base)", {
  Name="Longsword",
  Key="Longsword",
  SortKey="Longsword",
  BaseItem="Longsword (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Heavy Pick (Base)", {
  Name="Pick, Heavy",
  Key="Pick (Heavy)",
  SortKey="Pick, Heavy",
  BaseItem="Heavy Pick (Base)",
  CanHaveMods=true,
  DisplayName="Heavy Pick",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Rapier (Base)", {
  Name="Rapier",
  Key="Rapier",
  SortKey="Rapier",
  BaseItem="Rapier (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Scimitar (Base)", {
  Name="Scimitar",
  Key="Scimitar",
  SortKey="Scimitar",
  BaseItem="Scimitar (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Trident (Base)", {
  Name="Trident",
  Key="Trident",
  SortKey="Trident",
  BaseItem="Trident (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Warhammer (Base)", {
  Name="Warhammer",
  Key="Warhammer",
  SortKey="Warhammer",
  BaseItem="Warhammer (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Falchion (Base)", {
  Name="Falchion",
  Key="Falchion",
  SortKey="Falchion",
  BaseItem="Falchion (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Glaive (Base)", {
  Name="Glaive",
  Key="Glaive",
  SortKey="Glaive",
  BaseItem="Glaive (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Greataxe (Base)", {
  Name="Greataxe",
  Key="Greataxe",
  SortKey="Greataxe",
  BaseItem="Greataxe (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Greatclub (Base)", {
  Name="Greatclub",
  Key="Greatclub",
  SortKey="Greatclub",
  BaseItem="Greatclub (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Heavy Flail (Base)", {
  Name="Flail, Heavy",
  Key="Flail (Heavy)",
  SortKey="Flail, Heavy",
  BaseItem="Heavy Flail (Base)",
  CanHaveMods=true,
  DisplayName="Heavy Flail",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Greatsword (Base)", {
  Name="Greatsword",
  Key="Greatsword",
  SortKey="Greatsword",
  BaseItem="Greatsword (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Guisarme (Base)", {
  Name="Guisarme",
  Key="Guisarme",
  SortKey="Guisarme",
  BaseItem="Guisarme (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Halberd (Base)", {
  Name="Halberd",
  Key="Halberd",
  SortKey="Halberd",
  BaseItem="Halberd (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Lance (Base)", {
  Name="Lance",
  Key="Lance",
  SortKey="Lance",
  BaseItem="Lance (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Ranseur (Base)", {
  Name="Ranseur",
  Key="Ranseur",
  SortKey="Ranseur",
  BaseItem="Ranseur (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Scythe (Base)", {
  Name="Scythe",
  Key="Scythe",
  SortKey="Scythe",
  BaseItem="Scythe (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Kama (Base)", {
  Name="Kama",
  Key="Kama",
  SortKey="Kama",
  BaseItem="Kama (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Nunchaku (Base)", {
  Name="Nunchaku",
  Key="Nunchaku",
  SortKey="Nunchaku",
  BaseItem="Nunchaku (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Nunchaku (Base)", {
  Name="Nunchaku, Metal",
  Key="Nunchaku (Metal)",
  SortKey="Nunchaku, Metal",
  BaseItem="Nunchaku (Base)",
  CanHaveMods=true,
  DisplayName="Metal Nunchaku",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Sai (Base)", {
  Name="Sai",
  Key="Sai",
  SortKey="Sai",
  BaseItem="Sai (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Siangham (Base)", {
  Name="Siangham",
  Key="Siangham",
  SortKey="Siangham",
  BaseItem="Siangham (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Bastard Sword (Base)", {
  Name="Sword, Bastard",
  Key="Sword (Bastard)",
  SortKey="Sword, Bastard",
  BaseItem="Bastard Sword (Base)",
  CanHaveMods=true,
  DisplayName="Bastard Sword",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Dwarven Waraxe (Base)", {
  Name="Waraxe, Dwarven",
  Key="Waraxe (Dwarven)",
  SortKey="Waraxe, Dwarven",
  BaseItem="Dwarven Waraxe (Base)",
  CanHaveMods=true,
  DisplayName="Dwarven Waraxe",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Whip (Base)", {
  Name="Whip",
  Key="Whip",
  SortKey="Whip",
  BaseItem="Whip (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Orc Double Axe (Base)", {
  Name="Axe, Orc Double",
  Key="Axe (Orc Double)",
  SortKey="Axe, Orc Double",
  BaseItem="Orc Double Axe (Base)",
  CanHaveMods=true,
  DisplayName="Orc Double Axe",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Spiked Chain (Base)", {
  Name="Chain, Spiked",
  Key="Chain (Spiked)",
  SortKey="Chain, Spiked",
  BaseItem="Spiked Chain (Base)",
  CanHaveMods=true,
  DisplayName="Spiked Chain",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Elven Curve Blade (Base)", {
  Name="Curve Blade, Elven",
  Key="Curve Blade (Elven)",
  SortKey="Curve Blade, Elven",
  BaseItem="Elven Curve Blade (Base)",
  CanHaveMods=true,
  DisplayName="Elven Curve Blade",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Dire Flail (Base)", {
  Name="Flail, Dire",
  Key="Flail (Dire)",
  SortKey="Flail, Dire",
  BaseItem="Dire Flail (Base)",
  CanHaveMods=true,
  DisplayName="Dire Flail",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Gnome Hooked Hammer (Base)", {
  Name="Hammer, Gnome Hooked",
  Key="Hammer (Gnome Hooked)",
  SortKey="Hammer, Gnome Hooked",
  BaseItem="Gnome Hooked Hammer (Base)",
  CanHaveMods=true,
  DisplayName="Gnome Hooked Hammer",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Two-Bladed Sword (Base)", {
  Name="Sword, Two-Bladed",
  Key="Sword (Two-Bladed)",
  SortKey="Sword, Two-Bladed",
  BaseItem="Two-Bladed Sword (Base)",
  CanHaveMods=true,
  DisplayName="Two-Bladed Sword",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Dwarven Urgrosh (Base)", {
  Name="Urgrosh, Dwarven",
  Key="Urgrosh (Dwarven)",
  SortKey="Urgrosh, Dwarven",
  BaseItem="Dwarven Urgrosh (Base)",
  CanHaveMods=true,
  DisplayName="Dwarven Urgrosh",
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Steel",
      },
    },
  },
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Battleaxe (Base)", {
  Name="Adamantine Battleaxe",
  Key="Battleaxe (Adamantine)",
  SortKey="Battleaxe, Adamantine",
  CanHaveMods=true,
  Description={
    Format="This nonmagical axe is made out of adamantine. As a masterwork weapon, it has a +1 enhancement bonus on attack rolls.",
  },
  SourcePage="p.472",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Weapon",
    },
  },
})
CopyEquipment("Dagger (Base)", {
  Name="Adamantine Dagger",
  Key="Dagger (Adamantine)",
  SortKey="Dagger, Adamantine",
  CanHaveMods=true,
  Description={
    Format="This nonmagical dagger is made out of adamantine. As a masterwork weapon, it has a +1 enhancement bonus on attack rolls.",
  },
  SourcePage="p.472",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Adamantine ~ Weapon",
    },
  },
})
CopyEquipment("Dagger (Base)", {
  Name="Assassin's Dagger",
  Key="Dagger (Assassin's)",
  SortKey="Dagger, Assassin's",
  CanHaveMods=true,
  Description={
    Format="This wicked-looking, curved +2 dagger provides a +1 bonus to the DC of a Fortitude save forced by the death attack of an assassin.",
  },
  SourcePage="p.472",
  Visible=true,
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
  SpecialProperties={
    {
      Format="+1 to the DC of a death attack of an assassin",
    },
  },
  Qualities={
    Aura="moderate necromancy",
    ['Caster Level']="9th",
    Slot="none",
    ['Construction Cost']="5,302 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, slay living",
  },
})
CopyEquipment("Dagger (Base)", {
  Name="Dagger of Venom",
  Key="Dagger of Venom",
  SortKey="Dagger of Venom",
  CanHaveMods=true,
  Description={
    Format="This black +1 dagger has a serrated edge. It allows the wielder to use a poison effect (as the spell, save DC 14) upon a creature struck by the blade once per day. The wielder can decide to use the power after he has struck. Doing so is a free action, but the poison effect must be invoked in the same round that the dagger strikes.",
  },
  SourcePage="p.473",
  Visible=true,
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
  SpecialProperties={
    {
      Format="1/day inflict a poison spell effect (save DC14)",
    },
  },
  Qualities={
    Aura="faint necromancy",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="4,302 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, poison",
  },
})
CopyEquipment("Warhammer (Base)", {
  Name="Dwarven Thrower",
  Key="Dwarven Thrower",
  SortKey="Dwarven Thrower",
  CanHaveMods=true,
  Description={
    Format="This weapon functions as a +2 warhammer in the hands of most users. Yet in the hands of a dwarf, the warhammer gains an additional +1 enhancement bonus (for a total enhancement bonus of +3) and gains the returning special ability. It can be hurled with a 30-foot range increment. When hurled, a dwarven thrower deals an extra 2d8 points of damage against creatures of the giant subtype or an extra 1d8 points of damage against any other target.",
  },
  SourcePage="p.473",
  Visible=true,
  Bonuses={
    {
      Category="EQMWEAPON",
      Formula=Formula("30"),
      Conditions={
        function (character, item, sources)
          return (character.Race.Name == "Dwarf%") or (any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Dwarf") end))
        end,
      },
      Variables={
        "RANGEADD",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
      },
      Conditions={
        function (character, item, sources)
          return (character.Race.Name == "Dwarf%") or (any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Dwarf") end))
        end,
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="when thrown will return just before thrower's next turn, when hurled deals an extra 1d8 damage or an extra 2d8 against giants",
      Conditions={
        function (character, item, sources)
          return (character.Race.Name == "Dwarf%") or (any(character.Race.RaceSubTypes, function (type) stringMatch(type, "Dwarf") end))
        end,
      },
    },
  },
  Types={
    "Ranged",
    "Thrown",
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="10th",
    Slot="none",
    ['Construction Cost']="30,312 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, creator must be a dwarf of at least 10th level",
  },
})
CopyEquipment("Longsword (Base)", {
  Name="Flame Tongue",
  Key="Flame Tongue",
  SortKey="Flame Tongue",
  CanHaveMods=true,
  Description={
    Format="This is a +1 flaming burst longsword. Once per day, the sword can blast forth a fiery ray at any target within 30 feet as a ranged touch attack. The ray deals 4d6 points of fire damage on a successful hit.",
  },
  SourcePage="p.473",
  Visible=true,
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
  SpecialProperties={
    {
      Format="1/day the sword can blast forth a fiery ray at any target within 30 feet as a ranged touch attack dealing 4d6 points of fire damage",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="12th",
    Slot="none",
    ['Construction Cost']="10,515 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, scorching ray and fireball, flame blade, or flame strike",
  },
})
CopyEquipment("Greatsword (Base)", {
  Name="Frost Brand",
  Key="Frost Brand",
  SortKey="Frost Brand",
  CanHaveMods=true,
  Description={
    Format="This +3 frost greatsword sheds light as a torch when the temperature drops below 0° F. At such times it cannot be concealed when drawn, nor can its light be shut off. Its wielder is protected from fire; the sword absorbs the first 10 points of fire damage each round that the wielder would otherwise take.&nl;A frost brand extinguishes all nonmagical fires in a 20-foot radius. As a standard action, it can also dispel lasting fire spells, but not instantaneous effects. You must succeed on a dispel check (1d20 +14) against each spell to dispel it. The DC to dispel such spells is 11 + the caster level of the fire spell.",
  },
  SourcePage="p.473",
  Visible=true,
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
  SpecialProperties={
    {
      Format="absorbs the first 10 points of fire damage each round",
    },
  },
  Types={
    "Light Source",
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
})
CopyEquipment("Longsword (Base)", {
  Name="Holy Avenger",
  Key="Holy Avenger",
  SortKey="Holy Avenger",
  CanHaveMods=true,
  Description={
    Format="This +2 cold iron longsword becomes a +5 holy cold iron longsword in the hands of a paladin.&nl;This sacred weapon provides spell resistance of 5 + the paladin's level to the wielder and anyone adjacent to her. It also enables the paladin to use greater dispel magic (once per round as a standard action) at the class level of the paladin. Only the area dispel is possible, not the targeted dispel or counterspell versions of greater dispel magic.",
  },
  SourcePage="p.473",
  Visible=true,
  Bonuses={
    {
      Category="MISC",
      Formula=Formula("HolyAvengerSR"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["AllowHolyAvenger"] >= 1)
        end,
      },
      Variables={
        "SR",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("5*(AllowHolyAvenger>=1)"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "DAMAGE",
        "TOHIT",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="provides spell resistance of % to the wielder and anyone adjacent",
      Arguments={
        Formula("HolyAvengerSR"),
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["AllowHolyAvenger"] >= 1)
        end,
      },
    },
  },
  SpellLikeAbilities={
    {
      Name="Dispel Magic (Greater)",
      SpellBookName="Magic Item",
      Times="1",
      TimeUnit="Round",
      DC="19",
      CasterLevel="HolyAvengerCL",
      Conditions={
        function (character, item, sources)
          return (character.Variables["AllowHolyAvenger"] >= 1)
        end,
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
})
CopyEquipment("Greataxe (Base)", {
  Name="Life-Drinker",
  Key="Life-Drinker",
  SortKey="Life-Drinker",
  CanHaveMods=true,
  Description={
    Format="This +1 greataxe is favored by undead and constructs, who do not suffer its drawback. A life-drinker bestows two negative levels on its target whenever it deals damage, just as if its target had been struck by an undead creature. One day after being struck, subjects must make a DC 16 Fortitude save for each negative level or the negative levels become permanent.&nl;Each time a life-drinker deals damage to a foe, it also bestows one negative level on the wielder. Any negative levels gained by the wielder in this fashion lasts for 1 hour.",
  },
  SourcePage="p.473",
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
          return not ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Construct") end)) or (any(character.Race.RaceTypes, function (type) stringMatch(type, "Undead") end)))
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
          return not ((any(character.Race.RaceTypes, function (type) stringMatch(type, "Construct") end)) or (any(character.Race.RaceTypes, function (type) stringMatch(type, "Undead") end)))
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="bestows two negative levels on its target whenever it deals damage and one negative level on the wielder",
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="20,320 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, enervation",
  },
})
CopyEquipment("Longsword (Base)", {
  Name="Masterwork Cold Iron Longsword",
  Key="Longsword (Cold Iron/Masterwork)",
  SortKey="Longsword, Masterwork Cold Iron",
  CanHaveMods=true,
  Description={
    Format="This nonmagical longsword is crafted out of cold iron. As a masterwork weapon, it has a +1 enhancement bonus on attack rolls.",
  },
  SourcePage="p.474",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Cold Iron",
    },
    {
      Key="Special Quality ~ Masterwork ~ Weapon",
    },
  },
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (0 wishes)",
  Key="Luck Blade (0 wishes)",
  SortKey="Luck Blade (0 wishes)",
  CanHaveMods=true,
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  SourcePage="p.474",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="11,185 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (1 wish)",
  Key="Luck Blade (1 wish)",
  SortKey="Luck Blade (1 wish)",
  CanHaveMods=true,
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  SourcePage="p.474",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="43,835 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (2 wishes)",
  Key="Luck Blade (2 wishes)",
  SortKey="Luck Blade (2 wishes)",
  CanHaveMods=true,
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  SourcePage="p.474",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="76,485 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
})
CopyEquipment("Short Sword (Base)", {
  Name="Luck Blade (3 wishes)",
  Key="Luck Blade (3 wishes)",
  SortKey="Luck Blade (3 wishes)",
  CanHaveMods=true,
  Description={
    Format="This +2 short sword gives its possessor a +1 luck bonus on all saving throws. Its possessor also gains the power of good fortune, usable once per day. This extraordinary ability allows its possessor to reroll one roll that she just made, before the results are revealed. She must take the result of the reroll, even if it's worse than the original roll. In addition, a luck blade may contain up to three wishes (when randomly rolled, a luck blade holds 1d4-1 wishes, minimum 0). When the last wish is used, the sword remains a +2 short sword, still grants the +1 luck bonus, and still grants its reroll power.",
  },
  SourcePage="p.474",
  Visible=true,
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("1+Global_LuckBonus"),
      Type={
        Name="Luck",
      },
      Variables={
        "Fortitude",
        "Reflex",
        "Will",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="1/day allows its possessor to reroll one roll",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="109,135 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, wish or miracle",
  },
})
CopyEquipment("Heavy Mace (Base)", {
  Name="Mace of Smiting",
  Key="Mace of Smiting",
  SortKey="Mace of Smiting",
  CanHaveMods=true,
  Description={
    Format="This +3 adamantine heavy mace has a +5 enhancement bonus against constructs, and a successful critical hit dealt to a construct completely destroys the construct (no saving throw). A critical hit dealt to an outsider deals x4 damage rather than x2.",
  },
  SourcePage="p.474",
  Visible=true,
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
  SpecialProperties={
    {
      Format="+5 against constructs and critical destroys construct, critical x4 against outsiders",
    },
  },
  Qualities={
    Aura="moderate transmutation",
    ['Caster Level']="11th",
    Slot="none",
    ['Construction Cost']="39,312 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, disintegrate",
  },
})
CopyEquipment("Heavy Mace (Base)", {
  Name="Mace of Terror",
  Key="Mace of Terror",
  SortKey="Mace of Terror",
  CanHaveMods=true,
  Description={
    Format="This weapon usually appears to be a particularly frightening-looking iron or steel mace. On command, this +2 heavy mace causes the wielder's clothes and appearance to transform into an illusion of darkest horror such that living creatures in a 30-foot cone become panicked as if by a fear spell (Will DC 16 partial). Those who fail take a -2 morale penalty on saving throws, and they flee from the wielder. The wielder may use this ability up to three times per day.",
  },
  SourcePage="p.474",
  Visible=true,
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
  SpecialProperties={
    {
      Format="3/day transform into an illusion of darkest horror such that living creatures in a 30-foot cone become panicked as if by a fear spell (Will DC 16 partial)",
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="19,432 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, fear",
  },
})
CopyEquipment("Longsword (Base)", {
  Name="Nine Lives Stealer",
  Key="Nine Lives Stealer",
  SortKey="Nine Lives Stealer",
  CanHaveMods=true,
  Description={
    Format="This longsword always performs as a +2 longsword, but it also has the power to draw the life force from an opponent. It can do this nine times before the ability is lost. At that point, the sword becomes a simple +2 longsword (with a faint evil aura). A critical hit must be dealt for the sword's death-dealing ability to function, and this weapon has no effect on creatures not subject to critical hits. The victim is entitled to a DC 20 Fortitude save to avoid death. If the save is successful, the sword's death-dealing ability does not function, no use of the ability is expended, and normal critical damage is determined. This sword is evil, and any good character attempting to wield it gains two negative levels. These negative levels remain as long as the sword is in hand and disappear when the sword is no longer wielded. These negative levels never result in actual level loss, but they cannot be overcome in any way (including restoration spells) while the sword is wielded.",
  },
  SourcePage="p.474",
  Visible=true,
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Conditions={
        function (character, item, sources)
          return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
        end,
      },
      Variables={
        "NegLevels",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="draws lifeforce from opponent on critical hits (Fortitude DC 20 or die)",
    },
  },
  Qualities={
    Aura="strong necromancy [evil]",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="11,528 gp 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, finger of death",
  },
})
CopyEquipment("Rapier (Base)", {
  Name="Rapier of Puncturing",
  Key="Rapier of Puncturing",
  SortKey="Rapier of Puncturing",
  CanHaveMods=true,
  Description={
    Format="Three times per day, this +2 wounding rapier allows the wielder to make a touch attack with the weapon that deals 1d6 points of Constitution damage by draining blood. Creatures immune to critical hits are immune to the Constitution damage dealt by this weapon.",
  },
  SourcePage="p.474",
  Visible=true,
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
  SpecialProperties={
    {
      Format="3/day allows the wielder to make a touch attack with the weapon that deals 1d6 points of Constitution damage",
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="13th",
    Slot="none",
    ['Construction Cost']="25,320 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, harm",
  },
})
CopyEquipment("Longsword (Base)", {
  Name="Shatterspike",
  Key="Shatterspike",
  SortKey="Shatterspike",
  CanHaveMods=true,
  Description={
    Format="This intimidating weapon appears to be a longsword with multiple hooks, barbs, and serrations along the blade, excellent for catching and sundering a foe's weapon. Wielders without the Improved Sunder feat use a shatterspike as a +1 longsword only. Wielders with the Improved Sunder feat instead use shatterspike as a +4 longsword when attempting to sunder an opponent's weapon. Shatterspike can damage weapons with an enhancement bonus of +4 or lower.",
  },
  SourcePage="p.475",
  Visible=true,
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
  SpecialProperties={
    {
      Format="use shatterspike as a +4 longsword when attempting to sunder an opponent's weapon",
      Conditions={
        function (character, item, sources)
          return character.HasAnyAbility(function (ability)
            if ability.Category ~= "FEAT" then return false end
            if ability.Name == "Improved Sunder" then return true end
            return false
          end)
        end,
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
})
CopyEquipment("Two-Bladed Sword (Base)", {
  Name="Shifter's Sorrow",
  Key="Shifter's Sorrow",
  SortKey="Shifter's Sorrow",
  CanHaveMods=true,
  Description={
    Format="This +1/+1 two-bladed sword has blades of alchemical silver. The weapon deals an extra 2d6 points of damage against any creature with the shapechanger subtype. When a shapechanger or a creature in an alternate form (such as a druid using wild shape) is struck by the weapon, it must make a DC 15 Will save or return to its natural form.",
  },
  SecondAttack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    EquipmentModifiers={
      {
        Key="Material ~ Alchemical Silver",
      },
      {
        Key="Special Ability ~ +1 ~ Weapon",
      },
    },
  },
  SourcePage="p.475",
  Visible=true,
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
  SpecialProperties={
    {
      Format="deals an extra 2d6 points of damage against any creature with the shapechanger subtype",
    },
    {
      Format="struck creature in an alternate form must make a DC 15 Will save or return to its natural form",
    },
  },
  Qualities={
    Aura="strong transmutation",
    ['Caster Level']="15th",
    Slot="none",
    ['Construction Cost']="6,780 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, baleful polymorph",
  },
})
CopyEquipment("Dagger (Base)", {
  Name="Masterwork Silver Dagger",
  Key="Dagger (Silver/Masterwork)",
  SortKey="Dagger, Masterwork Silver",
  CanHaveMods=true,
  Description={
    Format="As a masterwork weapon, this alchemical silver dagger has a +1 enhancement bonus on attack rolls (but not to damage rolls).",
  },
  SourcePage="p.476",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Alchemical Silver",
    },
    {
      Key="Special Quality ~ Masterwork ~ Weapon",
    },
  },
})
CopyEquipment("Bastard Sword (Base)", {
  Name="Sun Blade (Bastard Sword)",
  Key="Sun Blade (Bastard)",
  SortKey="Sun Blade",
  CanHaveMods=true,
  Description={
    Format="This sword is the size of a bastard sword. However, a sun blade is wielded as if it were a short sword with respect to weight and ease of use. In other words, the weapon appears to all viewers to be a bastard sword, and deals bastard sword damage, but the wielder feels and reacts as if the weapon were a short sword. Any individual able to use either a bastard sword or a short sword with proficiency is proficient in the use of a sun blade. Likewise, Weapon Focus and Weapon Specialization in short sword and bastard sword apply equally, but the benefits of those feats do not stack.&nl;In normal combat, the glowing golden blade of the weapon is equal to a +2 bastard sword. Against evil creatures, its enhancement bonus is +4. Against Negative Energy Plane creatures or undead creatures, the sword deals double damage (and x3 on a critical hit instead of the usual x2).&nl;The blade also has a special sunlight power. Once per day, the wielder can swing the blade vigorously above his head while speaking a command word. The sun blade then sheds a bright yellow radiance that acts like bright light and affects creatures susceptible to light as if it were natural sunlight. The radiance begins shining in a 10-foot radius around the sword wielder and extends outward at 5 feet per round for 10 rounds thereafter, to create a globe of light with a 60-foot radius. When the wielder stops swinging, the radiance fades to a dim glow that persists for another minute before disappearing entirely. All sun blades are of good alignment, and any evil creature attempting to wield one gains one negative level. The negative level remains as long as the sword is in hand and disappears when the sword is no longer wielded. This negative level cannot be overcome in any way (including by restoration spells) while the sword is wielded.",
  },
  DisplayName="Sun Blade",
  SourcePage="p.476",
  Visible=true,
  Weight=2,
  WieldCategory="Light",
  Abilities={
    {
      Category="Special Ability",
      Nature="AUTOMATIC",
      Names={
        "Negative Levels",
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
        "NegLevels",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("1"),
      Conditions={
        function (character, item, sources)
          return (character.Variables["BastardSwordExoticUse"] >= 1)
        end,
      },
      Variables={
        "WIELDCATEGORY",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="+4 enhancement bonus against evil creatures and double damage against negative energy plane or undead creatures",
    },
    {
      Format="1/day sheds bright light as natural sunlight in 10- to 60-foot radius over 10 rounds",
    },
  },
  Types={
    "Light",
    "Finesseable",
    "BladeLight",
    "Weapon Group Blades Light",
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="10th",
    Slot="none",
    ['Construction Cost']="25,335 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, daylight, creator must be good",
  },
})
CopyEquipment("Sun Blade (Bastard)", {
  Name="Sun Blade (Short Sword)",
  Key="Sun Blade (Short)",
  SortKey="Sun Blade",
  CanHaveMods=true,
  Proficiency="WEAPON|Sword (Short)",
})
CopyEquipment("Longsword (Base)", {
  Name="Sword of Life Stealing",
  Key="Sword of Life Stealing",
  SortKey="Sword of Life Stealing",
  CanHaveMods=true,
  Description={
    Format="This black iron +2 longsword bestows a negative level when it deals a critical hit. The sword wielder gains 1d6 temporary hit points each time a negative level is bestowed on another. These temporary hit points last for 24 hours. One day after being struck, subjects must make a DC 16 Fortitude save for each negative level gained or they become permanent.",
  },
  SourcePage="p.477",
  Visible=true,
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
  SpecialProperties={
    {
      Format="bestows a negative level when it deals a critical hit and wielder gains 1d6 temporary hit points each time a negative level is bestowed",
    },
  },
  Qualities={
    Aura="strong necromancy",
    ['Caster Level']="17th",
    Slot="none",
    ['Construction Cost']="13,015 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, enervation",
  },
})
CopyEquipment("Longsword (Base)", {
  Name="Sword of the Planes",
  Key="Sword of the Planes",
  SortKey="Sword of the Planes",
  CanHaveMods=true,
  Description={
    Format="This longsword has an enhancement bonus of +1 on the Material Plane, but on any Elemental Plane its enhancement bonus increases to +2. The +2 enhancement bonus also applies whenever the weapon is used against creatures native to the Elemental Plane. It operates as a +3 longsword on the Astral Plane and the Ethereal Plane, or when used against opponents native to either of those planes. On any other plane, or against any outsider, it functions as a +4 longsword.",
  },
  SourcePage="p.477",
  Visible=true,
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
  SpecialProperties={
    {
      Format="+2/+3/+4 enhancement bonus on the Elemental Plane/Astral and Ethereal Planes/any other plane or creatures from those planes",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="15th",
    Slot="none",
    ['Construction Cost']="11,315 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, plane shift",
  },
})
CopyEquipment("Short Sword (Base)", {
  Name="Sword of Subtlety",
  Key="Sword of Subtlety",
  SortKey="Sword of Subtlety",
  CanHaveMods=true,
  Description={
    Format="A +1 short sword with a thin, dull gray blade, this weapon provides a +4 bonus on its wielder's attack and damage rolls when he is making a sneak attack with it.",
  },
  SourcePage="p.477",
  Visible=true,
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
  SpecialProperties={
    {
      Format="+4 bonus on attack and damage rolls when making a sneak attack",
    },
  },
  Qualities={
    Aura="moderate illusion",
    ['Caster Level']="7th",
    Slot="none",
    ['Construction Cost']="11,310 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, blur",
  },
})
CopyEquipment("Scimitar (Base)", {
  Name="Sylvan Scimitar",
  Key="Sylvan Scimitar",
  SortKey="Scimitar, Sylvan",
  CanHaveMods=true,
  Description={
    Format="This +3 scimitar, when used outdoors in a temperate climate, grants its wielder the use of the Cleave feat and deals an extra 1d6 points of damage.",
  },
  SourcePage="p.477",
  Visible=true,
  Abilities={
    {
      Category="FEAT",
      Nature="VIRTUAL",
      Names={
        "Sylvan Scimitar ~ Cleave",
      },
    },
  },
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
  SpecialProperties={
    {
      Format="grants its wielder the use of the Cleave feat and deals an extra 1d6 points of damage when used outdoors in a temperate climate",
    },
  },
  Qualities={
    Aura="moderate evocation",
    ['Caster Level']="11th",
    Slot="none",
    ['Construction Cost']="23,815 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, divine power or creator must be a 7th-level druid",
  },
})
CopyEquipment("Trident (Base)", {
  Name="Trident of Fish Command",
  Key="Trident of Fish Command",
  SortKey="Trident of Fish Command",
  CanHaveMods=true,
  Description={
    Format="The magical properties of this +1 trident with a 6-foot-long haft enable its wielder to charm up to 14 HD of aquatic animals as per the spell charm animals (Will DC 16 negates, animals get a +5 bonus if currently under attack by the wielder or his allies), no two of which can be more than 30 feet apart. The wielder can use this effect up to three times per day. The wielder can communicate with the animals as if using a speak with animals spell. Animals making their saving throws are free of control, but they will not approach within 10 feet of the trident.",
  },
  SourcePage="p.477",
  Visible=true,
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
  SpecialProperties={
    {
      Format="3/day the wielder can charm up to 14HD of aquatic animals as charm animals spell and can speak to these charmed creatures as speak with animals spell",
    },
  },
  Qualities={
    Aura="moderate enchantment",
    ['Caster Level']="7th",
    Slot="none",
    ['Construction Cost']="9,482 gp and 5 sp",
    ['Construction Requirements']="Craft Magic Arms and Armor, charm animals, speak with animals",
  },
})
CopyEquipment("Trident (Base)", {
  Name="Trident of Warning",
  Key="Trident of Warning",
  SortKey="Trident of Warning",
  CanHaveMods=true,
  Description={
    Format="A weapon of this type enables its wielder to determine the location, depth, kind, and number of aquatic predators within 680 feet. A trident of warning must be grasped and pointed in order for the character using it to gain such information, and it requires 1 round to scan a hemisphere with a radius of 680 feet. The weapon is otherwise a +2 trident.",
  },
  SourcePage="p.477",
  Visible=true,
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
  SpecialProperties={
    {
      Format="enables its wielder to determine the location, depth, kind, and number of aquatic predators within 680 feet",
    },
  },
  Qualities={
    Aura="moderate divination",
    ['Caster Level']="7th",
    Slot="none",
    ['Construction Cost']="5,215 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, locate creature",
  },
})
DefineEquipment({
  Name="Mattock of the Titans",
  Key="Mattock of the Titans",
  SortKey="Mattock of the Titans",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("4d6"),
  },
  CanHaveMods=true,
  Cost=23348,
  Description={
    Format="This digging tool is 10 feet long. Any creature of at least Huge size can use it to loosen or tumble earth or earthen ramparts (a 10-foot cube every 10 minutes). It also smashes rock (a 10- foot cube per hour). If used as a weapon, it is the equivalent of a Gargantuan +3 adamantine warhammer, dealing 4d6 points of base damage.",
  },
  Proficiency="WEAPON|Warhammer",
  Size="G",
  SourcePage="p.523",
  Weight=120,
  WieldCategory="OneHanded",
  Bonuses={
    {
      Category="WEAPON",
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
})
DefineEquipment({
  Name="Maul of the Titans",
  Key="Maul of the Titans",
  SortKey="Maul of the Titans",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=25305,
  Description={
    Format="This mallet is 8 feet long. If used as a weapon, it is the equivalent of a +3 greatclub and deals triple damage against inanimate objects. The wielder must have a Strength of at least 18 to wield it properly. Otherwise, she takes a -4 penalty on attack rolls.",
  },
  Proficiency="WEAPON|Greatclub",
  Size="M",
  SourcePage="p.523",
  Weight=160,
  WieldCategory="TwoHanded",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("3"),
      Type={
        Name="Enhancement",
      },
      Variables={
        "TOHIT",
        "DAMAGE",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("-4"),
      Type={
        Name="StrengthPenalty",
      },
      Conditions={
        function (character, item, sources)
          return (character.Variables["PreStatScore_STR"] < 18)
        end,
      },
      Variables={
        "TOHIT",
      },
    },
  },
  SpecialProperties={
    {
      Format="deals triple damage against inanimate objects",
    },
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
})
CopyEquipment("Dwarven Waraxe (Base)", {
  Name="Axe of the Dwarvish Lords",
  Key="Axe of the Dwarvish Lords",
  SortKey="Axe of the Dwarvish Lords",
  CanHaveMods=true,
  Description={
    Format="This is a +6 keen throwing goblinoid bane dwarven waraxe. Any dwarf who holds it doubles the range of his or her darkvision. Any nondwarf who grasps the Axe takes 4 points of temporary Charisma damage; these points cannot be healed or restored in any way while the Axe is held. The current owner of the Axe gains a +10 bonus on Craft (armor, jewelry, stonemasonry, traps, and weapons) checks. The wielder of the Axe can summon an elder earth elemental (as summon monster IX; duration 20 rounds) once per week.",
  },
  SourcePage="p.547",
  Visible=true,
  Bonuses={
    {
      Category="STAT",
      Formula=Formula("-4"),
      Conditions={
        function (character, item, sources)
          return not ((character.Race.Name == "Dwarf"))
        end,
      },
      Variables={
        "CHA",
      },
    },
    {
      Category="VISION",
      Formula=Formula("60"),
      Conditions={
        function (character, item, sources)
          return (character.Race.Name == "Dwarf")
        end,
      },
      Variables={
        "Darkvision",
      },
    },
  },
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
  Types={
    "Artifact",
    "Major",
  },
  Qualities={
    Aura="strong conjuration and transmutation",
    ['Caster Level']="20th",
    Slot="none",
    Destruction="The Axe of the Dwarvish Lords rusts away to nothing if it is ever used by a goblin to behead a dwarven king.",
  },
})
DefineEquipment({
  Name="Flurry of Blows",
  Key="Flurry of Blows",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=0,
  DisplayName="Flurry of Blows",
  Proficiency="WEAPON|Unarmed Strike",
  Size="M",
  SourcePage="p.57",
  Weight=0,
  WieldCategory="Light",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("FlurryBABBonus-BAB"),
      Variables={
        "WEAPONBAB",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("FlurryExtraAttacks"),
      Variables={
        "ATTACKS",
      },
    },
    {
      Category="WEAPON",
      Formula=Formula("-2"),
      Variables={
        "TOHIT",
      },
    },
  },
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
})
DefineEquipment({
  Name="Shieldbash (Light Shield)",
  Key="Shieldbash (Light)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=0,
  DisplayName="Shieldbash",
  Proficiency="WEAPON|Shieldbash",
  Size="M",
  SourcePage="p.142",
  Weight=0,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Shieldbash (Heavy Shield)",
  Key="Shieldbash (Heavy)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=0,
  DisplayName="Shieldbash",
  Proficiency="WEAPON|Shieldbash",
  Size="M",
  SourcePage="p.142",
  Weight=0,
  WieldCategory="OneHanded",
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
})
DefineEquipment({
  Name="Touch Attack (Ray Spell)",
  Key="Touch Attack (Ray)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("0"),
  },
  CanHaveMods=false,
  Cost=0,
  DisplayName="Touch Attack (Ray Spell)",
  ModsRequired=false,
  Proficiency="WEAPON|Spells (Ray)",
  Range=1,
  Size="M",
  SourcePage="p.179",
  Weight=0,
  WieldCategory="Light",
  SpecialProperties={
    {
      Format="damage or effect as per spell",
    },
  },
  Types={
    "Weapon",
    "Ranged",
    "Thrown",
    "Unarmed",
  },
})
DefineEquipment({
  Name="Unarmed Strike",
  Key="Unarmed Strike",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=0,
  DisplayName="Unarmed Strike",
  Proficiency="WEAPON|Unarmed Strike",
  Size="M",
  SourcePage="p.142",
  Weight=0,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Blowgun",
  Key="Blowgun (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d2"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=2,
  Description={
    Format="Blowguns are generally used to deliver debilitating (but rarely fatal) poisons from a distance. They are nearly silent when fired.",
  },
  Proficiency="WEAPON|Blowgun",
  Range=20,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=1,
  WieldCategory="TwoHandsOnly",
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
})
DefineEquipment({
  Name="Heavy Crossbow",
  Key="Heavy Crossbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=50,
  Description={
    Format="You draw a heavy crossbow back by turning a small winch. Loading a heavy crossbow is a fullround action that provokes attacks of opportunity.&nl;Normally, operating a heavy crossbow requires two hands. However, you can shoot, but not load, a heavy crossbow with one hand at a -4 penalty on attack rolls. You can shoot a heavy crossbow with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.",
  },
  Proficiency="WEAPON|Crossbow (Heavy)",
  Range=120,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=8,
  WieldCategory="TwoHandsOnly",
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
})
DefineEquipment({
  Name="Light Crossbow",
  Key="Light Crossbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=35,
  Description={
    Format="You draw a light crossbow back by pulling a lever. Loading a light crossbow is a move action that provokes attacks of opportunity.&nl;Normally, operating a light crossbow requires two hands. However, you can shoot, but not load, a light crossbow with one hand at a -2 penalty on attack rolls. You can shoot a light crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons. This penalty is cumulative with the penalty for onehanded firing.",
  },
  Proficiency="WEAPON|Crossbow (Light)",
  Range=80,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=4,
  WieldCategory="TwoHandsOnly",
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
})
DefineEquipment({
  Name="Dart",
  Key="Dart (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=0.5,
  Proficiency="WEAPON|Dart",
  Range=20,
  Size="M",
  SourcePage="p.142",
  Visible=false,
  Weight=0.5,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Javelin",
  Key="Javelin (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=1,
  Description={
    Format="A javelin is a thin throwing spear. Since it is not designed for melee, you are treated as nonproficient with it and take a -4 penalty on attack rolls if you use a javelin as a melee weapon.",
  },
  Proficiency="WEAPON|Javelin",
  Range=30,
  Size="M",
  SourcePage="p.146",
  Visible=false,
  Weight=2,
  WieldCategory="OneHandOnly",
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
})
DefineEquipment({
  Name="Sling",
  Key="Sling (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=0,
  Description={
    Format="A sling is little more than a leather cup attached to a pair of strings. Your Strength modifier applies to damage rolls when you use a sling, just as it does for thrown weapons. You can fire, but not load, a sling with one hand. Loading a sling is a move action that requires two hands and provokes attacks of opportunity.&nl;You can hurl ordinary stones with a sling, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a -1 penalty on attack rolls.",
  },
  Proficiency="WEAPON|Sling",
  Range=50,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=0,
  WieldCategory="OneHandOnly",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("STR"),
      Variables={
        "DAMAGE",
      },
    },
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
})
DefineEquipment({
  Name="Longbow",
  Key="Longbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=75,
  Description={
    Format="At almost 5 feet in height, a longbow is made up of one solid piece of carefully curved wood. You need two hands to use a bow, regardless of its size. A longbow is too unwieldy to use while you are mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a longbow. If you have a Strength bonus, you can apply it to damage rolls when you use a composite longbow, but not when you use a regular longbow.",
  },
  Proficiency="WEAPON|Longbow",
  Range=100,
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=3,
  WieldCategory="TwoHandsOnly",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("min(STR,0)"),
      Variables={
        "DAMAGE",
      },
    },
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
})
DefineEquipment({
  Name="Composite Longbow",
  Key="Composite Longbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=100,
  Description={
    Format="You need at least two hands to use a bow, regardless of its size. You can use a composite longbow while mounted. All composite bows are made with a particular strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is less than the strength rating of the composite bow, you can't effectively use it, so you take a -2 penalty on attacks with it. The default composite longbow requires a Strength modifier of +0 or higher to use with proficiency. A composite longbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 100 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite longbow.&nl;For purposes of Weapon Proficiency and similar feats, a composite longbow is treated as if it were a longbow.",
  },
  ModsRequired=true,
  Proficiency="WEAPON|Longbow",
  Range=110,
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=3,
  WieldCategory="TwoHandsOnly",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("min(STR,0)"),
      Variables={
        "DAMAGE",
      },
    },
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
})
DefineEquipment({
  Name="Shortbow",
  Key="Shortbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=30,
  Description={
    Format="A shortbow is made up of one piece of wood, about 3 feet in length. You need two hands to use a bow, regardless of its size. You can use a shortbow while mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a shortbow. If you have a bonus for high Strength, you can apply it to damage rolls when you use a composite shortbow, but not a regular shortbow.",
  },
  Proficiency="WEAPON|Shortbow",
  Range=60,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=2,
  WieldCategory="TwoHandsOnly",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("min(STR,0)"),
      Variables={
        "DAMAGE",
      },
    },
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
})
DefineEquipment({
  Name="Composite Shortbow",
  Key="Composite Shortbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=75,
  Description={
    Format="You need at least two hands to use a bow, regardless of its size. You can use a composite shortbow while mounted. All composite bows are made with a particular strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is lower than the strength rating of the composite bow, you can't effectively use it, so you take a -2 penalty on attacks with it. The default composite shortbow requires a Strength modifier of +0 or higher to use with proficiency. A composite shortbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 75 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite shortbow.&nl;For purposes of Weapon Proficiency, Weapon Focus, and similar feats, a composite shortbow is treated as if it were a shortbow.",
  },
  ModsRequired=true,
  Proficiency="WEAPON|Shortbow",
  Range=70,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=2,
  WieldCategory="TwoHandsOnly",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("min(STR,0)"),
      Variables={
        "DAMAGE",
      },
    },
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
})
DefineEquipment({
  Name="Bolas",
  Key="Bolas (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=5,
  Description={
    Format="A bolas is a pair of weights, connected by a thin rope or cord. You can use this weapon to make a ranged trip attack against an opponent. You can't be tripped during your own trip attempt when using a bolas.",
  },
  Proficiency="WEAPON|Bolas",
  Range=10,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=2,
  WieldCategory="OneHandOnly",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Nonlethal",
    },
    {
      Key="Special Quality ~ Trip",
    },
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
})
DefineEquipment({
  Name="Hand Crossbow",
  Key="Hand Crossbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=100,
  Description={
    Format="You can draw a hand crossbow back by hand. Loading a hand crossbow is a move action that provokes attacks of opportunity. You can shoot, but not load, a hand crossbow with one hand at no penalty. You can shoot a hand crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons.",
  },
  Proficiency="WEAPON|Crossbow (Hand)",
  Range=30,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=2,
  WieldCategory="Light",
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
})
DefineEquipment({
  Name="Repeating Heavy Crossbow",
  Key="Repeating Heavy Crossbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=400,
  Description={
    Format="The repeating crossbow (whether heavy or light) holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.&nl;You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.",
  },
  Proficiency="WEAPON|Crossbow (Repeating Heavy)",
  Range=120,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=12,
  WieldCategory="TwoHandsOnly",
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
})
DefineEquipment({
  Name="Repeating Light Crossbow",
  Key="Repeating Light Crossbow (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="2",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=250,
  Description={
    Format="The repeating crossbow (whether heavy or light) holds 5 crossbow bolts. As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.&nl;You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.",
  },
  Proficiency="WEAPON|Crossbow (Repeating Light)",
  Range=80,
  Size="M",
  SourcePage="p.145",
  Visible=false,
  Weight=6,
  WieldCategory="TwoHandsOnly",
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
})
DefineEquipment({
  Name="Net",
  Key="Net (Base)",
  SortKey="zzBase",
  CanHaveMods=true,
  Cost=20,
  Description={
    Format="A net is used to entangle enemies. When you throw a net, you make a ranged touch attack against your target. A net's maximum range is 10 feet. If you hit, the target is entangled. An entangled creature takes a -2 penalty on attack rolls and a -4 penalty on Dexterity, can move at only half speed, and cannot charge or run. If you control the trailing rope by succeeding on an opposed Strength check while holding it, the entangled creature can move only within the limits that the rope allows. If the entangled creature attempts to cast a spell, it must make a concentration check with a DC of 15 + the spell's level or be unable to cast the spell.&nl;An entangled creature can escape with a DC 20 Escape Artist check (a full-round action). The net has 5 hit points and can be burst with a DC 25 Strength check (also a fullround action). A net is useful only against creatures within one size category of you.&nl;A net must be folded to be thrown effectively. The first time you throw your net in a fight, you make a normal ranged touch attack roll. After the net is unfolded, you take a -4 penalty on attack rolls with it. It takes 2 rounds for a proficient user to fold a net and twice that long for a nonproficient one to do so.",
  },
  Proficiency="WEAPON|Net",
  Range=10,
  Size="M",
  SourcePage="p.147",
  Visible=false,
  Weight=6,
  WieldCategory="OneHandOnly",
  Types={
    "Weapon",
    "Resizable",
    "Ranged",
    "Exotic",
    "Thrown",
    "Weapon Group Thrown",
  },
})
DefineEquipment({
  Name="Shuriken",
  Key="Shuriken (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d2"),
  },
  CanHaveMods=true,
  Cost=0.2,
  Description={
    Format="A shuriken is a small piece of metal with sharpened edges, designed for throwing. A shuriken can't be used as a melee weapon. Although they are thrown weapons, shuriken are treated as ammunition for the purposes of drawing them, crafting masterwork or otherwise special versions of them, and what happens to them after they are thrown.",
  },
  Proficiency="WEAPON|Shuriken",
  Range=10,
  Size="M",
  SourcePage="p.148",
  Visible=false,
  Weight=0.1,
  WieldCategory="Light",
  EquipmentModifiers={
    {
      Key="Special Quality ~ Thrown Ammunition",
    },
    {
      Key="Special Quality ~ Monk",
    },
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
})
DefineEquipment({
  Name="Halfling Sling Staff",
  Key="Halfling Sling Staff (Base)",
  SortKey="zzBase",
  Attack={
    CriticalHitMultiplier="x3",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Contains={
    Capacity=math.huge,
    ItemLimits={
    },
  },
  Cost=20,
  Description={
    Format="Made from a specially designed sling attached to a short club, a halfling sling staff can be used by a proficient wielder to devastating effect. Your Strength modifier applies to damage rolls when you use a halfling sling staff, just as it does for thrown weapons. You can fire, but not load, a halfling sling staff with one hand. Loading a halfling sling staff is a move action that requires two hands and provokes attacks of opportunity.&nl;You can hurl ordinary stones with a halfling sling staff, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a -1 penalty on attack rolls.&nl;A halfling sling staff can be used as a simple weapon that deals bludgeoning damage equal to that of a club of its size. Halflings treat halfling sling staves as martial weapons.",
  },
  Proficiency="WEAPON|Sling Staff (Halfling)",
  Range=80,
  Size="S",
  SourcePage="p.148",
  Visible=false,
  Weight=3,
  WieldCategory="OneHandOnly",
  Bonuses={
    {
      Category="WEAPON",
      Formula=Formula("STR"),
      Variables={
        "DAMAGE",
      },
    },
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
})
CopyEquipment("Blowgun (Base)", {
  Name="Blowgun",
  Key="Blowgun",
  SortKey="Blowgun",
  BaseItem="Blowgun (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Heavy Crossbow (Base)", {
  Name="Crossbow, Heavy",
  Key="Crossbow (Heavy)",
  SortKey="Crossbow, Heavy",
  BaseItem="Heavy Crossbow (Base)",
  CanHaveMods=true,
  DisplayName="Heavy Crossbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Light Crossbow (Base)", {
  Name="Crossbow, Light",
  Key="Crossbow (Light)",
  SortKey="Crossbow, Light",
  BaseItem="Light Crossbow (Base)",
  CanHaveMods=true,
  DisplayName="Light Crossbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Dart (Base)", {
  Name="Dart",
  Key="Dart",
  SortKey="Dart",
  BaseItem="Dart (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Javelin (Base)", {
  Name="Javelin",
  Key="Javelin",
  SortKey="Javelin",
  BaseItem="Javelin (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Sling (Base)", {
  Name="Sling",
  Key="Sling",
  SortKey="Sling",
  BaseItem="Sling (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Longbow (Base)", {
  Name="Longbow",
  Key="Longbow",
  SortKey="Longbow",
  BaseItem="Longbow (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Composite Longbow (Base)", {
  Name="Longbow, Composite",
  Key="Longbow (Composite)",
  SortKey="Longbow, Composite",
  BaseItem="Composite Longbow (Base)",
  CanHaveMods=true,
  DisplayName="Composite Longbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Composite Longbow (Base)", {
  Name="Longbow, Composite (+0 Str)",
  Key="Longbow (Composite +0)",
  SortKey="Longbow, Composite (+0 Str)",
  BaseItem="Composite Longbow (Base)",
  CanHaveMods=false,
  DisplayName="Composite Longbow (+0 Str)",
  ModsRequired=false,
  Visible=true,
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
})
CopyEquipment("Shortbow (Base)", {
  Name="Shortbow",
  Key="Shortbow",
  SortKey="Shortbow",
  BaseItem="Shortbow (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Composite Shortbow (Base)", {
  Name="Shortbow, Composite",
  Key="Shortbow (Composite)",
  SortKey="Shortbow, Composite",
  BaseItem="Composite Shortbow (Base)",
  CanHaveMods=true,
  DisplayName="Composite Shortbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Composite Shortbow (Base)", {
  Name="Shortbow, Composite (+0 Str)",
  Key="Shortbow (Composite +0)",
  SortKey="Shortbow, Composite (+0 Str)",
  BaseItem="Composite Shortbow (Base)",
  CanHaveMods=false,
  DisplayName="Composite Shortbow (+0 Str)",
  ModsRequired=false,
  Visible=true,
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
})
CopyEquipment("Bolas (Base)", {
  Name="Bolas",
  Key="Bolas",
  SortKey="Bolas",
  BaseItem="Bolas (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
  },
})
CopyEquipment("Hand Crossbow (Base)", {
  Name="Crossbow, Hand",
  Key="Crossbow (Hand)",
  SortKey="Crossbow, Hand",
  BaseItem="Hand Crossbow (Base)",
  CanHaveMods=true,
  DisplayName="Hand Crossbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Repeating Heavy Crossbow (Base)", {
  Name="Crossbow, Repeating Heavy",
  Key="Crossbow (Repeating Heavy)",
  SortKey="Crossbow, Repeating Heavy",
  BaseItem="Repeating Heavy Crossbow (Base)",
  CanHaveMods=true,
  DisplayName="Repeating Heavy Crossbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Repeating Light Crossbow (Base)", {
  Name="Crossbow, Repeating Light",
  Key="Crossbow (Repeating Light)",
  SortKey="Crossbow, Repeating Light",
  BaseItem="Repeating Light Crossbow (Base)",
  CanHaveMods=true,
  DisplayName="Repeating Light Crossbow",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Net (Base)", {
  Name="Net",
  Key="Net",
  SortKey="Net",
  BaseItem="Net (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Rope",
    },
  },
})
CopyEquipment("Shuriken (Base)", {
  Name="Shuriken",
  Key="Shuriken",
  SortKey="Shuriken",
  BaseItem="Shuriken (Base)",
  CanHaveMods=true,
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Steel",
    },
  },
})
CopyEquipment("Halfling Sling Staff (Base)", {
  Name="Sling Staff, Halfling",
  Key="Sling Staff (Halfling)",
  SortKey="Sling Staff, Halfling",
  BaseItem="Halfling Sling Staff (Base)",
  CanHaveMods=true,
  DisplayName="Halfling Sling Staff",
  Visible=true,
  EquipmentModifiers={
    {
      Key="Material ~ Leather",
    },
    {
      Key="Material ~ Wood",
    },
  },
})
CopyEquipment("Javelin (Base)", {
  Name="Javelin of Lightning",
  Key="Javelin of Lightning",
  SortKey="Javelin of Lightning",
  CanHaveMods=true,
  Description={
    Format="This javelin becomes a 5d6 lightning bolt when thrown (Reflex DC 14 half ). It is consumed in the attack.",
  },
  SourcePage="p.473",
  Visible=true,
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
  SpecialProperties={
    {
      Format="becomes a 5d6 lightning bolt when thrown (Reflex DC 14 half )",
    },
  },
  Qualities={
    Aura="faint evocation",
    ['Caster Level']="5th",
    Slot="none",
    ['Construction Cost']="750 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, lightning bolt",
  },
})
CopyEquipment("Composite Longbow (Base)", {
  Name="Oathbow",
  Key="Oathbow",
  SortKey="Oathbow",
  CanHaveMods=true,
  Description={
    Format="Of elven make, this white +2 composite longbow (+2 Str bonus) whispers, \"Swift defeat to my enemies\" in Elven when nocked and pulled. Once per day, if the archer swears aloud to slay her target (a free action), the bow's whisper becomes the shout \"Death to those who have wronged me!\" Against such a sworn enemy, the bow has a +5 enhancement bonus, and arrows launched from it deal an additional 2d6 points of damage (and x4 on a critical hit instead of the normal x3). After an enemy has been sworn, the bow is treated as only a masterwork weapon against all foes other than the sworn enemy, and the archer takes a -1 penalty on attack rolls with any weapon other than the oathbow. These bonuses and penalties last for 7 days or until the sworn enemy is slain or destroyed by the wielder of the oathbow, whichever comes first.&nl;The oathbow may only have one sworn enemy at a time. Once the wielder swears to slay a target, he cannot make a new oath until he has slain that target or 7 days have passed. Even if the wielder slays the sworn enemy on the same day that he makes the oath, he cannot activate the oathbow's special power again until 24 hours have passed from the time he made the oath.",
  },
  SourcePage="p.474",
  Visible=true,
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
  SpecialProperties={
    {
      Format="+5 enhancement bonus against sworn enemy and arrows launched from it deal an additional 2d6 points of damage with x4 critical",
    },
  },
  Qualities={
    Aura="strong evocation",
    ['Caster Level']="15th",
    Slot="none",
    ['Construction Cost']="13,100 gp",
    ['Construction Requirements']="Craft Magic Arms and Armor, creator must be an elf",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d2)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d2"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=1,
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d3)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d3"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=1,
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d4)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d4"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=2,
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d6)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d6"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=6,
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d8)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d8"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=10,
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d10)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d10"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=12,
  WieldCategory="OneHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (1d12)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("1d12"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=12,
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d4)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("2d4"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=12,
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d6)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("2d6"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=12,
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d8)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("2d8"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=12,
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
DefineEquipment({
  Name="Improvised Weapon (2d10)",
  Attack={
    CriticalHitMultiplier="x2",
    CriticalHitRange="1",
    Damage=DiceFormula("2d10"),
  },
  CanHaveMods=true,
  Cost=0,
  Proficiency="WEAPON|Improvised Weapon",
  Size="M",
  Weight=12,
  WieldCategory="TwoHanded",
  Types={
    "Weapon",
    "Melee",
    "Improvised",
  },
})
