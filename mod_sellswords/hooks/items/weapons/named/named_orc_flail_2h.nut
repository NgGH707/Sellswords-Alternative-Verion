::mods_hookExactClass("items/weapons/named/named_orc_flail_2h", function ( o ) {
	::Mod_Chirutiru.HookHelper.hookNamedItemToChangeStats(o, function() {
		local baseWeapon = ::new("scripts/items/weapons/greenskins/orc_flail_2h");
		this.m.Condition = baseWeapon.m.Condition;
		this.m.ConditionMax = baseWeapon.m.ConditionMax;
		this.m.RegularDamage = baseWeapon.m.RegularDamage;
		this.m.RegularDamageMax = baseWeapon.m.RegularDamageMax;
		this.m.ArmorDamageMult = baseWeapon.m.ArmorDamageMult;
		this.m.ChanceToHitHead = baseWeapon.m.ChanceToHitHead;
		this.m.DirectDamageMult = baseWeapon.m.DirectDamageMult;
		this.m.DirectDamageAdd = baseWeapon.m.DirectDamageAdd;
		this.m.StaminaModifier = baseWeapon.m.StaminaModifier;
		this.m.ShieldDamage = baseWeapon.m.ShieldDamage;
		this.m.AdditionalAccuracy = baseWeapon.m.AdditionalAccuracy;
		this.m.FatigueOnSkillUse = baseWeapon.m.FatigueOnSkillUse;
		this.m.Value = 2600;
	});
	
});	