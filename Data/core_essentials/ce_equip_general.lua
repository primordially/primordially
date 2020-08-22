-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_equip_general.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineEquipment({
  Name="Poison (Violet Venom)",
  CanHaveMods=true,
  Cost=800,
  DisplayName="[NAME]",
  Weight=0,
  SpecialProperties={
    {
      Format="Injury; Fort DC 13; Freq. 1 minute (6); Effect 1d2 Str and 1d2 Con damage; Cure 1 save",
    },
  },
  Types={
    "Goods",
    "Poison",
    "Consumable",
  },
})
