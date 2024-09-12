//the changes here are to correspond with the updates by Emo @ scripts / mods_preload, so don't merge this in until that other file is PR'd in first, Abyss 8/12/23
local config = ::Legends.Mod.ModSettings.getPage("Campaign Options");
//::Mod_Chirutiru.HookHelper.addNCSetting(config, ::MSU.Class.SettingsDivider("ConfigDivider_Sellswords"));
//::Mod_Sellswords.HookHelper.addNCSetting(config, ::MSU.Class.SettingsDivider("ConfigDivider_Sellswords"));
::Mod_Sellswords.HookHelper.addNCSetting(config, ::MSU.Class.BooleanSetting("RogueMode", false, "Rogue Mode", "Make sure it is enabled before you start rogue mode."));
//::Mod_Chirutiru.HookHelper.addNCSetting(config, ::MSU.Class.BooleanSetting("RogueMode", false, "Rogue Mode", "Make sure it is enabled before you start rogue mode."));
::Mod_Sellswords.HookHelper.addNCSetting(config, ::MSU.Class.RangeSetting("RogueDifficulty", 100, 75, 120, 5, "Rogue Difficulty", "Simply multiply the default base difficulty in percentage."));
//::Mod_Chirutiru.HookHelper.addNCSetting(config, ::MSU.Class.RangeSetting("RogueDifficulty", 100, 75, 120, 5, "Rogue Difficulty", "Simply multiply the default base difficulty in percentage."));
	

