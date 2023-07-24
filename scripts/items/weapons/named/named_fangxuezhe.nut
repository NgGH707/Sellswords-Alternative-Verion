this.named_fangxuezhe <- this.inherit("scripts/items/weapons/named/named_weapon", {
	m = {},
	function create()
	{
		this.named_weapon.create();
		this.m.Variant = this.Math.rand(1, 3);
		this.updateVariant();
		this.m.ID = "weapon.named_fangxuezhe";
		this.m.Name = "Bleeding";
		this.m.Description = "A large, sharp axe, serrated with teeth, would cause horrific wounds with this weapon.";
		this.m.WeaponType = this.Const.Items.WeaponType.Axe;
		this.m.IconLarge = "weapons/melee/juchifu.png";
		this.m.Icon = "weapons/melee/juchifu_70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		this.m.IsAoE = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "juchifu";
		this.m.Value = 5800;
		this.m.ShieldDamage = 0;
		this.m.Condition = 84.0;
		this.m.ConditionMax = 84.0;
		this.m.StaminaModifier = -18;
		this.m.RangeMin = 1;
		this.m.RangeMax = 1;
		this.m.RangeIdeal = 1;
		this.m.RegularDamage = 45;
		this.m.RegularDamageMax = 65;
		this.m.ArmorDamageMult = 1.0;
		this.m.DirectDamageMult = 0.4;
		this.m.ChanceToHitHead = 10;
		this.randomizeValues();
	}


	function onEquip()
	{
		this.named_weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/fangxuezhe_01"));
		local skillToAdd = this.new("scripts/skills/actives/round_swing");
		skillToAdd.m.ActionPointCost = 5;			
		skillToAdd.setFatigueCost(25);
		this.addSkill(skillToAdd);		
	}

});

