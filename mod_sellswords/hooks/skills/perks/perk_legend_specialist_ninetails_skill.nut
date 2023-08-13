::mods_hookExactClass("skills/perks/perk_legend_specialist_ninetails_skill", function ( o )
{
	o.onUpdate = function ( _properties )
	{
		local dc = this.World.getTime().Days;
		dc = this.Math.floor(dc/7);
		dc = 0.01 * this.Math.min(5 * dc + 35, 100);	
		local actor = this.getContainer().getActor();
		local item = actor.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand);
		local resolve = actor.getCurrentProperties().Bravery;

		if (item != null && item.isItemType(this.Const.Items.ItemType.Cultist))
		{
		  if (item.getID() == "weapon.legend_cat_o_nine_tails")
		  {
			_properties.MeleeSkill += this.Math.floor(resolve * 0.2);
		  }
		  else
		  {
			_properties.MeleeSkill += this.Math.floor(resolve * 0.2 * dc);
		  }
		}
	}
});	