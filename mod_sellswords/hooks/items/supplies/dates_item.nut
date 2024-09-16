::mods_hookExactClass("items/supplies/dates_item", function(o) {
	::Mod_Sellswords.HookHelper.convertToUsableFood(o);

	local ws_create = o.create;
	o.create = function()
	{
		ws_create();
		this.m.Description = "Provisions. Dried dates are common in the south. These sweet, dried fruits are high energy and well preserved.  hey are dried to preserve them longer. Can be eaten in battle to provide up to 2 healing and fatigue recovery over ten turns, based on the amount remaining. Will be used as provisions if left in the company stash.";
		this.m.Value = 135;
		this.m.Amount = 40.0;
	}

});