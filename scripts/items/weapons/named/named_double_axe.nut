this.named_double_axe <- this.inherit("scripts/items/weapons/named/named_weapon", {
	m = {},
	function create()
	{
		this.named_weapon.create();
		this.updateVariant();
		this.m.ID = "weapon.named_double_axe";
		this.m.Name = "Fang of Malice";
		this.m.Description = "Berserker's unique way of fighting, maybe holding axes with both hands is a good choice.";
		this.m.Categories = "Axe, Two-Handed";
		this.m.IconLarge = "weapons/melee/kuangzhanshishuangfu.png";
		this.m.Icon = "weapons/melee/kuangzhanshishuangfu_70.png";		
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.IsAgainstShields = true;
		this.m.IsAoE = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "yemanrenshuangfu";		
		this.m.Value = 4200;
		this.m.ShieldDamage = 32;
		this.m.Condition = 92.0;
		this.m.ConditionMax = 92.0;
		this.m.StaminaModifier = -26;
		this.m.RegularDamage = 65;
		this.m.RegularDamageMax = 90;
		this.m.ArmorDamageMult = 1.45;
		this.m.DirectDamageMult = 0.4;
		this.m.ChanceToHitHead = 0;
		this.m.FatigueOnSkillUse = 3;			
		this.randomizeValues();
	}

	
	function onEquip()
	{
		this.named_weapon.onEquip();
		//this.addSkill(this.new("scripts/skills/actives/pseudohack"));
		this.addSkill(this.new("scripts/skills/actives/kuangzhanshishuangfu01_01"));		
		this.addSkill(this.new("scripts/skills/actives/kuangzhanshishuangfu01_02"));
		local skillToAdd = this.new("scripts/skills/actives/split_shield");
		skillToAdd.setApplyAxeMastery(true);
		skillToAdd.setFatigueCost(skillToAdd.getFatigueCostRaw() + 3);
		this.addSkill(skillToAdd);
	}

});

