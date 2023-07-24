this.orcspear <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.orcspear";
		this.m.Name = "Flakes";
		this.m.Description = "A raw and rough spear-like patchwork used by orc youngs. Not well suited for human hands.";
		this.m.Categories = "Spear, One-Handed";
		this.m.IconLarge = "weapons/melee/orcweapon_03.png";
		this.m.Icon = "weapons/melee/orcweapon_03_70x70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.OneHanded;
		this.m.IsDoubleGrippable = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "icon_orc_weapon_03";
		this.m.Value = 250;
		this.m.Condition = 48.0;
		this.m.ConditionMax = 48.0;
		this.m.StaminaModifier = -12;
		this.m.RegularDamage = 30;
		this.m.RegularDamageMax = 40;
		this.m.ArmorDamageMult = 0.9;
		this.m.DirectDamageMult = 0.25;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/thrust"));
		//this.addSkill(this.new("scripts/skills/actives/spearwall"));
	}

	function onUpdateProperties( _properties )
	{
		this.weapon.onUpdateProperties(_properties);
	}

});

