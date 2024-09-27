//please don't merge in these changes until corresponding active name changes have been PR'd.
::mods_hookExactClass("ai/tactical/behaviors/ai_attack_default", function ( o )
{
	o.m.PossibleSkills.extend([
		//"actives.kuangzhanshishuangfu01_01",
		"actives.twinaxes_2",
		"actives.pseudohack",
		//"actives.kuangzhanshishuangkandao01_01",
		"actives.twincleavers_1",
		//"actives.kuangzhanshishuangkandao01_02",
		"actives.twincleavers_2",
		"actives.pseudomince",
		//"actives.fangxuezhe_01",
		"actives.serrated_axe",
		"actives.crcudgel_skill",
		"actives.crdecapitate",
		"actives.crstrike",
	])
});
