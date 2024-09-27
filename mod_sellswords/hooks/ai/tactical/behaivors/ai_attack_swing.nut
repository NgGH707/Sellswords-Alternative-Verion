//please dont merge until skill name also updated and PR'd
::mods_hookExactClass("ai/tactical/behaviors/ai_attack_swing", function ( o )
{
	o.m.PossibleSkills.extend([
		//"actives.kuangzhanshishuangfu01_02",
		"actives.twinaxes_2",
		"actives.zcroverwhelming"
	])
});
