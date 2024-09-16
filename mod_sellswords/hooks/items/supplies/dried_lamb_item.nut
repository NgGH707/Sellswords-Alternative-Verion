::mods_hookExactClass("items/supplies/dried_lamb_item", function(o) {
	::Mod_Sellswords.HookHelper.convertToUsableFood(o);

	local ws_create = o.create;
	o.create = function()
	{
		ws_create();
		this.m.Description = "Provisions. Dried Lamb is a speciality and a highy sought-after food in the south. A real treat for any hungry mercenary. Can be eaten in battle to increase your Fatigue recovery, hitchance and initiative, based on amount of the food. Will be used as provisions if left in the company stash.";
		this.m.Value = 130;
		this.m.Amount = 35.0;
	}

	o.onEquip = function()
	{
		this.legend_usable_food.onEquip();
		::Mod_Sellswords.HookHelper.addGenericSkillToItem.call(this);
		local skill = this.new("scripts/skills/actives/legend_eat_pie_skill");
		skill.setItem(this);
		skill.setAmount(this.m.Amount);
		this.addSkill(skill);
	}

});