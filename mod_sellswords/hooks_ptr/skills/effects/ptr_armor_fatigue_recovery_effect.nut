::mods_hookExactClass("skills/effects/ptr_armor_fatigue_recovery_effect", function(o) {
	o.m.Malus <- 0;
	o.m.Afterwait <- 1;
	o.m.IsWait <- false;

	local ws_create = o.create;
	o.create = function()
	{
		ws_create();

		this.m.Description = "This character\'s armor\'s weight is reducing %their% Fatigue Recovery and Flexibility, in exchange for better protection";
	}
	
	o.getName = function()
	{
		local idt = this.Math.floor(this.m.Afterwait);
		return this.m.Name + "[color=" + this.Const.UI.Color.NegativeValue + "] (" + (this.getCrweight() * (-1)) + "[/color]" + "  [color=" + this.Const.UI.Color.PositiveValue + "]" + idt +"[/color]" + "[color=" + this.Const.UI.Color.NegativeValue + "])[/color]";
	}

	o.isHidden = function()
	{
		return this.m.Malus == 0 && this.getContainer().getActor().isPlayerControlled();
	}
	
	o.getTooltip = function()
	{
		local dr = 3 * this.m.Malus;
		local fc = this.m.Malus;
		if (this.getContainer().hasSkill("perk.haspecialize"))
		{
			dr *= 2;
			fc = 0;
		}		
		local ret = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 15,
				type = "text",
				icon = "ui/icons/direct_damage.png",
				text = "Reduces damage ignoring armor by [color=" + this.Const.UI.Color.PositiveValue + "]" + dr + "%[/color]"
			},			
			{
				id = 10,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + fc + "[/color] Fatigue Recovery per turn"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_skill.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" +  fc + "[/color] Melee Skill"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/ranged_skill.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" +  (3 * fc) + "[/color] Ranged Skill"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + fc + "[/color] Melee Defense"
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + (3 * fc) + "[/color] Ranged Defense"
			}
		];
		return ret;
	}

	o.getCrweight <- function()
	{
		return this.getContainer().getActor().getItems().getStaminaModifier([::Const.ItemSlot.Body, ::Const.ItemSlot.Head]); // Returns a negative number
	}

	o.onTurnStart <- function()
	{
		this.m.IsWait = false;
	}	
	
	o.onWaitTurn <- function()
	{
		this.m.IsWait = true;
	}

	o.onUpdate = function( _properties )
	{
		local fat = this.getContainer().getActor().getItems().getStaminaModifier([::Const.ItemSlot.Body, ::Const.ItemSlot.Head]); // Returns a negative number
		this.m.Malus = (this.Math.min(0, (fat + 20) * 0.05)).tointeger();
		this.m.Afterwait = this.getContainer().getActor().getInitiative() * (this.m.IsWait ? _properties.InitiativeAfterWaitMult : 1) * _properties.InitiativeForTurnOrderMult;		
		if (this.getContainer().hasSkill("perk.haspecialize"))
		{
			return;			
		}		
		_properties.FatigueRecoveryRate += this.m.Malus;
		_properties.RangedSkill += 3 * this.m.Malus;
		_properties.MeleeDefense += this.m.Malus;
		_properties.RangedDefense += 3 * this.m.Malus;	
		if (this.getContainer().getActor().isPlayerControlled())
		{
			_properties.MeleeSkill += this.m.Malus;
		}
		else
		{
			local mls = (this.Math.min(0, fat * 0.05)).tointeger();		
			_properties.Initiative += this.Math.min(10, -3 * mls);     //
		}			
	}

	o.onBeforeDamageReceived = function( _attacker, _skill, _hitInfo, _properties )
	{
		if (_attacker != null)
		{
			if (this.getContainer().hasSkill("perk.haspecialize"))
			{
				_properties.DamageReceivedDirectMult *= 0.01 * (100 + 6 * this.m.Malus);		
			}	
			else
			{
				_properties.DamageReceivedDirectMult *= 0.01 * (100 + 3 * this.m.Malus);
			}
		}			
	}
})