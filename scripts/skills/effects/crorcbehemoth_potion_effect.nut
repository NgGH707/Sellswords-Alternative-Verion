this.crorcbehemoth_potion_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.crorcbehemoth_potion";
		this.m.Name = "Unchained Fury";
		this.m.Icon = "skills/status_effect_orcbehemoth.png";
		this.m.IconMini = "";
		this.m.Overlay = "status_effect_orcbehemoth";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = false;
		this.m.IsStacking = false;
	}

	function getDescription()
	{
		return "This character\'s limbic system has been altered with an additional substance that allows them to sustain particularly strenuous anaerobic activity for longer. Their skin seems vaguely greener than you remember, too, but you\'re sure that\'s a coincidence.";
	}

	function getTooltip()
	{
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
				id = 11,
				type = "text",
				icon = "ui/icons/fatigue.png",
				text = "The Fatigue cost of the Adrenaline skill is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]60%[/color]"
			},
			{
				id = 12,
				type = "hint",
				icon = "ui/tooltips/warning.png",
				text = "Further mutations will cause a longer period of sickness"
			}
		];
		return ret;
	}

	function onDeath( _fatalityType )
	{
		if (_fatalityType != this.Const.FatalityType.Unconscious)
		{
			this.World.Statistics.getFlags().set("isCrOrcBehemothPotionAcquired", false);
		}
	}

	function onDismiss()
	{
		this.World.Statistics.getFlags().set("isCrOrcBehemothPotionAcquired", false);
	}

});

