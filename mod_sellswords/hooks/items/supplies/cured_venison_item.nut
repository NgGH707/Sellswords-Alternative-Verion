::mods_hookExactClass("items/supplies/cured_venison_item", function(o) {
	local ws_create = o.create;
	o.create = function()
	{
		ws_create();
		this.m.Description = "Provisions. A cured chunk of venison preserved by salt. Fine food for a travelling sellsword. Can be eaten in battle to increase your Fatigue recovery, hitchance and initiative, based on amount of the food. Will be used as provisions if left in the company stash.";
		this.m.Value = 160;
		this.m.Amount = 45.0;
		this.m.GoodForDays = 10;
	}

	function onEquip()
	{
		this.food_item.onEquip();
		::Mod_Sellswords.HookHelper.addGenericSkillToItem.call(this);
		local skill = this.new("scripts/skills/actives/legend_eat_pie_skill");
		skill.setItem(this);
		skill.setAmount(this.m.Amount);
		this.addSkill(skill);
	}

});