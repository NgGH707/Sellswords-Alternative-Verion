::mods_hookExactClass("entity/world/camp/buildings/training_building", function(o) {
	o.m.HitpointsAdded <- 0;
	o.m.StaminaAdded <- 0;
	o.m.BraveAdded <- 0;
	o.m.IniAdded <- 0;
	o.m.MatkAdded <- 0;
	o.m.RatkAdded <- 0;
	o.m.MdefAdded <- 0;
	o.m.RdefAdded <- 0;

	o.getDescription = function()
	{
		local desc = "";
		desc = desc + "Whether a seasoned veteran or a green recruit, there\'s always something new to learn. ";
		desc = desc + "Anyone assigned to train has a chance to get a 20% increase in xp on their next combat. ";
		desc = desc + "Time and having highly skilled teachers in the grounds increases the chances of successfully learning something new. ";
		desc = desc + "There\'s always a slight chance someone can be injured.";
		desc = desc + "\n\n";
		desc = desc + "Training grounds can be upgraded by purchasing an upgrade set in local markets. Upgraded grounds reduce the ";
		desc = desc + "risk of accidents from a minimum of 5% to 1% and also give the chance of a permanant skill increase.";
		return desc;
	}

	o.getTrained = function( bro )
	{
		local inTraining = bro.getSkills().getSkillByID("trait.intensive_training_trait");
		local XPbonus = this.Math.floor((::Legends.Mod.ModSettings.getSetting("RogueMode").getValue() ? 0 : 1) * this.m.Camp.getCampTimeHours() * (this.getUpgraded() ? 10 : 5) * (inTraining == null ? 1 : 1 + inTraining.getBonusXP()));
		local originalXP = bro.m.XP;
		bro.addXP(XPbonus);
		bro.updateLevel();
		local mod = this.getModifiers();
		local adjectives = [
			bro.getName() + " learned a new move",
			bro.getName() + " finally nails the fancy parry they have been been practicing",
			bro.getName() + " invents an overly showy move",
			bro.getName() + " finds a stance that feels more natural",
			bro.getName() + " learns how to adjust the new armor so it fits better",
			bro.getName() + " has perfected a new skill in practice",
			bro.getName() + " had their ego bruised and wants an outlet for frustration",
			bro.getName() + " left the training dummy as nothing more than a pile of splinters",
			bro.getName() + " has practiced a skill so much it has become second nature",
			bro.getName() + " feels more comfortable with their weapon",
			bro.getName() + " sets a new personal best in training"
		];
		local text = "After practicing ";
		local M = [
			"Short Guard ",
			"Upper Snake Guard ",
			"Bastard Cross ",
			"The Middle Iron Door ",
			"thrusts ",
			"trips ",
			"grapples ",
			"foot passing ",
			"striking ",
			"vambrace traps ",
			"a pommel bash ",
			"half sword ",
			"The Thumb Scissor ",
			"jabs ",
			"hand to hand combat "
		];

		foreach( m in M )
		{
			local text1 = text + m;
			local T = [
				"for hours, ",
				"all day, ",
				"for several hours, ",
				"until exhaustion, ",
				"as long as possible, "
			];

			foreach( t in T )
			{
				local text2 = text1 + t + bro.getName() + " ";
				local A = [
					"feels ready for a fight",
					"needs a real opponent",
					"is prepared for battle",
					"is keen to try it out",
					"is ready for a scrap"
				];

				foreach( a in A )
				{
					local text3 = text2 + a;
					adjectives.push(text3);
				}
			}
		}

		if (bro.getLevel() < 3)
		{
			adjectives.push(bro.getName() + " figures out what end of the weapon to hold");
			adjectives.push(bro.getName() + " remembers that you can move your legs as well as your arms");
		}

		this.m.Results.push({
			Icon = "ui/icons/xp_received.png",
			Text = adjectives[this.Math.rand(0, adjectives.len() - 1)] + " and gains [color=" + this.Const.UI.Color.PositiveEventValue + "]" + (bro.m.XP - originalXP) + "[/color] XP."
		});
		return true;
	}

	o.getBonus = function( bro )
	{
		if (!bro.getSkills().hasSkill("trait.intensive_training_trait"))
		{
			return;
		}

		local inTraining = bro.getSkills().getSkillByID("trait.intensive_training_trait");

		if (inTraining.isMaxReached())
		{
			return;
		}

		local text = "";
		local icon = "";
		
		if (::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())
		{
			if(inTraining.m.HitpointsAdded < 2)
			{
				bro.getBaseProperties().Hitpoints += 1;
				icon = "ui/icons/health.png";
				text = "Hitpoint";
				inTraining.addHitpoint();									
			}
			else if (inTraining.m.StaminaAdded < 2)
			{
				bro.getBaseProperties().Stamina += 1;
				icon = "ui/icons/fatigue.png";
				text = "Fatigue";
				inTraining.addStamina();													
			}				
			else if (inTraining.m.BraveAdded < 2)
			{
				bro.getBaseProperties().Bravery += 1;
				icon = "ui/icons/bravery.png";
				text = "Resolve";
				inTraining.addBrave();								
			}				
			else if (inTraining.m.IniAdded < 2)
			{
				bro.getBaseProperties().Initiative += 1;
				icon = "ui/icons/initiative.png";
				text = "Initiative";
				inTraining.addIni();								
			}				
			else if (inTraining.m.RdefAdded < 2)
			{
				bro.getBaseProperties().RangedDefense += 1;
				icon = "ui/icons/ranged_defense.png";
				text = "Ranged Defense";
				inTraining.addRdef();				
			}				
			else if (inTraining.m.MdefAdded < 2)
			{
				bro.getBaseProperties().MeleeDefense += 1;
				icon = "ui/icons/melee_defense.png";
				text = "Melee Defense";
				inTraining.addMdef();				
			}				
			else if (inTraining.m.MatkAdded < 3 && (bro.getBaseProperties().MeleeSkill > bro.getBaseProperties().RangedSkill))
			{
				bro.getBaseProperties().MeleeSkill += 1;
				icon = "ui/icons/melee_skill.png";
				text = "Melee Skill";
				inTraining.addMatk();				
			}				
			else if (inTraining.m.RatkAdded < 3)	
			{
				bro.getBaseProperties().RangedSkill += 1;	
				icon = "ui/icons/ranged_skill.png";
				text = "Ranged Skill";
				inTraining.addRatk();							
			}				
		}
		else
		{
			local attr = this.Math.rand(0, this.Const.Attributes.COUNT - 1);
			switch(attr)
			{
				case 0:
					bro.getBaseProperties().Hitpoints += 1;
					icon = "ui/icons/health.png";
					text = "Hitpoint";
					inTraining.addHitpoint();
					break;

				case 1:
					bro.getBaseProperties().Bravery += 1;
					icon = "ui/icons/bravery.png";
					text = "Resolve";
					inTraining.addBrave();
					break;

				case 2:
					bro.getBaseProperties().Stamina += 1;
					icon = "ui/icons/fatigue.png";
					text = "Fatigue";
					inTraining.addStamina();
					break;

				case 3:
					bro.getBaseProperties().Initiative += 1;
					icon = "ui/icons/initiative.png";
					text = "Initiative";
					inTraining.addIni();
					break;

				case 4:
					if (bro.getBaseProperties().MeleeSkill > bro.getBaseProperties().RangedSkill)
					{
						bro.getBaseProperties().MeleeSkill += 1;
						icon = "ui/icons/melee_skill.png";
						text = "Melee Skill";
						inTraining.addMatk();
					}
					else
					{
						bro.getBaseProperties().RangedSkill += 1;
						icon = "ui/icons/ranged_skill.png";
						text = "Ranged Skill";
						inTraining.addRatk();
					}

					break;

				case 5:
					bro.getBaseProperties().MeleeDefense += 1;
					icon = "ui/icons/melee_defense.png";
					text = "Melee Defense";
					inTraining.addMdef();
					break;

				default:
					bro.getBaseProperties().RangedDefense += 1;
					icon = "ui/icons/ranged_defense.png";
					text = "Ranged Defense";
					inTraining.addRdef();
					break;
			}
		}

		bro.getSkills().update();

		if (inTraining.isMaxReached())
		{
			bro.m.PerkPoints += 1;
			icon = "ui/icons/level.png";
			if (!::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())
			{
				local traitName = this.addRandomTrainingTrait(bro);			
				inTraining.finishedTraining(traitName);
				this.m.Results.push({
					Icon = icon,
					Text = bro.getName() + " completed the training course and gains [color=" + this.Const.UI.Color.PositiveEventValue + "]1[/color] " + text + ", Perk Point and " + traitName
				});				
			}
			else
			{
				this.m.Results.push({
					Icon = icon,
					Text = bro.getName() + " completed the training course and gains [color=" + this.Const.UI.Color.PositiveEventValue + "]1[/color] " + text + ", Perk Point"
				});				
			}
		}
		else
		{
			this.m.Results.push({
				Icon = icon,
				Text = bro.getName() + " had a breakthrough training session and gains [color=" + this.Const.UI.Color.PositiveEventValue + "]1[/color] " + text
			});
		}
	}

	o.completed = function()
	{
		local roster = this.World.getPlayerRoster().getAll();

		foreach( bro in roster )
		{
			if (bro.getCampAssignment() != this.m.ID)
			{
				continue;
			}

			local r = this.Math.min(95, 100 * this.Math.pow(this.m.Camp.getCampTimeHours() / 12.0, 0.6 + 0.1 * bro.getLevel()));

			if (this.Math.rand(1, 100) < r && (this.getUpgraded() || !::Legends.Mod.ModSettings.getSetting("RogueMode").getValue()))
			{
				this.getTrained(bro);
			}
			else
			{
				this.getFailed(bro);
			}

			local injuryMin = 5;

			if (this.getUpgraded())
			{
				injuryMin = 1;
				local mod = this.getModifiers();

				for( local camphrs = this.m.Camp.getCampTimeHours(); camphrs > 0;  )
				{
					local r = this.Math.rand(1, 100);

					if (r <= camphrs + mod.Craft * camphrs)
					{
						this.getBonus(bro);
						camphrs = camphrs - r;
					}
					else
					{
						break;
					}
				}
			}

			local r = this.Math.min(injuryMin, 4 * this.Math.pow(this.m.Camp.getCampTimeHours(), 0.5) - bro.getLevel());

			if (this.Math.rand(1, 100) < r)
			{
				this.getInjury(bro);
			}
		}
	}
})