-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce__datacontrols.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetDefaultVariableValue("ORDEREDPAIR", "0,0")
SetDefaultVariableValue("NUMBER", "0")
SetDefaultVariableValue("DICE", "0")
SetDefaultVariableValue("BOOLEAN", "False")
SetDefaultVariableValue("STRING", "")
SetDefaultVariableValue("ALIGNMENT", "None")
SetDefaultVariableValue("HANDED", "Right")
DefineFunction({
  Name="d20Mod",
  Explanation="For Ability Score Calculation of Bonus",
  Value=Formula("floor((arg(0)-10)/2)"),
})
DefineFact({
  Category="RACE",
  Key="BaseSize",
  DataFormat="SIZEADJUSTMENT",
  Explanation="All Races must have a Size - in the case of multiple sizes, use the SMALLEST allowed.",
  Required=true,
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Fine",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Fine",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Diminutive",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Diminutive",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Tiny",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Tiny",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Small",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Small",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Medium",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Medium",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Large",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Large",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Huge",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Huge",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Gargantuan",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Gargantuan",
  Explanation="What Size can a race be?",
  Visible=true,
})
DefineFact({
  Category="ABILITY",
  Key="RaceSizeAllowed_Colossal",
  DataFormat="BOOLEAN",
  DisplayName="Race Size Colossal",
  Explanation="What Size can a race be?",
  Visible=true,
})
