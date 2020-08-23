-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_templates_familiar_cr.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineTemplate({
  Name="Familiar Type",
  Key="Familiar ~ Augmented Animal",
  RaceSubType="Augmented Animal",
  RaceType="Magical Beast",
  SourcePage="p.82",
  Visible=false,
})
DefineTemplate({
  Name="Familiar Speaks One Language",
  SourcePage="p.82",
  Visible=false,
  Add={
    AddAddLanguage({
      Types={
        "Spoken",
      },
    }),
  },
})
