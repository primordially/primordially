-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_domains.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineDomain({
  Name="Air",
  Description={
    Format="You can manipulate lightning, mist, and wind, traffic with air creatures, and are resistant to electricity damage.",
  },
  SourcePage="p.41",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Air Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("AirDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainAir"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Air",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Obscuring Mist",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Wind Wall",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Gaseous Form",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Air Walk",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Control Winds",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Chain Lightning",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Elemental Body IV (Air Only)",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Whirlwind",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Elemental Swarm (Air Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Animal",
  Description={
    Format="You can speak with and befriend animals with ease. In addition, you treat Knowledge (Nature) as a class skill.",
  },
  SourcePage="p.41",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Animal Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("AnimalDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  ClassSkills={
    "Knowledge (Nature)",
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainAnimal"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Animal",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Calm Animals",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Hold Animal",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Dominate Animal",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Summon Nature's Ally IV (Animals Only)",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Beast Shape III (Animals Only)",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Antilife Shell",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Animal Shapes",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Summon Nature's Ally VIII (Animals Only)",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Shapechange",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Artifice",
  Description={
    Format="You can repair damage to objects, animate objects with life, and create objects from nothing.",
  },
  SourcePage="p.41",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Artifice Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ArtificeDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainArtifice"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Artifice",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Animate Rope",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Wood Shape",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Stone Shape",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Minor Creation",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Fabricate",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Major Creation",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Wall of Iron",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Statue",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Prismatic Sphere",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Chaos",
  Description={
    Format="Your touch infuses life and weapons with chaos, and you revel in all things anarchic.",
  },
  SourcePage="p.42",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Chaos Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ChaosDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.IsAlignment("CG") or character.IsAlignment("CN") or character.IsAlignment("CE")
    end,
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainChaos"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Chaos",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Protection from Law",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Align Weapon (Chaos Only)",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Circle against Law",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Chaos Hammer",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Dispel Law",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Animate Objects",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Word of Chaos",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Cloak of Chaos",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Summon Monster IX (Chaos Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Charm",
  Description={
    Format="You can baffle and befuddle foes with a touch or a smile, and your beauty and grace are divine.",
  },
  SourcePage="p.42",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Charm Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("CharmDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainCharm"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Charm",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Charm Person",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Calm Emotions",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Suggestion",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Heroism",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Charm Monster",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Geas/Quest",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Insanity",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Demand",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Dominate Monster",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Community",
  Description={
    Format="Your touch can heal wounds, and your presence instills unity and strengthens emotional bonds.",
  },
  SourcePage="p.42",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Community Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("CommunityDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainCommunity"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Community",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Bless",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Shield Other",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Prayer",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Imbue with Spell Ability",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Telepathic Bond",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Heroes' Feast",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Refuge",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Cure Critical Wounds (Mass)",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Miracle",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Darkness",
  Description={
    Format="You manipulate shadows and darkness. In addition, you receive Blind-Fight as a bonus feat.",
  },
  SourcePage="p.42",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Darkness Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DarknessDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Blind-Fight",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainDarkness"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Darkness",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Obscuring Mist",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Blindness/Deafness (Blindness Only)",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Deeper Darkness",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Shadow Conjuration",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Summon Monster V (1d3 Shadows)",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Shadow Walk",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Power Word Blind",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Shadow Evocation (Greater)",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Shades",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Death",
  Description={
    Format="You can cause the living to bleed at a touch, and find comfort in the presence of the dead.",
  },
  SourcePage="p.42",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Death Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DeathDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainDeath"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Death",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Cause Fear",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Death Knell",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Animate Dead",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Death Ward",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Slay Living",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Create Undead",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Destruction",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Create Greater Undead",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Wail of the Banshee",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "!PREDEITY:1",
            "Pharasma",
          },
        },
      },
    },
    {
      Kind="Domain",
      Name="Death",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Cause Fear",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Death Knell",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Speak with Dead",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Death Ward",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Slay Living",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Antilife Shell",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Destruction",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Symbol of Death",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Wail of the Banshee",
          },
        },
      },
      Conditions={
        function (character, item, sources)
          return (character.Diety.Name == "Pharasma")
        end,
      },
    },
  },
})
DefineDomain({
  Name="Destruction",
  Description={
    Format="You revel in ruin and devastation, and can deliver particularly destructive attacks.",
  },
  SourcePage="p.43",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Destruction Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DestructionDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainDestruction"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Destruction",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "True Strike",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Shatter",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Rage",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Inflict Critical Wounds",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Shout",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Harm",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Disintegrate",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Earthquake",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Implosion",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Earth",
  Description={
    Format="You have mastery over earth, metal, and stone, can fire darts of acid, and command earth creatures.",
  },
  SourcePage="p.43",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Earth Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("EarthDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainEarth"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Earth",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Magic Stone",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Soften Earth and Stone",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Stone Shape",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Spike Stones",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Wall of Stone",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Stoneskin",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Elemental Body IV (Earth Only)",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Earthquake",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Elemental Swarm (Earth Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Evil",
  Description={
    Format="You are sinister and cruel, and have wholly pledged your soul to the cause of evil.",
  },
  SourcePage="p.43",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Evil Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("EvilDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.IsAlignment("LE") or character.IsAlignment("NE") or character.IsAlignment("CE")
    end,
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainEvil"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Evil",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Protection from Good",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Align Weapon (Evil Only)",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Circle against Good",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Unholy Blight",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Dispel Good",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Create Undead",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Blasphemy",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Unholy Aura",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Summon Monster IX (Evil Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Fire",
  Description={
    Format="You can call forth fire, command creatures of the inferno, and your flesh does not burn.",
  },
  SourcePage="p.44",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Fire Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("FireDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainFire"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Fire",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Burning Hands",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Produce Flame",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Fireball",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Wall of Fire",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Fire Shield",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Fire Seeds",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Elemental Body IV (Fire Only)",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Incendiary Cloud",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Elemental Swarm (Fire Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Glory",
  Description={
    Format="You are infused with the glory of the divine, and are a true foe of the undead. In addition, when you channel positive energy to harm undead creatures, the save DC to halve the damage is increased by 2.",
  },
  SourcePage="p.44",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Glory Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GloryDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("2"),
      Type={
        Name="Domain",
      },
      Variables={
        "ClericChannelPositiveEnergyDC",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainGlory"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Glory",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Shield of Faith",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Bless Weapon",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Searing Light",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Holy Smite",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Righteous Might",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Undeath to Death",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Holy Sword",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Holy Aura",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Gate",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Good",
  Description={
    Format="You have pledged your life and soul to goodness and purity.",
  },
  SourcePage="p.44",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Good Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("GoodDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.IsAlignment("LG") or character.IsAlignment("NG") or character.IsAlignment("CG")
    end,
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainGood"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Good",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Protection from Evil",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Align Weapon (Good Only)",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Circle against Evil",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Holy Smite",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Dispel Evil",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Blade Barrier",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Holy Word",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Holy Aura",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Summon Monster IX (Good Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Healing",
  Description={
    Format="Your touch staves off pain and death, and your healing magic is particularly vital and potent.",
  },
  SourcePage="p.44",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Healing Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("HealingDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainHealing"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Healing",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Cure Light Wounds",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Cure Moderate Wounds",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Cure Serious Wounds",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Cure Critical Wounds",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Breath of Life",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Heal",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Regenerate",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Cure Critical Wounds (Mass)",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Heal (Mass)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Knowledge",
  Description={
    Format="You are a scholar and a sage of legends. In addition, you treat all Knowledge skills as class skills.",
  },
  SourcePage="p.45",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Knowledge Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("KnowledgeDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  ClassSkills={
    "TYPE=Knowledge",
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainKnowledge"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Knowledge",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Comprehend Languages",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Detect Thoughts",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Speak with Dead",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Divination",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "True Seeing",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Find the Path",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Legend Lore",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Discern Location",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Foresight",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Law",
  Description={
    Format="You follow a strict and ordered code of laws, and in so doing, achieve enlightenment.",
  },
  SourcePage="p.45",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Law Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("LawDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return character.IsAlignment("LG") or character.IsAlignment("LN") or character.IsAlignment("LE")
    end,
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainLaw"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Law",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Protection from Chaos",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Align Weapon (Law Only)",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Circle against Chaos",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Order's Wrath",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Dispel Chaos",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Hold Monster",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Dictum",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Shield of Law",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Summon Monster IX (Law Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Liberation",
  Description={
    Format="You are a spirit of freedom and a staunch foe against all who would enslave and oppress.",
  },
  SourcePage="p.45",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Liberation Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("LiberationDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainLiberation"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Liberation",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Remove Fear",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Remove Paralysis",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Remove Curse",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Freedom of Movement",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Break Enchantment",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Dispel Magic (Greater)",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Refuge",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Mind Blank",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Freedom",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Luck",
  Description={
    Format="You are infused with luck, and your mere presence can spread good fortune.",
  },
  SourcePage="p.45",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Luck Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("LuckDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainLuck"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Luck",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "True Strike",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Aid",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Protection from Energy",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Freedom of Movement",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Break Enchantment",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Mislead",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Spell Turning",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Moment of Prescience",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Miracle",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Madness",
  Description={
    Format="You embrace the madness that lurks deep in your heart, and can unleash it to drive your foes insane or to sacrifice certain abilities to hone others.",
  },
  SourcePage="p.45",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Madness Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("MadnessDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainMadness"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Madness",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Confusion (Lesser)",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Touch of Idiocy",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Rage",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Confusion",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Nightmare",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Phantasmal Killer",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Insanity",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Scintillating Pattern",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Weird",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Magic",
  Description={
    Format="You are a true student of all things mystical, and see divinity in the purity of magic.",
  },
  SourcePage="p.46",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Magic Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("MagicDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainMagic"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Magic",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Identify",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Magic Mouth",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Dispel Magic",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Imbue with Spell Ability",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Spell Resistance",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Antimagic Field",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Spell Turning",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Protection from Spells",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Mage's Disjunction",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Nobility",
  Description={
    Format="You are a great leader, an inspiration to all who follow the teachings of your faith.",
  },
  SourcePage="p.46",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Nobility Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("NobilityDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainNobility"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Nobility",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Divine Favor",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Enthrall",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Vestment",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Discern Lies",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Command (Greater)",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Geas/Quest",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Repulsion",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Demand",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Storm of Vengeance",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Plant",
  Description={
    Format="You find solace in the green, can grow defensive thorns, and can communicate with plants.",
  },
  SourcePage="p.46",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Plant Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("PlantDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainPlant"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Plant",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Entangle",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Barkskin",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Plant Growth",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Command Plants",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Wall of Thorns",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Repel Wood",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Animate Plants",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Control Plants",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Shambler",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Protection",
  Description={
    Format="Your faith is your greatest source of protection, and you can use that faith to defend others. In addition, you receive a +1 resistance bonus on saving throws. This bonus increases by 1 for every 5 levels you possess.",
  },
  SourcePage="p.46",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Protection Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ProtectionDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Bonuses={
    {
      Category="SAVE",
      Formula=Formula("DomainProtectionSaveBonus"),
      Type={
        Name="Resistance",
      },
      Variables={
        "ALL",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainProtection"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Protection",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Sanctuary",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Shield Other",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Protection from Energy",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Spell Immunity",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Spell Resistance",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Antimagic Field",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Repulsion",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Mind Blank",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Prismatic Sphere",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Repose",
  Description={
    Format="You see death not as something to be feared, but as a final rest and reward for a life well spent. The taint of undeath is a mockery of what you hold dear.",
  },
  SourcePage="p.46",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Repose Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("ReposeDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainRepose"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Repose",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Deathwatch",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Gentle Repose",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Speak with Dead",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Death Ward",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Slay Living",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Undeath to Death",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Destruction",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Waves of Exhaustion",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Wail of the Banshee",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Rune",
  Description={
    Format="In strange and eldritch runes you find potent magic. You gain Scribe Scroll as a bonus feat.",
  },
  SourcePage="p.47",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Rune Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("RuneDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
    {
      Category="FEAT",
      Nature="AUTOMATIC",
      Names={
        "Scribe Scroll",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainRune"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Rune",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Erase",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Secret Page",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Glyph of Warding",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Explosive Runes",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Planar Binding (Lesser)",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Glyph of Warding (Greater)",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Instant Summons",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Symbol of Death",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Teleportation Circle",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Strength",
  Description={
    Format="In strength and brawn there is truth - your faith gives you incredible might and power.",
  },
  SourcePage="p.47",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Strength Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("StrengthDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainStrength"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Strength",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Enlarge Person",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Bull's Strength",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Vestment",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Spell Immunity",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Righteous Might",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Stoneskin",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Grasping Hand",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Clenched Fist",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Crushing Hand",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Sun",
  Description={
    Format="You see truth in the pure and burning light of the sun, and can call upon its blessing or wrath to work great deeds.",
  },
  SourcePage="p.47",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Sun Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("SunDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainSun"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Sun",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Endure Elements",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Heat Metal",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Searing Light",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Fire Shield",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Flame Strike",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Fire Seeds",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Sunbeam",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Sunburst",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Prismatic Sphere",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Travel",
  Description={
    Format="You are an explorer and find enlightenment in the simple joy of travel, be it by foot or conveyance or magic. Increase your base speed by 10 feet.",
  },
  SourcePage="p.47",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Travel Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("TravelDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Bonuses={
    {
      Category="MOVEADD",
      Formula=Formula("10"),
      Variables={
        "TYPE=Walk",
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainTravel"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Travel",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Longstrider",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Locate Object",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Fly",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Dimension Door",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Teleport",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Find the Path",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Teleport (Greater)",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Phase Door",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Astral Projection",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Trickery",
  Description={
    Format="You are a master of illusions and deceptions. Bluff, Disguise, and Stealth are class skills.",
  },
  SourcePage="p.48",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Trickery Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("TrickeryDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  ClassSkills={
    "Bluff",
    "Disguise",
    "Stealth",
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainTrickery"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Trickery",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Disguise Self",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Invisibility",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Nondetection",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Confusion",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "False Vision",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Mislead",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Screen",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Invisibility (Mass)",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Time Stop",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="War",
  Description={
    Format="You are a crusader for your god, always ready and willing to fight to defend your faith.",
  },
  SourcePage="p.48",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ War Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("WarDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainWar"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="War",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Magic Weapon",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Spiritual Weapon",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Magic Vestment",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Divine Power",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Flame Strike",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Blade Barrier",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Power Word Blind",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Power Word Stun",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Power Word Kill",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Water",
  Description={
    Format="You can manipulate water and mist and ice, conjure creatures of water, and resist cold.",
  },
  SourcePage="p.48",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Water Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("WaterDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainWater"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Water",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Obscuring Mist",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Fog Cloud",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Water Breathing",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Control Water",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Ice Storm",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Cone of Cold",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Elemental Body IV (Water Only)",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Horrid Wilting",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Elemental Swarm (Water Spell Only)",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Weather",
  Description={
    Format="With power over storm and sky, you can call down the wrath of the gods upon the world below.",
  },
  SourcePage="p.48",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Weather Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("WeatherDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainWeather"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Weather",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Obscuring Mist",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Fog Cloud",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Call Lightning",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Sleet Storm",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Ice Storm",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Control Winds",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Control Weather",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Whirlwind",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Storm of Vengeance",
          },
        },
      },
    },
  },
})
DefineDomain({
  Name="Death (Pharasma)",
  Description={
    Format="You can cause the living to bleed at a touch, and find comfort in the presence of the dead.",
  },
  SourcePage="p.42",
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Names={
        "Core Domain ~ Death Domain",
      },
      Conditions={
        function (character, item, sources)
          return not (character.HasAnyAbility(function (ability)
            if ability.Category ~= "Special Ability" then return false end
            if ability.IsAnyType("DeathDomainReplacement") then return true end
            return false
          end))
        end,
      },
    },
  },
  Conditions={
    function (character, item, sources)
      return (character.Variables["DomainNotAllowed"] < 1) or (character.Variables["AllowDomainDeath"] == 1)
    end,
  },
  SpellLists={
    {
      Kind="Domain",
      Name="Death",
      Levels={
        {
          SpellLevel=1,
          Spells={
            "Cause Fear",
          },
        },
        {
          SpellLevel=2,
          Spells={
            "Death Knell",
          },
        },
        {
          SpellLevel=3,
          Spells={
            "Speak with Dead",
          },
        },
        {
          SpellLevel=4,
          Spells={
            "Death Ward",
          },
        },
        {
          SpellLevel=5,
          Spells={
            "Slay Living",
          },
        },
        {
          SpellLevel=6,
          Spells={
            "Antilife Shell",
          },
        },
        {
          SpellLevel=7,
          Spells={
            "Destruction",
          },
        },
        {
          SpellLevel=8,
          Spells={
            "Symbol of Death",
          },
        },
        {
          SpellLevel=9,
          Spells={
            "Wail of the Banshee",
          },
        },
      },
      Conditions={
        function (character, item, sources)
          return (character.Diety.Name == "Pharasma")
        end,
      },
    },
  },
})
ModifyDomain({
  Name="Air",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Air")) or (character.Variables["AirDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Animal",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Animal")) or (character.Variables["AnimalDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Artifice",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Artifice")) or (character.Variables["ArtificeDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Chaos",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Chaos")) or (character.Variables["ChaosDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Charm",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Charm")) or (character.Variables["CharmDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Community",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Community")) or (character.Variables["CommunityDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Darkness",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Darkness")) or (character.Variables["DarknessDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Death",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Death")) or (character.Variables["DeathDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Destruction",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Destruction")) or (character.Variables["DestructionDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Earth",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Earth")) or (character.Variables["EarthDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Evil",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Evil")) or (character.Variables["EvilDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Fire",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Fire")) or (character.Variables["FireDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Glory",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Glory")) or (character.Variables["GloryDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Good",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Good")) or (character.Variables["GoodDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Healing",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Healing")) or (character.Variables["HealingDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Knowledge",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Knowledge")) or (character.Variables["KnowledgeDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Law",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Law")) or (character.Variables["LawDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Liberation",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Liberation")) or (character.Variables["LiberationDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Luck",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Luck")) or (character.Variables["LuckDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Madness",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Madness")) or (character.Variables["MadnessDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Magic",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Magic")) or (character.Variables["MagicDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Nobility",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Nobility")) or (character.Variables["NobilityDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Plant",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Plant")) or (character.Variables["PlantDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Protection",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Protection")) or (character.Variables["ProtectionDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Repose",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Repose")) or (character.Variables["ReposeDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Rune",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Rune")) or (character.Variables["RuneDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Strength",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Strength")) or (character.Variables["StrengthDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Sun",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Sun")) or (character.Variables["SunDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Travel",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Travel")) or (character.Variables["TravelDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Trickery",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Trickery")) or (character.Variables["TrickeryDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="War",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("War")) or (character.Variables["WarDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Water",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Water")) or (character.Variables["WaterDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Weather",
  Conditions={
    function (character, item, sources)
      return (character.HasDomain("Weather")) or (character.Variables["WeatherDomain"] < 1)
    end,
  },
})
ModifyDomain({
  Name="Death (Pharasma)",
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Variables={
        "DomainTaken",
      },
    },
  },
})
