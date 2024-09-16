::mods_hookExactClass("items/supplies/black_marsh_stew_item", function(o) {
	::Mod_Sellswords.HookHelper.convertToUsableFood(o);

	local ws_create = o.create;
	o.create = function()
	{
		ws_create();
		this.m.Description = "Provisions. Black as the marshes it hails from, this ghastly stew is far from delicious but takes ages to spoil. Possibly because it already is spoiled to begin with. Eating this kind of comestible will slightly increase your HP recovery, Fatigue recovery, resolve and initiative, based on amount of the food.";
		this.m.Amount = 40.0;
		this.m.Value = 80;
		this.m.IsAllowedInBag = true;
		this.m.IsDroppedAsLoot = true;		
	}

	o.onEquip <- function()
	{
		this.food_item.onEquip();
		::Mod_Sellswords.HookHelper.addGenericSkillToItem.call(this);
		local skill = this.new("scripts/skills/actives/legend_eat_rations_skill");
		skill.setItem(this);
		skill.setAmount(this.m.Amount/2);
		this.addSkill(skill);
	}

});