::mods_hookExactClass("items/weapons/named/named_handgonne", function ( o ) {
	::Mod_Sellswords.HookHelper.hookNamedItemToChangeStats(o, function() {
		local baseWeapon = this.new("scripts/items/weapons/oriental/handgonne");
		this.m.RegularDamage = baseWeapon.m.RegularDamage;
		this.m.RegularDamageMax = baseWeapon.m.RegularDamageMax;
		this.m.ArmorDamageMult = baseWeapon.m.ArmorDamageMult;
		this.m.DirectDamageMult = baseWeapon.m.DirectDamageMult;
		this.m.DirectDamageAdd = baseWeapon.m.DirectDamageAdd;
		this.m.StaminaModifier = baseWeapon.m.StaminaModifier;
		this.m.Value = 5000;
	});
	
});