::mods_hookExactClass("items/supplies/rice_item", function(o) {
	::Mod_Sellswords.HookHelper.convertToUsableFood(o);

	local ws_create = o.create;
	o.create = function()
	{
		ws_create();

		this.m.Description = "Provisions. Rice is cheap and readily available in the south. Spiced up with various herbs it becomes a tasty dish. Can be eaten in battle to increase your HP recovery, Resolve and Defenses, based on the amount remaining. Will be gradually used as provisions if left in the company stash.";
		this.m.Value = 80;
		this.m.Amount = 25.0;
	}

	o.onEquip = function()
	{
		this.food_item.onEquip();
		::Mod_Sellswords.HookHelper.addGenericSkillToItem.call(this);
		local skill = this.new("scripts/skills/actives/legend_eat_pudding_skill");
		skill.setItem(this);
		skill.setAmount(this.m.Amount);
		this.addSkill(skill);
	}

});