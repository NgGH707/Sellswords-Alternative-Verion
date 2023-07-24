::mods_hookExactClass("items/tools/player_banner", function ( o )
{
	o.getTooltip = function ()
	{
		local result = this.weapon.getTooltip();
		result.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Allies at a range of 4 tiles or less receive [color=" + this.Const.UI.Color.PositiveValue + "]10-15%[/color] of the Resolve of the character holding this standard as a bonus, varies from thier resolve up to a maximum of the standard bearer\'s Resolve."
		});
		return result;
	};
});