-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_spells.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineSpell({
  Name="Commune (six questions)",
  Description={
    Format="You contact your deity--or agents thereof--and ask questions that can be answered by a simple yes or no.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/commune.html#_commune",
  SourcePage="p.257",
  TargetArea="You",
  CastTime={
    "10 minutes",
  },
  Components={
    "V, S, M, DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds"),
  },
  Range={
    "Personal",
  },
  Schools={
    "Divination",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Confusion (single target only)",
  Description={
    Format="This spell causes confusion in the targets, making them unable to determine their actions.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/confusion.html#_confusion",
  SourcePage="p.258",
  SpellResistance="Yes",
  TargetArea="All creatures in a 15-ft.-radius burst",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M/DF",
  },
  Descriptors={
    "Mind-Affecting",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds"),
  },
  Range={
    "Medium",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Enchantment",
  },
  SubSchools={
    "Compulsion",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Create Wine",
  Description={
    Format="The food that this spell creates is simple fare of your choice--highly nourishing, if rather bland.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/createWater.html",
  SourcePage="p.139",
  SpellResistance="No",
  TargetArea="Food and water to sustain (CASTERLEVEL*3) humans or (CASTERLEVEL) horses for 24 hours",
  CastTime={
    "10 minutes",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("24 hours; see text"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Creation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Enlarge Person (self only)",
  Description={
    Format="This spell causes instant growth of a humanoid creature, doubling its height and multiplying its weight by 8.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/enlargePerson.html#_enlarge-person",
  SourcePage="p.277",
  SpellResistance="Yes",
  TargetArea="One humanoid creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, M",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Close",
  },
  Save={
    "Fortitude negates",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Ethereal Jaunt (self plus objects)",
  Description={
    Format="You become ethereal, along with your equipment.",
  },
  DisplayName="Ethereal Jaunt (self plus 50 lbs. of objects only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/etherealJaunt.html#_ethereal-jaunt",
  SourcePage="p.279",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Personal",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Ethereal Jaunt ~ Cauchemar Nightmare",
  Description={
    Format="You become ethereal, along with your equipment and one rider.",
  },
  DisplayName="Ethereal Jaunt (self plus rider)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/etherealJaunt.html#_ethereal-jaunt",
  SourcePage="p.216",
  TargetArea="Self plus 1 rider",
  CastTime={
    "1 standard action",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Touch",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Fear (single target)",
  Description={
    Format="An invisible cone of terror causes one living creature in the area to become panicked unless it succeeds on a Will save.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/fear.html#_fear",
  SourcePage="p.281",
  SpellResistance="Yes",
  TargetArea="One creature",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M",
  },
  Descriptors={
    "Fear",
    "Mind-Affecting",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds or 1 round; see text"),
  },
  Range={
    "30 ft.",
  },
  Save={
    "Will partial",
  },
  Schools={
    "Necromancy",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Invisibility (self only)",
  Description={
    Format="The creature or object touched becomes invisible.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/invisibility.html#_invisibility",
  SourcePage="p.139",
  SpellResistance="Yes (harmless) or yes (harmless, object)",
  TargetArea="You or a creature or object weighing no more than (CASTERLEVEL*100) lbs.",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Personal or touch",
  },
  Save={
    "Will negates (harmless) or Will negates (harmless, object)",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Glamer",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Invisibility (Greater/self only)",
  Description={
    Format="This spell functions like invisibility, except that it doesn't end if the subject attacks.",
  },
  DisplayName="Greater Invisibility (self only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/invisibility.html#_invisibility",
  SourcePage="p.302",
  SpellResistance="Yes (harmless) or yes (harmless, object)",
  TargetArea="You or creature touched",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Personal or touch",
  },
  Save={
    "Will negates (harmless)",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Glamer",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Plane Shift (willing targets only)",
  Description={
    Format="You move yourself or some other creature to another plane of existence or alternate dimension.",
  },
  DisplayName="Plane Shift (willing targets to elemental planes, Astral Plane, or Material Plane only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/planeShift.html#_plane-shift",
  SourcePage="p.139",
  SpellResistance="Yes",
  TargetArea="Creature touched, or up to eight willing creatures joining hands",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, F",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Plane Shift (self only)",
  Description={
    Format="You move yourself or some other creature to another plane of existence or alternate dimension.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/planeShift.html#_plane-shift",
  SourcePage="p.139",
  SpellResistance="Yes",
  TargetArea="Creature touched, or up to eight willing creatures joining hands",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, F",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Plane Shift ~ Nightmare",
  Description={
    Format="You move yourself and one rider to another plane of existence or alternate dimension.",
  },
  DisplayName="Plane Shift (self plus rider)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/planeShift.html#_plane-shift",
  SourcePage="p.216",
  SpellResistance="Yes",
  TargetArea="Self plus 1 rider",
  CastTime={
    "1 standard action",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Purify Food and Drink (liquids only)",
  Description={
    Format="This spell makes spoiled, rotten, diseased, poisonous, or otherwise contaminated food and water pure and suitable for eating and drinking.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/purifyFoodAndDrink.html#_purify-food-and-drink",
  SourcePage="p.328",
  SpellResistance="Yes (object)",
  TargetArea="(CASTERLEVEL) cu. ft. of contaminated food and water",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "10 ft.",
  },
  Save={
    "Will negates (object)",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Pyroclastic Storm",
  Description={
    Format="Cinders deal 5d6 damage in cylinder 40 ft. across.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/iceStorm.html#_ice-storm",
  SourcePage="p.140",
  SpellResistance="Yes",
  TargetArea="Cylinder (20-ft. radius, 40 ft. high)",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M/DF",
  },
  Descriptors={
    "Fire",
  },
  Duration={
    Formula("1 full round"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Long",
  },
  Save={
    "None",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Fireball",
  Description={
    Format="A fireball spell generates a searing explosion of flame that detonates with a low roar and deals (min(10,CASTERLEVEL))d6 points of fire damage to every creature within the area.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/fireball.html#_fireball",
  SourcePage="p.283",
  SpellResistance="Yes",
  TargetArea="20-ft.-radius spread",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M",
  },
  Descriptors={
    "Fire",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Long",
  },
  Save={
    "Reflex half",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Invisibility (self only)",
  Description={
    Format="The creature or object touched becomes invisible.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/invisibility.html#_invisibility",
  SourcePage="p.139",
  SpellResistance="Yes (harmless) or yes (harmless, object)",
  TargetArea="You or a creature or object weighing no more than (CASTERLEVEL*100) lbs.",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Personal or touch",
  },
  Save={
    "Will negates (harmless) or Will negates (harmless, object)",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Glamer",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Suggestion",
  Description={
    Format="You influence the actions of the target creature by suggesting a course of activity.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/suggestion.html#_suggestion",
  SourcePage="p.350",
  SpellResistance="Yes",
  TargetArea="One living creature",
  CastTime={
    "1 swift action",
  },
  Descriptors={
    "Language-Dependent",
    "Mind-Affecting",
  },
  Duration={
    Formula("(CASTERLEVEL) hours or until completed"),
  },
  Range={
    "Close",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Enchantment",
  },
  SubSchools={
    "Compulsion",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Quickened Telekinesis",
  Description={
    Format="You move objects or creatures by concentrating on them.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/telekinesis.html#_telekinesis",
  SourcePage="p.357",
  SpellResistance="Yes (object); see text",
  TargetArea="Or Targets see text",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("Concentration (up to (CASTERLEVEL) rounds) or instantaneous; see text"),
  },
  Range={
    "Long",
  },
  Save={
    "Will negates (object) or none; see text; Spell",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Quickened Wall of Fire",
  Description={
    Format="An immobile, blazing curtain of shimmering violet fire springs into existence.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/wallOfFire.html#_wall-of-fire",
  SourcePage="p.365",
  SpellResistance="Yes",
  TargetArea="Opaque sheet of flame up to (CASTERLEVEL*20) ft. long or a ring of fire with a radius of up to ((CASTERLEVEL/2)*5) ft.; either form 20 ft. high",
  CastTime={
    "1 swift action",
  },
  Descriptors={
    "Fire",
  },
  Duration={
    Formula("Concentration + (CASTERLEVEL) rounds"),
  },
  Range={
    "Medium",
  },
  Save={
    "None",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Reduce Person (self only)",
  Description={
    Format="This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/reducePerson.html#_reduce-person",
  SourcePage="p.330",
  SpellResistance="Yes",
  TargetArea="One humanoid creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, M",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Close",
  },
  Save={
    "Fortitude negates",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Scorching Ray (2 rays only)",
  Description={
    Format="You blast your enemies with up to (min(3,1+(floor(CASTERLEVEL/4)))) searing beams of fire dealing 4d6 points of fire damage.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/scorchingRay.html#_scorching-ray",
  SourcePage="p.337",
  SpellResistance="Yes",
  TargetArea="One or more rays",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Fire",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Summon Monster I (Dretch)",
  Description={
    Format="This spell summons an extraplanar creature.",
  },
  DisplayName="Summon Monster I (1 Dretch 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-i",
  SourcePage="p.350",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Babau)",
  Description={
    Format="This spell functions like summon monster I, except that you can  summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 Babau at 40%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Shadow Demon)",
  Description={
    Format="This spell functions like summon monster I, except that you can  summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 Shadow Demon 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Succubus)",
  Description={
    Format="This spell functions like summon monster I, except that you can  summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 Babau at 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Vrock)",
  Description={
    Format="This spell functions like summon monster I, except that you can  summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 Vrock 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Bearded Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can  summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 Bearded Devil or 6 Lemures, 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Erinyes)",
  Description={
    Format="This spell functions like summon monster I, except that you can  summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (2 Bearded Devils, 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Glabrezu)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IV (1 Glabrezu 20% or 1d2 Vrocks 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Hezrou)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IV (1 Hezrou 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Nabasu)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IV (1 Nabasu 30% Or 1d4 Babaus 30%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Barbed Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IV (1 Barbed Devil 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Bone Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IV (1 Bone Devil, 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Ice Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IV (2 Bone Devils, 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Marilith)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster V (1 Marilith 20%, 1 Nalfeshnee at 35%, Or 1d4 Hezrous at 60%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Nalfeshnee)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster V (1 Nalfeshnee 20%, 1d4 Hezrous 40%, Or 1d4 Vrocks 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VI (Horned Devil)",
  Description={
    Format="This spell functions like summon monster I, except you can summon one creature from the 6th-level list, 1d3 creatures of thesame kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VI (3 Barbed Devils, 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IX (Pit Fiend)",
  Description={
    Format="Calls evil extraplanar creature to fight for you.",
  },
  DisplayName="Summon Monster IX (any 1 CR 19 or lower devil, 100%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-ix",
  SourcePage="p.277",
  SpellResistance="No",
  TargetArea="One or more summoned creatures, no two of which can be more than 30 ft. apart",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, DF",
  },
  Descriptors={
    "Evil",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IX (Celestials Only)",
  Description={
    Format="Calls good extraplanar creature to fight for you.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-ix",
  SourcePage="p.277",
  SpellResistance="No",
  TargetArea="One or more summoned creatures, no two of which can be more than 30 ft. apart",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, DF",
  },
  Descriptors={
    "Good",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IX (Fiends Only)",
  Description={
    Format="Calls evil extraplanar creature to fight for you.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-ix",
  SourcePage="p.277",
  SpellResistance="No",
  TargetArea="One or more summoned creatures, no two of which can be more than 30 ft. apart",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, DF",
  },
  Descriptors={
    "Evil",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VIII (Balor)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VIII (Any 1 Cr 19 Or Lower Demon 100%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-viii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Teleport (Greater/Within its forest territory)",
  Description={
    Format="This spell functions like teleport, except that there is no range limit and there is no chance you arrive off target.",
  },
  DisplayName="Greater Teleport (within its forest territory)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/teleport.html#_teleport",
  SourcePage="p.359",
  SpellResistance="No and yes (object)",
  TargetArea="You and touched objects or other touched willing creatures",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Personal and touch",
  },
  Save={
    "None and Will negates (object)",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Teleport (Greater/self plus objects)",
  Description={
    Format="This spell functions like teleport, except that there is no range limit and there is no chance you arrive off target.",
  },
  DisplayName="Greater Teleport (self plus 50 lbs. of objects only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/teleport.html#_teleport",
  SourcePage="p.359",
  SpellResistance="No and yes (object)",
  TargetArea="You and touched objects or other touched willing creatures",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Personal and touch",
  },
  Save={
    "None and Will negates (object)",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Veil (self only)",
  Description={
    Format="You instantly change the appearance of the subjects and then maintain that appearance for the spell's duration.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/veil.html#_veil",
  SourcePage="p.364",
  SpellResistance="Yes; see text",
  TargetArea="One or more creatures, no two of which can be more than 30 ft. apart",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("Concentration + (CASTERLEVEL) hours [D]"),
  },
  Range={
    "Long",
  },
  Save={
    "Will negates; see text",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Glamer",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Wish (granted to a mortal humanoid only)",
  Description={
    Format="Wish is the mightiest spell a wizard or sorcerer can cast. By simply speaking aloud, you can alter reality to better suit you.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/wish.html#_wish",
  SourcePage="p.370",
  SpellResistance="Yes",
  TargetArea="See text",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M",
  },
  Duration={
    Formula("See text"),
  },
  Range={
    "See text",
  },
  Save={
    "None, see text",
  },
  Schools={
    "Universal",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Wood Shape (1 lb only)",
  Description={
    Format="Wood shape enables you to form one existing piece of wood into any shape that suits your purpose.",
  },
  DisplayName="Wood Shape (1 Lb. only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/woodShape.html#_wood-shape",
  SourcePage="p.370",
  SpellResistance="Yes (object)",
  TargetArea="One touched piece of wood no larger than (10+CASTERLEVEL) cu. ft.",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, DF",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates (object)",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Mothman Spell ~ Agent of Fate",
  DisplayName="Agent of Fate",
  SourceLink="http://www.paizo.com/pathfinderRPG/prd/additionalMonsters/mothman.html",
  SourcePage="p.194",
})
DefineSpell({
  Name="Blur (self only)",
  Description={
    Format="Your outline appears blurred, shifting, and wavering granting you concealment (20%% miss chance).",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/blur.html#_blur",
  SourcePage="p.251",
  SpellResistance="No",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  Range={
    "Personal",
  },
  Save={
    "None",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Glamer",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Charm Monster (elementals only)",
  Description={
    Format="This spell functions like charm person, except that the effect is restricted to elementals.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/charmMonster.html#_charm-monster",
  SourcePage="p.254",
  SpellResistance="Yes",
  TargetArea="One living creature",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Mind-Affecting",
  },
  Duration={
    Formula("(CASTERLEVEL) days"),
  },
  Range={
    "Close",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Enchantment",
  },
  SubSchools={
    "Charm",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Dimension Door (self only)",
  Description={
    Format="You instantly transfer yourself from your current location to any other spot within range.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/dimensionDoor.html#_dimension-door",
  SourcePage="p.269",
  SpellResistance="No",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Long",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Dimension Door (self plus objects)",
  Description={
    Format="You instantly transfer yourself from your current location to any other spot within range.",
  },
  DisplayName="Dimension Door (self plus 50 lbs. of objects only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/dimensionDoor.html#_dimension-door",
  SourcePage="p.269",
  SpellResistance="No",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Long",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Dimension Door (self plus 5 lbs.)",
  Description={
    Format="You instantly transfer yourself from your current location to any other spot within range.",
  },
  DisplayName="Dimension Door (self plus 5 lbs. only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/dimensionDoor.html#_dimension-door",
  SourcePage="p.269",
  SpellResistance="No",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Long",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Disguise Self (humanoid only)",
  Description={
    Format="You make yourself--including clothing, armor, weapons, and equipment--look different.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/disguiseSelf.html#_disguise-self",
  SourcePage="p.271",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("(CASTERLEVEL*10) minutes [D]"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Personal",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Glamer",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Elemental Body III (air/water)",
  Description={
    Format="This spell functions as elemental body II, except that it also allows you to assume the form of a Large air or water elemental.",
  },
  DisplayName="Elemental Body III (air or water elementals only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/elementalBody.html#_elemental-body-iii",
  SourcePage="p.276",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  Range={
    "Personal",
  },
  Schools={
    "Transmutation",
  },
  SubSchools={
    "Polymorph",
  },
  Types={
    "Arcane",
  },
  Variants={
    "Air",
    "Water",
  },
})
DefineSpell({
  Name="Empowered Chaos Hammer",
  Description={
    Format="You unleash chaotic power to smite your enemies in the form of a multicolored explosion of leaping, ricocheting energy.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/chaosHammer.html#_chaos-hammer",
  SourcePage="p.254",
  SpellResistance="Yes",
  TargetArea="20-ft.-radius burst",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Chaotic",
  },
  Duration={
    Formula("Instantaneous (1d6 rounds); see text"),
  },
  Range={
    "Medium",
  },
  Save={
    "Will partial; see text",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Empowered Magic Missile",
  Description={
    Format="A missile of magical energy darts forth from your fingertip and strikes its target, dealing 1d4+1 points of force damage.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/magicMissile.html#_magic-missile",
  SourcePage="p.309",
  SpellResistance="Yes",
  TargetArea="Up to five creatures, no two of which can be more than 15 ft. apart",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Force",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Medium",
  },
  Save={
    "None",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Empowered Order's Wrath",
  Description={
    Format="You channel lawful power to smite enemies.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/orderSWrath.html#_order-s-wrath",
  SourcePage="p.317",
  SpellResistance="Yes",
  TargetArea="Nonlawful creatures within a burst that fills a 30-ft. cube",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Lawful",
  },
  Duration={
    Formula("Instantaneous (1 round); see text"),
  },
  Range={
    "Medium",
  },
  Save={
    "Will partial; see text",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Fabricate (Leng Spider)",
  Description={
    Format="You convert material of one sort into a product that is of the same material.",
  },
  DisplayName="Fabricate (webs only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/fabricate.html#_fabricate",
  SourcePage="p.280",
  SpellResistance="No",
  TargetArea="Up to (CASTERLEVEL*10) cu. ft.; see text",
  CastTime={
    "see text",
  },
  Components={
    "V, S, M",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Fabricate (1 cu ft)",
  Description={
    Format="You convert material of one sort into a product that is of the same material.",
  },
  DisplayName="Fabricate (1 cubic foot of material only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/fabricate.html#_fabricate",
  SourcePage="p.280",
  SpellResistance="No",
  TargetArea="1 cu. ft.; see text",
  CastTime={
    "see text",
  },
  Components={
    "V, S, M",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Fire Shield (warm)",
  Description={
    Format="This spell wreathes you in flame and causes damage to each creature that attacks you in melee protecting you from either cold-based or fire-based attacks.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/shield.html#_shield",
  SourcePage="p.282",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M",
  },
  Descriptors={
    "Fire",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Personal",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Magic Circle against Evil (self only)",
  Description={
    Format="All creatures within the area gain the effects of a protection from evil spell, and evil summoned creatures cannot enter the area either.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/magicCircleAgainstEvil.html#_magic-circle-against-evil",
  SourcePage="p.308",
  SpellResistance="No; see text",
  TargetArea="10-ft.-radius emanation from touched creature",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, M/DF",
  },
  Descriptors={
    "Good",
  },
  Duration={
    Formula("(CASTERLEVEL*10) minutes"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates (harmless)",
  },
  Schools={
    "Abjuration",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Major Image (visual and auditory only)",
  Description={
    Format="This spell functions like silent image, except that sound illusions are included in the spell effect.",
  },
  DisplayName="Major Image (visual and auditory elements only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/majorImage.html#_major-image",
  SourcePage="p.311",
  SpellResistance="No",
  TargetArea="Visual figment that cannot extend beyond (CASTERLEVEL+5) 10-ft. cubes [S]",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, F",
  },
  Duration={
    Formula("Concentration + 3 rounds"),
  },
  Range={
    "Long",
  },
  Save={
    "Will disbelief (if interacted with)",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Figment",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Meld into Stone (self only)",
  Description={
    Format="Meld into stone enables you to meld your body and possessions into a single block of stone.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/meldIntoStone.html#_meld-into-stone",
  SourcePage="p.312",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, DF",
  },
  Descriptors={
    "Earth",
  },
  Duration={
    Formula("(CASTERLEVEL*10) minutes"),
  },
  Range={
    "Personal",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Plane Shift (self/shadow only)",
  Description={
    Format="You move yourself or some other creature to another plane of existence or alternate dimension.",
  },
  DisplayName="Plane Shift (self only, to Plane of Shadow only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/planeShift.html#_plane-shift",
  SourcePage="p.139",
  SpellResistance="Yes",
  TargetArea="Creature touched, or up to eight willing creatures joining hands",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, F",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Plane Shift (self plus skiff)",
  Description={
    Format="You move yourself or some other creature to another plane of existence or alternate dimension.",
  },
  DisplayName="Plane Shift (self plus skiff and passengers only, Astral, Ethereal, and evil-aligned planes only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/planeShift.html#_plane-shift",
  SourcePage="p.139",
  SpellResistance="Yes",
  TargetArea="Creature touched, or up to eight willing creatures joining hands",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, F",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Confusion",
  Description={
    Format="This spell causes confusion in the targets, making them unable to determine their actions.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/confusion.html#_confusion",
  SourcePage="p.258",
  SpellResistance="Yes",
  TargetArea="All creatures in a 15-ft.-radius burst",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S, M/DF",
  },
  Descriptors={
    "Mind-Affecting",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds"),
  },
  Range={
    "Medium",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Enchantment",
  },
  SubSchools={
    "Compulsion",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Cone of Cold",
  Description={
    Format="Cone of cold creates an area of extreme cold, originating at your hand and extending outward in a cone, dealing (min(15,CASTERLEVEL))d6 points of cold damage.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/coneOfCold.html#_cone-of-cold",
  SourcePage="p.258",
  SpellResistance="Yes",
  TargetArea="Cone-shaped burst",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S, M",
  },
  Descriptors={
    "Cold",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "60 ft.",
  },
  Save={
    "Reflex half",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Quickened Darkness",
  Description={
    Format="This spell causes an object to radiate darkness out to a 20-foot radius.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/darkness.html#_darkness",
  SourcePage="p.263",
  SpellResistance="No",
  TargetArea="Object touched",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, M/DF",
  },
  Descriptors={
    "Darkness",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes [D]"),
  },
  Range={
    "Touch",
  },
  Save={
    "None",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Dimension Door",
  Description={
    Format="You instantly transfer yourself from your current location to any other spot within range.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/dimensionDoor.html#_dimension-door",
  SourcePage="p.269",
  SpellResistance="No",
  TargetArea="You and touched objects or other touched willing creatures",
  CastTime={
    "1 swift action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Long",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Dimension Door (self only)",
  Description={
    Format="You instantly transfer yourself from your current location to any other spot within range.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/dimensionDoor.html#_dimension-door",
  SourcePage="p.269",
  SpellResistance="No",
  TargetArea="You",
  CastTime={
    "1 swift action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Long",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Disintegrate",
  Description={
    Format="A thin, green ray springs from your pointing finger dealing (min(40,CASTERLEVEL*2))d6 points of damage.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/disintegrate.html#_disintegrate",
  SourcePage="p.271",
  SpellResistance="Yes",
  TargetArea="Ray",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S, M/DF",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Medium",
  },
  Save={
    "Fortitude partial (object)",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Enervation",
  Description={
    Format="You point your finger and fire a black ray of negative energy that suppresses the life force of any living creature it strikes dealing 1d4 temporary negative levels if you hit.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/enervation.html#_enervation",
  SourcePage="p.277",
  SpellResistance="Yes",
  TargetArea="Ray of negative energy",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Necromancy",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Quickened Heal",
  Description={
    Format="Heal enables you to channel positive energy into a creature to wipe away injury and afflictions.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/heal.html#_heal",
  SourcePage="p.294",
  SpellResistance="Yes (harmless)",
  TargetArea="Creature touched",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Touch",
  },
  Save={
    "Will negates (harmless)",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Healing",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Quickened Lightning Bolt",
  Description={
    Format="You release a powerful stroke of electrical energy that deals (min(10,CASTERLEVEL))d6 points of electricity damage to each creature within its area.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/light.html#_light",
  SourcePage="p.304",
  SpellResistance="Yes",
  TargetArea="120-ft. line",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S, M",
  },
  Descriptors={
    "Electricity",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "120 ft.",
  },
  Save={
    "Reflex half",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Quickened Magic Missile",
  Description={
    Format="A missile of magical energy darts forth from your fingertip and strikes its target, dealing 1d4+1 points of force damage.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/magicMissile.html#_magic-missile",
  SourcePage="p.309",
  SpellResistance="Yes",
  TargetArea="Up to five creatures, no two of which can be more than 15 ft. apart",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Force",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Medium",
  },
  Save={
    "None",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Arcane",
  },
})
DefineSpell({
  Name="Quickened Summon Swarm",
  Description={
    Format="You summon a swarm of bats, rats, or spiders (your choice), which attacks all other creatures within its area.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonSwarm.html#_summon-swarm",
  SourcePage="p.354",
  SpellResistance="No",
  TargetArea="One swarm of bats, rats, or spiders",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S, M/DF",
  },
  Duration={
    Formula("Concentration + 2 rounds"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
  Variants={
    "Bats",
    "Rats",
    "Spiders",
  },
})
DefineSpell({
  Name="Quickened Unholy Blight",
  Description={
    Format="You call up unholy power to smite your enemies.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/unholyBlight.html#_unholy-blight",
  SourcePage="p.364",
  SpellResistance="Yes",
  TargetArea="20-ft.-radius spread",
  CastTime={
    "1 swift action",
  },
  Components={
    "V, S",
  },
  Descriptors={
    "Evil",
  },
  Duration={
    Formula("Instantaneous (1d4 rounds); see text"),
  },
  Range={
    "Medium",
  },
  Save={
    "Will partial",
  },
  Schools={
    "Evocation",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Keketar Spell ~ Reshape Reality",
  DisplayName="Reshape Reality",
  SourceLink="http://paizo.com/pathfinderRPG/prd/additionalMonsters/protean.html#protean,-keketar",
  SourcePage="p.215",
})
DefineSpell({
  Name="Shadow Walk (self only)",
  Description={
    Format="You and any creature you touch are transported along a coiling path of shadowstuff to the edge of the Material Plane where it borders the Plane of Shadow.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/shadowWalk.html#_shadow-walk",
  SourcePage="p.341",
  SpellResistance="No",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("(CASTERLEVEL) hours [D]"),
  },
  Range={
    "Personal",
  },
  Save={
    "None",
  },
  Schools={
    "Illusion",
  },
  SubSchools={
    "Shadow",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Speak with Animals (fish only)",
  Description={
    Format="You can ask questions of and receive answers from fish, but the spell doesn't make them any more friendly than normal.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/speakWithAnimals.html#_speak-with-animals",
  SourcePage="p.346",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S",
  },
  Duration={
    Formula("(CASTERLEVEL) minutes"),
  },
  ItemTypes={
    "Potion",
  },
  Range={
    "Personal",
  },
  Schools={
    "Divination",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Suggestion (Nereid)",
  Description={
    Format="You influence the actions of the target creature by suggesting a course of activity.",
  },
  DisplayName="Suggestion (only against creatures that are currently fascinated by her beguiling aura)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/suggestion.html#_suggestion",
  SourcePage="p.350",
  SpellResistance="Yes",
  TargetArea="One living creature",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, M",
  },
  Descriptors={
    "Language-Dependent",
    "Mind-Affecting",
  },
  Duration={
    Formula("(CASTERLEVEL) hours or until completed"),
  },
  Range={
    "Close",
  },
  Save={
    "Will negates",
  },
  Schools={
    "Enchantment",
  },
  SubSchools={
    "Compulsion",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Hydrodaemon)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 hydrodaemon, 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Leukodaemon)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 leukodaemon, 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster III (Accuser Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.",
  },
  DisplayName="Summon Monster III (1 zebub or 1d4 lemures, 40%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Derghodaemon)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from the 2nd-level list.",
  },
  DisplayName="Summon Monster IV (1 derghodaemon, 30%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Piscodaemon)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from the 2nd-level list.",
  },
  DisplayName="Summon Monster IV (1d3 hydroodaemon, 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Thanadaemon)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from the 2nd-level list.",
  },
  DisplayName="Summon Monster IV (1d4 hydrodaemons 80% or 1 thanadaemon 35%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Kalavakus)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from the 2nd-level list.",
  },
  DisplayName="Summon Monster IV (1 kalavakus 40%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Omox)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from the 2nd-level list.",
  },
  DisplayName="Summon Monster IV (1 omox 30% or 1d4 babaus 60%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IV (Witchfire)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from the 2nd-level list.",
  },
  DisplayName="Summon Monster IV (2 will-o'-wisps 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-iv",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Purrodaemon)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from the 3rd-level list.",
  },
  DisplayName="Summon Monster V (2 derghodaemons, 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Shemhazian)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from the 3rd-level list.",
  },
  DisplayName="Summon Monster V (1 shemhazian 30% or 1d4 vrocks 60%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Handmaiden Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from the 3rd-level list.",
  },
  DisplayName="Summon Monster V (3 erinyes 65%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Large water elemental)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from the 3rd-level list.",
  },
  DisplayName="Summon Monster V (Large water elemental only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster V (Xacarba)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from the 3rd-level list.",
  },
  DisplayName="Summon Monster V (1 hezrou or 1d4 succubi, 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VI (Astradaemon)",
  Description={
    Format="This spell functions like summon monster I, except you can summon one creature from the 6th-level list, 1d3 creatures of thesame kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VI (1d3 derghodaemons 50%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VI (Vrolikai)",
  Description={
    Format="This spell functions like summon monster I, except you can summon one creature from the 6th-level list, 1d3 creatures of thesame kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VI (1 marilith 50% or 1d4 glabrezus 75%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-vi",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VI (Belier Devil)",
  Description={
    Format="This spell functions like summon monster I, except you can summon one creature from the 6th-level list, 1d3 creatures of thesame kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VI (3 barbed devils 45%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-v",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VI (Nereid)",
  Description={
    Format="This spell functions like summon monster I, except you can summon one creature from the 6th-level list, 1d3 creatures of thesame kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VI (water elementals only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-vi",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VI (Nightwing)",
  Description={
    Format="This spell functions like summon monster I, except you can summon one creature from the 6th-level list, 1d3 creatures of thesame kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VI (2 greater shadows)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-vi",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VII (Nightwalker)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 7th-level list, 1d3 creatures of the same kind from the 6th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster VII (4 greater shadows)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-vii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VIII (water elementals)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same kind from the 6th-level list.",
  },
  DisplayName="Summon Monster VIII (water elementals only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-viii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VIII (Nightcrawler)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same kind from the 6th-level list.",
  },
  DisplayName="Summon Monster VIII (6 greater shadows)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-viii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster VIII (Scylla)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same kind from the 6th-level list.",
  },
  DisplayName="Summon Monster VIII (1 charybdis)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-viii",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IX (Immolation Devil)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 9th-level list, 1d3 creatures of the same kind from the 8th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IX (any 2d4 devils of CR 10 or lower, 90%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-ix",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Monster IX (Nightwave)",
  Description={
    Format="This spell functions like summon monster I, except that you can summon one creature from the 9th-level list, 1d3 creatures of the same kind from the 8th-level list, or 1d4+1 creatures of the same kind from a lower-level list.",
  },
  DisplayName="Summon Monster IX (1 nightwing)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-ix",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon (Olethrodaemon)",
  Description={
    Format="This spell summons any one CR 19 or lower daemon.",
  },
  DisplayName="Summon (any 1 CR 19 or lower daemon, 100%)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonMonster.html#_summon-monster-ix",
  SourcePage="p.352",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, F/DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Summon Nature's Ally II (Triton)",
  Description={
    Format="This spell functions as summon nature's ally I, except that you summon one 2nd-level creature or 1d3 1st-level creatures of the same kind.",
  },
  DisplayName="Summon Nature's Ally II (Small water elemental or 1d3 dolphins only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonNatureSAlly.html#_summon-nature-s-ally-ii",
  SourcePage="p.354",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Summon Nature's Ally V (earth/fire elementals)",
  Description={
    Format="This spell functions like summon nature's ally I, except that you can summon one 5th-level creature, 1d3 4th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.",
  },
  DisplayName="Summon Nature's Ally V (earth and fire elementals only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/summonNatureSAlly.html#_summon-nature-s-ally-v",
  SourcePage="p.354",
  SpellResistance="No",
  TargetArea="One summoned creature",
  CastTime={
    "1 round",
  },
  Components={
    "V, S, DF",
  },
  Duration={
    Formula("(CASTERLEVEL) rounds [D]"),
  },
  Range={
    "Close",
  },
  Save={
    "None",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Summoning [see text]",
  },
  Types={
    "Divine",
  },
})
DefineSpell({
  Name="Teleport (Greater/self plus entrapped)",
  Description={
    Format="This spell functions like teleport, except that there is no range limit and there is no chance you arrive off target.",
  },
  DisplayName="Greater Teleport (self plus 1 entrapped creature and 50 lbs. of goods only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/teleport.html#_teleport",
  SourcePage="p.359",
  SpellResistance="No and yes (object)",
  TargetArea="You and touched objects or other touched willing creatures",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Personal and touch",
  },
  Save={
    "None and Will negates (object)",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Teleport (Greater/self plus skiff)",
  Description={
    Format="This spell functions like teleport, except that there is no range limit and there is no chance you arrive off target.",
  },
  DisplayName="Greater Teleport (self plus skiff and passengers only)",
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/teleport.html#_teleport",
  SourcePage="p.359",
  SpellResistance="No and yes (object)",
  TargetArea="You and touched objects or other touched willing creatures",
  CastTime={
    "1 standard action",
  },
  Components={
    "V",
  },
  Duration={
    Formula("Instantaneous"),
  },
  Range={
    "Personal and touch",
  },
  Save={
    "None and Will negates (object)",
  },
  Schools={
    "Conjuration",
  },
  SubSchools={
    "Teleportation",
  },
  Types={
    "Arcane",
    "Divine",
  },
})
DefineSpell({
  Name="Tree Shape (Colossal tree)",
  Description={
    Format="This spell allows you to assume the form of a Colossal living tree or shrub or a Colossal dead tree trunk with a small number of limbs.",
  },
  SourceLink="http://paizo.com/pathfinderRPG/prd/spells/treeShape.html#_tree-shape",
  SourcePage="p.362",
  TargetArea="You",
  CastTime={
    "1 standard action",
  },
  Components={
    "V, S, DF",
  },
  Duration={
    Formula("(CASTERLEVEL) hours [D]"),
  },
  Range={
    "Personal",
  },
  Schools={
    "Transmutation",
  },
  Types={
    "Divine",
  },
})
