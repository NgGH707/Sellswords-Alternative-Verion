this.cr_skin_armor <- this.inherit("scripts/items/legend_armor/legend_named_armor_upgrade", {
	m = {},
	function create()
	{
		this.legend_named_armor_upgrade.create();
		this.m.Type = this.Const.Items.ArmorUpgrades.Plate;		
		this.m.ID = "armor.body.cr_skin_armor";	
		this.m.NameList = [
			"Skin suit",
			"Naked armor",
			"Ghoulish bastion",
			"Flayed Bulwark"
		];
		this.m.Description = "This disgusting design is made by nailing metal pieces to layers of flesh taken from skin ghouls. It smells awful, is quite heavy, and feels as if it is healing itself on to your body.";
		this.m.ArmorDescription = "This disgusting design is made by nailing metal pieces to layers of flesh taken from skin ghouls. It smells awful, is quite heavy, and feels as if it is healing itself on to your body.";
		this.m.Variant = 515;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 12000;
		this.m.Condition = 130;
		this.m.ConditionMax = 130;
		this.m.StaminaModifier = -14;
		this.randomizeValues();
	}
	
	function updateVariant()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.SpriteBack = "bust_body_cr515";
		this.m.SpriteDamagedBack = "bust_body_cr515_damaged";
		this.m.SpriteCorpseBack = "bust_body_cr515_dead";
		this.m.Icon = "armor/icon_body_armor_cr515.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor/icon_body_armor_cr515.png";
		this.m.OverlayIconLarge = "armor/inventory_body_armor_cr515.png";		
	}

	function randomizeValues()
	{
		this.m.StaminaModifier = this.Math.rand(10, 12) * -1;
		this.m.Condition = this.Math.rand(140, 150);
		this.m.ConditionMax = this.m.Condition;
	}

	function getTooltip()
	{
		local result = this.legend_named_armor_upgrade.getTooltip();
		result.push({
			id = 6,
			type = "text",
			icon = "ui/icons/health.png",
			text = "Heals [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the hitpoints of the wearer each turn"
		});
		return result;
	}
	
	function onArmorTooltip( _result )
	{
		_result.push({
			id = 6,
			type = "text",
			icon = "ui/icons/health.png",
			text = "Heals [color=" + this.Const.UI.Color.PositiveValue + "]10%[/color] of the hitpoints of the wearer each turn"
		});
	}	

	function onCombatFinished()
	{
		local actor = this.getContainer().getActor();

		if (actor != null && !actor.isNull() && actor.isAlive())
		{
			actor.setHitpoints(actor.getHitpointsMax());
			actor.setDirty(true);
		}
	}	

	function onTurnStart()
	{
		local actor = this.getContainer().getActor();
		local healthMissing = actor.getHitpointsMax() - actor.getHitpoints();
		local healthAdded = this.Math.min(healthMissing, actor.getHitpointsMax() * 0.1);

		if (healthAdded <= 0)
		{
			return;
		}

		actor.setHitpoints(actor.getHitpoints() + healthAdded);
		actor.setDirty(true);

		if (!actor.isHiddenToPlayer())
		{
			this.Tactical.spawnIconEffect("status_effect_79", actor.getTile(), this.Const.Tactical.Settings.SkillIconOffsetX, this.Const.Tactical.Settings.SkillIconOffsetY, this.Const.Tactical.Settings.SkillIconScale, this.Const.Tactical.Settings.SkillIconFadeInDuration, this.Const.Tactical.Settings.SkillIconStayDuration, this.Const.Tactical.Settings.SkillIconFadeOutDuration, this.Const.Tactical.Settings.SkillIconMovement);
			this.Sound.play("sounds/enemies/unhold_regenerate_01.wav", this.Const.Sound.Volume.RacialEffect * 1.25, actor.getPos());
			this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " heals for " + healthAdded + " points");
		}
	}	

});

