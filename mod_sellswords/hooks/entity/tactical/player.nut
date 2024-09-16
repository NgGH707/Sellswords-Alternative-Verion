::mods_hookExactClass("entity/tactical/player", function ( o )
{
	o.fillAttributeLevelUpValues = function ( _amount, _maxOnly = false, _minOnly = false )
	{
		if (this.m.Attributes.len() == 0)
		{
			this.m.Attributes.resize(this.Const.Attributes.COUNT);

			for( local i = 0; i != this.Const.Attributes.COUNT; ++i )
			{
				this.m.Attributes[i] = [];
			}
		}
		for( local i = 0; i != this.Const.Attributes.COUNT; ++i )
		{
			for( local j = 0; j < _amount; ++j )
			{
				if (::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())
				{
					_maxOnly = true;					
				}				
				if (_minOnly)
				{
					this.m.Attributes[i].insert(0, 1);
				}
				else if (_maxOnly)
				{
					this.m.Attributes[i].insert(0, this.Const.AttributesLevelUp[i].Max);
				}
				else
				{
					this.m.Attributes[i].insert(0, this.Math.rand(this.Const.AttributesLevelUp[i].Min + (this.m.Talents[i] == 3 ? 2 : this.m.Talents[i]), this.Const.AttributesLevelUp[i].Max + (this.m.Talents[i] == 3 ? 1 : 0)));
				}
				
			}
		}
	}	
	local getAttributeLevelUpValues = o.getAttributeLevelUpValues;
	o.getAttributeLevelUpValues = function ()
	{
		if (this.m.Attributes[0].len() != 0)
		{
			return getAttributeLevelUpValues();
		}

		local v = getAttributeLevelUpValues();
		if (::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())
		{
			return v;			
		}			
		local extra = function ( t, bonus = 3 )
		{
			if (t == 0)
			{
				if (this.Math.rand(1, 100) <= 5)
				{
					return 1;
				}
				else
				{
					return 0;
				}
			}
			local max = (t == 1 ? 15 : t == 2 ? 30 : 45) * bonus / 3;
			if (this.Math.rand(1, 100) <= max)
			{
				return 1;
			}
			else
			{
				return 0;
			}
		};
		v.hitpointsIncrease += extra(this.m.Talents[this.Const.Attributes.Hitpoints], 5);
		v.braveryIncrease += extra(this.m.Talents[this.Const.Attributes.Bravery], 5);
		v.fatigueIncrease += extra(this.m.Talents[this.Const.Attributes.Fatigue], 4);
		v.initiativeIncrease += extra(this.m.Talents[this.Const.Attributes.Initiative], 5);
		v.meleeSkillIncrease += extra(this.m.Talents[this.Const.Attributes.MeleeSkill]);
		v.rangeSkillIncrease += extra(this.m.Talents[this.Const.Attributes.RangedSkill], 4);
		v.meleeDefenseIncrease += extra(this.m.Talents[this.Const.Attributes.MeleeDefense]);
		v.rangeDefenseIncrease += extra(this.m.Talents[this.Const.Attributes.RangedDefense], 4);
		return v;
	};
	// load all abilities related to the player in AC 
	if (::Is_AC_Exist)
	{
	local onInit = ::mods_getMember(o, "onInit");
	o.onInit = function()
		{
			onInit();
			if (this.m.IsControlledByPlayer && !this.getSkills().hasSkill("actives.companions_tame"))
				this.m.Skills.add(this.new("scripts/companions/player/companions_tame"));
		}
	local onActorKilled = o.onActorKilled;
	o.onActorKilled = function(_actor, _tile, _skill)
		{
			onActorKilled(_actor, _tile, _skill);
			local XPkiller = this.Math.floor(_actor.getXPValue() * this.Const.XP.XPForKillerPct);
			local XPgroup = _actor.getXPValue() * (1.0 - this.Const.XP.XPForKillerPct);
			local brothers = this.Tactical.Entities.getInstancesOfFaction(this.Const.Faction.Player);
			foreach(bro in brothers)
			{
				local cAcc = bro.getItems().getItemAtSlot(this.Const.ItemSlot.Accessory);
				if (cAcc != null && "setType" in cAcc)
				{
					if (cAcc.getType() != null)
						cAcc.addXP(this.Math.max(1, this.Math.floor(XPgroup / brothers.len())));
				}
			}

			local kAcc = this.getItems().getItemAtSlot(this.Const.ItemSlot.Accessory);
			if (kAcc != null && "setType" in kAcc)
			{
				if (kAcc.getType() != null)
					kAcc.addXP(XPkiller);
			}
		}
	}
		
	o.getTryoutCost = function ()
	{
		return this.Math.ceil(this.Math.max(10, this.Math.min(this.m.HiringCost - 25, 25 + this.m.HiringCost * 0.05) * this.World.Assets.m.TryoutPriceMult));
	};
	o.getXPForNextLevel = function ()
	{
		if (this.m.Level >= 8 && ("State" in this.World) && this.World.State != null && this.World.Assets.getOrigin().getID() == "scenario.manhunters" && this.getBackground().getID() == "background.slave")
		{
			return this.Const.LevelXP[7];
		}
		else
		{
			return this.m.Level < this.Const.LevelXP.len() ? this.Const.LevelXP[this.m.Level] : this.Const.LevelXP[this.Const.LevelXP.len() - 1];
		}
	};
	
});	







		
