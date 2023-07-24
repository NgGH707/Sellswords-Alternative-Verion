::mods_hookExactClass("skills/perks/perk_legend_specialist_sickle_skill", function ( o )
{
	o.onUpdate = function ( _properties )
	{
		local dc = this.World.getTime().Days;
		dc = this.Math.floor(dc/25);
		dc = 0.01 * this.Math.min(5 * dc + 35, 100);	
		local item = this.getContainer().getActor().getMainhandItem();
		if (item != null)
		{
			if (item.getID() == "weapon.sickle" || item.getID() == "weapon.legend_named_sickle")
			{
				_properties.MeleeSkill += 12;
				_properties.DamageDirectMult += 0.25;
			}
			if (item.getID() == "weapon.goblin_notched_blade")
			{
				_properties.MeleeSkill += 8 + 4 * dc;
				_properties.DamageDirectMult += 0.15;
			}			
			else if (item.isWeaponType(this.Const.Items.WeaponType.Sword))
			{
				_properties.MeleeSkill += 12 * dc;
				_properties.DamageDirectMult += 0.05;
			}
		}
	}
});	