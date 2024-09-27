::mods_hookExactClass("items/legend_armor/cloth/legend_tunic_noble", function ( o )
{
	local ws_create = o.create;
	o.create = function()
	{
		ws_create()

		this.m.Value = 1500;
		this.m.Condition = 50;
		this.m.ConditionMax = 50;
		this.m.StaminaModifier = -2;
	}
});	