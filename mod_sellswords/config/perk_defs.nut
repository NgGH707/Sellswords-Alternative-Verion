if (!("Passive" in ::Const.UI.Color))
{
	::Const.UI.Color.Passive <- "#4f1800";
}

if (!("Active" in ::Const.UI.Color))
{
	::Const.UI.Color.Active <- "#000ec1";
}

if (!("OneTimeEffect" in ::Const.UI.Color))
{
	::Const.UI.Color.OneTimeEffect <- "#000ec1";
}
//all of these new changes are just better worded descriptions by Emo, look good - Abyss 8/12/23
::Const.Strings.PerkName.crBackswing <- "Backswing";
::Const.Strings.PerkDescription.crBackswing <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Once per turn, when an attack against an opponent misses, restore [color=" + ::Const.UI.Color.PositiveValue + "]3[/color] AP if this attack cost more than [color=" + ::Const.UI.Color.NegativeValue + "]2[/color] AP.\nThe following attack will use [color=" + ::Const.UI.Color.NegativeValue + "]85%[/color] of your Melee and Ranged Skill and only inflicts [color=" + ::Const.UI.Color.NegativeValue + "]85%[/color] of normal damage.";
//::Const.Strings.PerkDescription.crBackswing <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Once per turn, the first time you misses an attack on an opponent, restore [color=" + ::Const.UI.Color.PositiveValue + "]3[/color] AP if this attack cost more than [color=" + ::Const.UI.Color.NegativeValue + "]2[/color] AP, while the next attack will use only [color=" + ::Const.UI.Color.NegativeValue + "]85%[/color] of your hitchance and inflicts [color=" + ::Const.UI.Color.NegativeValue + "]85%[/color] of normal damage.";
::Const.Strings.PerkName.crHackSPM <- "Skullsplitter";
::Const.Strings.PerkDescription.crHackSPM <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Axe[/color]\n\nThis perk enhances Axe based weapon attacks in various ways.\n• Hack will gain an [color=" + ::Const.UI.Color.PositiveValue + "]additional[/color] attack but deal [color=" + ::Const.UI.Color.NegativeValue + "]-20%[/color] damage.\n• Split Man will hit the body part for [color=" + ::Const.UI.Color.PositiveValue + "]30%[/color] additional damage.\n• Strike will do a free additional attack with [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] damage, this additional attack cannot deal critical damage.\n• Chop will deal [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] more damage to Hitpoints when hitting the head.";
//::Const.Strings.PerkDescription.crHackSPM <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Axe[/color]\n\n• Hack will gain an [color=" + ::Const.UI.Color.PositiveValue + "]additional[/color] attack but deal [color=" + ::Const.UI.Color.NegativeValue + "]-20%[/color] damage.\n• Split Man will hit another body part with [color=" + ::Const.UI.Color.PositiveValue + "]30%[/color] more damage.\n• Strike will do a free extra attack with [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] damage(not regarded as critical strikes).\n• Chop will deal [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] more damage to hitpoints when hitting heads.";
::Const.Strings.PerkName.crFoB <- "Flurry of Blows";
::Const.Strings.PerkDescription.crFoB <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Piercing Damage[/color]\n\n• Every attack that does at least [color=" + ::Const.UI.Color.NegativeValue + "]10[/color] damage to Hitpoints, applies a stacking debuff, each stack lowers target's threshold to receive injury and their Resolve by [color=" + ::Const.UI.Color.PositiveValue + "]7%[/color]. If this attack does at least [color=" + ::Const.UI.Color.NegativeValue + "]30[/color] damage, apply an addtional stack and inflict bleed on the target for 10 points of damage for 2 turns.\n• Piercing attacks can now inflict injuries on Undead.";
//::Const.Strings.PerkDescription.crFoB <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Piercing Damage[/color]\n\n• Every attack that does at least [color=" + ::Const.UI.Color.NegativeValue + "]10[/color] damage to Hitpoints, applies a stacking debuff, each stack lowers target's threshold to receive injury and resolve by [color=" + ::Const.UI.Color.PositiveValue + "]7%[/color], if this attack does at least [color=" + ::Const.UI.Color.NegativeValue + "]30[/color] damage, apply addtional 1 stack and bleed target.\n• Piercing attacks can now inflict injuries on Undead.";
::Const.Strings.PerkName.crTotalcover <- "Total Cover";
::Const.Strings.PerkDescription.crTotalcover <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Grants [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] damage reduction when using Shieldwall, [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] for Fortify.";
//::Const.Strings.PerkDescription.crTotalcover <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Grants [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] damage reduction when using shieldwall, [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] for fortify.";
::Const.Strings.PerkName.crGuardian <- "The Guardian";
::Const.Strings.PerkDescription.crGuardian <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Shield[/color]\n\n• Increase the Melee Defense, Ranged Defense and Initiative of adjacent allies by [color=" + ::Const.UI.Color.PositiveValue + "]8%[/color] of your total Melee Defense and Ranged Defense.\n• If multiple users with this perk are present, only the highest bonus applies.";
::Const.Strings.PerkName.crFurinkazan <- "Furinkazan";
::Const.Strings.PerkDescription.crFurinkazan <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Reduce the Action Point costs of the Rotation, Footwork, Evasion, Sprint and Audacious Charge skills by [color=" + ::Const.UI.Color.PositiveValue + "]1[/color] and the Fatigue costs by [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color], does not stack with \'Tumble\'.";
//::Const.Strings.PerkDescription.crFurinkazan <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Reduce the Action Point costs of the Rotation, Footwork, Evasion, Sprint and Audacious Charge skills by [color=" + ::Const.UI.Color.PositiveValue + "]1[/color], while the fatigue costs are reduced by [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color].";
::Const.Strings.PerkName.crGrandslam <- "Grand Slam";
::Const.Strings.PerkDescription.crGrandslam <- "\n•[color=" + ::Const.UI.Color.NegativeValue + "]\'Double Grip\'[/color] will increase damage by [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] instead of 25%, even when you are unarmed. Additionally, increase armour penetration by [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] when unarmed.\n• The effect of the [color=" + ::Const.UI.Color.NegativeValue + "]\'Muscularity\'[/color] perk is [color=" + ::Const.UI.Color.PositiveValue + "]tripled[/color].\n• Fatigue cost of all skills are increased by [color=" + ::Const.UI.Color.NegativeValue + "]8%[/color] of your Hitpoints, AP cost is increased by [color=" + ::Const.UI.Color.NegativeValue + "]2[/color] and defences and initiative are decreased by [color=" + ::Const.UI.Color.NegativeValue + "]8%[/color] of your Hitpoints.\n• The maximum Hitpoint value for the bonuses and penalties is [color=" + ::Const.UI.Color.PositiveValue + "]150[/color], anything over this isn't taken into account.\n• The [color=" + ::Const.UI.Color.NegativeValue + "]\'Riposte\'[/color] skill will have an additional [color=" + ::Const.UI.Color.NegativeValue + "]-15%[/color] hit chance and [color=" + ::Const.UI.Color.NegativeValue + "]\'Duelist\'[/color] will provide at most [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color] additional armour penetration, regardless of weapon used.\n• Killing an enemy additionally does [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] of the total damage to a random enemy adjacent to the target, if this effect kills additional enemies, the damage is reduced by [color=" + ::Const.UI.Color.PositiveValue + "]10%[/color] for each subsequent trigger. This effect cannot trigger on attacks of opportunity.";	
//::Const.Strings.PerkDescription.crGrandslam <- "\n• [color=" + ::Const.UI.Color.NegativeValue + "]\'Double Grip\'[/color] will increase [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] damage instead of 25%, even when you are unarmed. Besides increase [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] armor penetration when unarmed.\n• The effect of [color=" + ::Const.UI.Color.NegativeValue + "]\'Muscularity\'[/color] is [color=" + ::Const.UI.Color.PositiveValue + "]tripled[/color].\n• All skills' fatigue cost are increased by [color=" + ::Const.UI.Color.NegativeValue + "]8%[/color] of your hitpoints, AP cost is increased by [color=" + ::Const.UI.Color.NegativeValue + "]2[/color] and defences and initiative are decreased by [color=" + ::Const.UI.Color.NegativeValue + "]8%[/color] of your hitpoints.\n• The hitpoints threshold is [color=" + ::Const.UI.Color.PositiveValue + "]150[/color].\n• [color=" + ::Const.UI.Color.NegativeValue + "]\'Reposite\'[/color] skill will have an additional [color=" + ::Const.UI.Color.NegativeValue + "]-15%[/color] hitchance modification, [color=" + ::Const.UI.Color.NegativeValue + "]\'Duelist\'[/color] skill will provide at most [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color] armor penetration.\n• Killing an enemy additionally does [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] but reduced by [color=" + ::Const.UI.Color.NegativeValue + "]10%[/color] each time of its damage to a random enemy adjacent to the target.";	
/*::Const.Strings.PerkName.laspecialize <- "Light Armor Mastery";
::Const.Strings.PerkDescription.laspecialize <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Fatigue use is reduced by up to [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color], but lowered exponentially by the total penalty to Maximum Fatigue from body and head armor above 15.";
::Const.Strings.PerkName.maspecialize <- "Medium Armor Mastery";
::Const.Strings.PerkDescription.maspecialize <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Grants additional fatigue recovery and ranged defense according to the rate of your current Initiative divided by your armor\'s weight, up to a maximum of [color=" + ::Const.UI.Color.PositiveValue + "]5[/color].\n• The bonuses reach the maximum when your Initiative is higher than three times your armor\'s weight and drops to zero when the weight is out the range of [color=" + ::Const.UI.Color.NegativeValue + "]20[/color] to [color=" + ::Const.UI.Color.NegativeValue + "]40[/color].";
::Const.Strings.PerkName.haspecialize <- "Heavy Armor Mastery";
::Const.Strings.PerkDescription.haspecialize <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Remove the penalty for [color=" + ::Const.UI.Color.NegativeValue + "]encumbrance[/color] while [color=" + ::Const.UI.Color.PositiveValue + "]double[/color] the bonus of it.";*/
::Const.Strings.PerkName.laspecialize <- "Light Armour Mastery";
::Const.Strings.PerkDescription.laspecialize <- "\'The ability to move swiftly can seem almost like a dance if done by a true master.\'\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Fatigue use is reduced by up to [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color], but is lowered exponentially by the total penalty to Maximum Fatigue from body and head armour above 15.";
::Const.Strings.PerkName.maspecialize <- "Medium Armour Mastery";
::Const.Strings.PerkDescription.maspecialize <- "\'Straps and belts, the crux of any armour. Knowing how to stay flexible while bound up is what seperates the wheat from the chaff.\'\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grants additional Fatigue recovery and ranged defense equal to the rate of your current Initiative divided by your armour\'s total weight, up to a maximum of [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color].\n• The bonus only applies when your Initiative is higher than three times your armour\'s total weight and drops to zero if the total Fatigue penalty is outside the range of [color=" + ::Const.UI.Color.NegativeValue + "]20[/color] to [color=" + ::Const.UI.Color.NegativeValue + "]40[/color].";
::Const.Strings.PerkName.haspecialize <- "Heavy Armour Mastery";
::Const.Strings.PerkDescription.haspecialize <- "\'You've learnt how to shift the substantial weight from your armour from a hinderance to an advantage.\'\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Removes the penalties for heavy armour [color=" + ::Const.UI.Color.NegativeValue + "]encumbrance[/color] and [color=" + ::Const.UI.Color.PositiveValue + "]doubles[/color] the value of the Hitpoint mitigation effect.";
::Const.Strings.PerkName.crClarity <- "Clarity";
::Const.Strings.PerkDescription.crClarity <- "A well honed mind can perceive more in each instant, making time appear slower in key instants of need.\n\n[color=" + ::Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 0 AP and builds 5 Fatigue.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+2[/color] action points the following turn and [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color] action point the turn after that. Does not work if you are dazed, drunk, hangover, taunted, staggered, horrified, concussed, fleeing or over [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color] Fatigued.";
//::Const.Strings.PerkDescription.crClarity <- "A well honed mind can perceive more in each instant, making time appear slower in key instants of need.\n\n[color=" + ::Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 0 AP and builds 5 Fatigue.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+2[/color] action point for next turn and half for the turn after that, does not work if you are dazed, drunk, hangover, taunted, staggered, horrified, concussed, fleeing or over [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color] fatigued.";
::Const.Strings.PerkName.crSignaturemove <- "Signature Move";
::Const.Strings.PerkDescription.crSignaturemove <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Melee Damage[/color]\n\n• The first attack each turn which connects with an enemy will build up between [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] to [color=" + ::Const.UI.Color.PositiveValue + "]40%[/color] less Fatigue, and any following attacks will deal between [color=" + ::Const.UI.Color.PositiveValue + "]15%[/color] to [color=" + ::Const.UI.Color.PositiveValue + "]30%[/color] additional damage.\n• The values are based on AP cost on the attacks, with higher AP attacks gaining a greater benefit. If your first attack cost no AP, then the follow-up attack will gain an additional [color=" + ::Const.UI.Color.PositiveValue + "]10%[/color] hitchance instead.";
::Const.Strings.PerkName.crScintillating <- "Scintillating";
::Const.Strings.PerkDescription.crScintillating <- "\n\n[color=" + ::Const.UI.Color.OneTimeEffect + "][u]One-Time Effect:[/u][/color]\n\n• Immediately gain another [color=" + ::Const.UI.Color.PositiveValue + "]Trait[/color] tree and [color=" + ::Const.UI.Color.PositiveValue + "]Weapon[/color] tree. \n• Upon picking this perk you will take a small penalty to all attributes, in return for an additional [color=" + ::Const.UI.Color.PositiveValue + "]perk point[/color]. \n• Picking this perk will completely [color=" + ::Const.UI.Color.PositiveValue + "]RESET[/color] your perks, as if you had used an Oblivion Potion.";
::Const.Strings.PerkName.crbravery <- "Once More Unto the Breach";
::Const.Strings.PerkDescription.crbravery <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Mood based stat changes such as Breaking and Fleeing are always treated as if you are Confident.";
::Const.Strings.PerkName.crinitiative <- "In Delay There Lies No Plenty";
::Const.Strings.PerkDescription.crinitiative <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• [color=" + ::Const.UI.Color.PositiveValue + "]Double[/color] your Initiative value when determining the turn order.\n• Also grants immunity to the Staggered debuff.";
::Const.Strings.PerkName.crhitpoints <- "Too Stubborn to Die";
::Const.Strings.PerkDescription.crhitpoints <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]0.75%[/color] damage reduction for every [color=" + ::Const.UI.Color.PositiveValue + "]1%[/color] of missing Hitpoints.";
::Const.Strings.PerkName.crstamina <- "A Waking Chant";
::Const.Strings.PerkDescription.crstamina <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Unlocks an active skill which lets you convert Fatigue to action points.\n• Also unlocks the \'Recover\' skill.";
::Const.Strings.PerkName.crmeleeskill <- "Strive for Perfection";
::Const.Strings.PerkDescription.crmeleeskill <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Your rolls have an upper limit of [color=" + ::Const.UI.Color.PositiveValue + "]95[/color], while rolls against you have a lower limit of [color=" + ::Const.UI.Color.PositiveValue + "]6[/color].";
::Const.Strings.PerkName.crrangedskill <- "Ace of Aces";
::Const.Strings.PerkDescription.crrangedskill <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• When using ranged weapons, headshot chance will be converted to hitchance at a ratio of 2:1 if the hitchance is less than 95%, and vice versa above 95%.";
::Const.Strings.PerkName.crmeleedefense <- "Born to Be Surrounded";
::Const.Strings.PerkDescription.crmeleedefense <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Being surrounded no longer affects this character\'s defences or triggers Resolve checks.";
::Const.Strings.PerkName.crrangeddefense <- "Wrong Door";
::Const.Strings.PerkDescription.crrangeddefense <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Most Negative effects will have a seperate roll equal to your ranged defense before applying to you.";
::Const.Strings.PerkName.crretrofithooks <- "Retrofit Hooks";
::Const.Strings.PerkDescription.crretrofithooks <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Unlocks the \'Hook\' skill when you are wielding a reach weapon.\n• If your weapon already has this skill, then it will cost [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color] less Fatigue and gain additional [color=" + ::Const.UI.Color.NegativeValue + "]+10%[/color] hitchance.";
::Const.Strings.PerkName.crirresistibleimpulse <- "Irresistible Impulse";
::Const.Strings.PerkDescription.crirresistibleimpulse <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Each time you use the \'Adrenaline\' skill, you'll gain [color=" + ::Const.UI.Color.PositiveValue + "]+6[/color] Fatigue recovery, [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] melee skill, and [color=" + ::Const.UI.Color.PositiveValue + "]+5%[/color] damage next turn.";
::Const.Strings.PerkName.crbeforethestorm <- "Before the Storm";
::Const.Strings.PerkDescription.crbeforethestorm <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• If you end turn with at least 1 AP left, gain [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color] AP next turn and recover [color=" + ::Const.UI.Color.PositiveValue + "]3%[/color] of your maximum Fatigue.\n• \'Recover\' will always leave you at 1 AP to trigger this effect.";
::Const.Strings.PerkName.crresilient <- "Resilient";
::Const.Strings.PerkDescription.crresilient <- "Keep it together! Any negative status effect with a finite duration e.g. Bleeding, Stunned, or Charmed have their duration reduced to [color=" + ::Const.UI.Color.NegativeValue + "]1[/color] turn. Status effects that have their effects grow weaker over several turns (e.g. Goblin Poison) are at their weakest state from the start. Also grants a [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] chance to negate negative status effects such as bleeding and raises the chance to survive being struck down when killed from 33% to 66%.";
::Const.Strings.PerkName.crAnchor <- "Anchor";
::Const.Strings.PerkDescription.crAnchor <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and Melee Defense as long as you have not moved during your turn.";
::Const.Strings.PerkName.crAudaciouscharge <- "Audacious Charge";
::Const.Strings.PerkDescription.crAudaciouscharge <- "\n[color=" + ::Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 4 AP and builds 25 Fatigue.\n• Charge towards a tile up to 2 away, Staggering a random enemy adjacent to that tile and then performing a free attack against them which does [color=" + ::Const.UI.Color.PositiveValue + "]10%[/color] of your main-hand weapon damage. If the target was already staggered or dazed, inflict \'Stun\'.\n• Cannot be used when engaged in melee, or used to pass through enemy zones of control.\n• Picking the perk will also add \'Furinkazan\' to your perk tree, which can reduce the cost of \'Audacious Charge\'.";
::Const.Strings.PerkName.crBattlerhaposdy <- "Battle Rhapsody";
::Const.Strings.PerkDescription.crBattlerhaposdy <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• During your turn, every successful attack provides a stacking bonus to hit-chance, Initiative and Action Points.\n• Each stack increases Melee Skill, Ranged Skill and Initiative by [color=" + ::Const.UI.Color.PositiveValue + "]+2[/color].\n• Your Action Points are increased by a total of [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color] at 3 stacks, [color=" + ::Const.UI.Color.PositiveValue + "]+2[/color] at 6 stacks and [color=" + ::Const.UI.Color.PositiveValue + "]+3[/color] at 10 stacks.\n• Attacks performed against enemies which aren't adjacent only grant a stack after two successful hits.\n• You lose half of the stacks if you miss an attack or if you get hit.\n• Cannot have more than 10 stacks.";
::Const.Strings.PerkName.crPerseverance <- "Perseverance";
::Const.Strings.PerkDescription.crPerseverance <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage to health is reduced by up to [color=" + ::Const.UI.Color.PositiveValue + "]60%[/color] based on how much base damage the attack has, with stronger attacks granting a greater damage reduction value. If an attack would trigger over [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] damage reduction, half of the damage that was ignored will be converted to bleeding which will last for two turns.";
::Const.Strings.PerkName.crTiC <- "Thriving in Chaos";
::Const.Strings.PerkDescription.crTiC <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Always be set to wavering morale state at start of every turn.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill for each current negative status you have including dazed, staggered, poisoned, debilitated and bleeding.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Melee Defense for every Injury you have including permament ones.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Resolve for every 33% of missing Hitpoints.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Initiative for every 33% of accumulated Fatigue.\n• If all the above conditions are met, gain an additional [color=" + ::Const.UI.Color.PositiveValue + "]+15%[/color] total damage and damage reduction.";
::Const.Strings.PerkName.crNavigator <- "Navigator";
::Const.Strings.PerkDescription.crNavigator <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grant \'Pathfinder\' to all allies adjacent to you at the start or at the end of your turn as long as you are not engaged in melee.";
::Const.Strings.PerkName.crIronsideweak <- "Ironside";
::Const.Strings.PerkDescription.crIronsideweak <- "All damage received is reduced by [color=" + ::Const.UI.Color.NegativeValue + "]-3.3%[/color] for every opponent adjacent and in melee range, up to a maximum of [color=" + ::Const.UI.Color.NegativeValue + "]-20%[/color] damage reduction.";
::Const.Strings.PerkName.crBruiser <- "Bruiser";
::Const.Strings.PerkDescription.crBruiser <- "Gain scaling buffs to Fatigue and armour damage based on the Maximum Damage of your mainhand. Each 2 points of damage grants [color=" + ::Const.UI.Color.PositiveValue + "]+1%[/color] armour damage and [color=" + ::Const.UI.Color.PositiveValue + "]+6%[/color] Fatigue damage.";	
::Const.Strings.PerkName.crTrumpcard <- "Trump Card";
::Const.Strings.PerkDescription.crTrumpcard <- "This character is quick to understand the fighting style of their opponents, getting better at fighting them as the combat draws on. Each attack applies the Distracted debuff to enemies.";	
::Const.Strings.PerkName.crHonorheritage <- "Honor Heritage";
::Const.Strings.PerkDescription.crHonorheritage <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain a [color=" + ::Const.UI.Color.PositiveValue + "]15%[/color] chance to increase your morale by 1 stage at the end of every turn.";	
::Const.Strings.PerkName.crBlocknormal <- "Block Training";
::Const.Strings.PerkDescription.crBlocknormal <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked by an adjacent opponent, they roll against your melee skill subtracted by the attacker's melee skill. On a success, receive only [color=" + ::Const.UI.Color.PositiveValue + "]40%[/color] total damage, otherwise gain between [color=" + ::Const.UI.Color.PositiveValue + "]0-20%[/color] based on the result.";
::Const.Strings.PerkName.crBlockskilled <- "Skilled Block";
::Const.Strings.PerkDescription.crBlockskilled <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked by an adjacent opponent, they roll against your melee skill subtracted by the attacker's melee skill. On a success, receive only [color=" + ::Const.UI.Color.PositiveValue + "]35%[/color] total damage, otherwise gain between [color=" + ::Const.UI.Color.PositiveValue + "]0-30%[/color] based on the result.";	
::Const.Strings.PerkName.crBlockmaster <- "Master Block";
::Const.Strings.PerkDescription.crBlockmaster <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked by an adjacent opponent, they roll against your melee skill subtracted by the attacker's melee skill. On a success, receive only [color=" + ::Const.UI.Color.PositiveValue + "]30%[/color] total damage, otherwise gain between [color=" + ::Const.UI.Color.PositiveValue + "]0-40%[/color] based on the result.";
::Const.Strings.PerkName.crDiscipline <- "Discipline";
::Const.Strings.PerkDescription.crDiscipline <- "This character\'s senses are heightened when faced with mortal danger. Gain [color=" + ::Const.UI.Color.PositiveValue + "]+10[/color] melee defence and [color=" + ::Const.UI.Color.PositiveValue + "]5[/color] ranged defense when hit by an attack. This bonus lasts until the start of your turn or until an attack misses against you.";
::Const.Strings.PerkName.crRavager <- "Ravager";
::Const.Strings.PerkDescription.crRavager <- "Gain a stacking buff to melee and ranged skill when attacking an enemy in with lower moral state than yours, gain an additional bonus based on their total Fatigue percentage. Gain [color=" + ::Const.UI.Color.PositiveValue + "]5[/color] melee skill and half that as ranged skill for each moral tier of difference, and an additional [color=" + ::Const.UI.Color.PositiveValue + "]1[/color] for each 20% of their total Fatigue.";	
::Const.Strings.PerkName.crRapidmarch <- "Rapid March";
::Const.Strings.PerkDescription.crRapidmarch <- "\n[color=" + ::Const.UI.Color.Active + "][u]Active:[/u][/color]\n\n• Costs 3 AP and builds 10 Fatigue.\n• Grant a nearby ally the \'Rapid March\' effect, reducing the AP cost for movement by [color=" + ::Const.UI.Color.PositiveValue + "]1[/color] for each tile, but doubling the Fatigue cost.";	
::Const.Strings.PerkName.crReachadvantage <- "Reach Advantage";
::Const.Strings.PerkDescription.crReachadvantage <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Two-Handed Melee Weapon[/color]\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Learn to use the superior reach of large weapons to keep the enemy from getting close enough to land a good hit.\n\n• Mark the enemies adjacent to you at the start of the turn, gain [color=" + ::Const.UI.Color.PositiveValue + "]+100%[/color] of your melee skill as melee defense against them until waiting or ending your turn. You then prevent them from approaching your Zone of Control with an attack of opportunity until next turn with a damage reduction of [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color].\n• Invalid while in the 'En Garde' stance.";
::Const.Strings.PerkName.crParthianshot <- "Parthian Shot";
::Const.Strings.PerkDescription.crParthianshot <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Bow[/color]\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage penetration and Damage to Hitpoints are increased by [color=" + ::Const.UI.Color.PositiveValue + "]+2%[/color] of your remaining Action Points.\n• The first tile moved each turn costs no AP and Fatigue.";
/*::Const.Strings.PerkName.crSignaturemove <- "Signature Move";
::Const.Strings.PerkDescription.crSignaturemove <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Melee Damage[/color]\n\n• Every first attack in one turn will build up [color=" + ::Const.UI.Color.PositiveValue + "]-20%[/color] to [color=" + ::Const.UI.Color.PositiveValue + "]-40%[/color] fatigue, while the second attack will deal [color=" + ::Const.UI.Color.PositiveValue + "]+15%[/color] to [color=" + ::Const.UI.Color.PositiveValue + "]+30%[/color] damage.\n• The effects will not be wasted by missing with your attack.\n• Skills with less action cost will receive a larger bonus. If your first attack is used for free, the second attack will additionally gain a [color=" + ::Const.UI.Color.PositiveValue + "]+10%[/color] hitchance bonus.";
::Const.Strings.PerkName.crScintillating <- "Scintillating";
::Const.Strings.PerkDescription.crScintillating <- "\n\n[color=" + ::Const.UI.Color.OneTimeEffect + "][u]One-Time Effect:[/u][/color]\n\n• Immediately gain another [color=" + ::Const.UI.Color.PositiveValue + "]Trait[/color] tree and [color=" + ::Const.UI.Color.PositiveValue + "]Weapon[/color] tree. \n• For those whose perk trees are not generated automatically, they will partly lose all attributes instead, in return for an additional [color=" + ::Const.UI.Color.PositiveValue + "]perk point[/color]. \n• Will always [color=" + ::Const.UI.Color.PositiveValue + "]RESET[/color] your perks for free after you picked this perk.";
::Const.Strings.PerkName.crbravery <- "Once More Unto the Breach";
::Const.Strings.PerkDescription.crbravery <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• The stats are increased as if you are confident.";
::Const.Strings.PerkName.crinitiative <- "In Delay There Lies No Plenty";
::Const.Strings.PerkDescription.crinitiative <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• [color=" + ::Const.UI.Color.PositiveValue + "]Double[/color] your initiative when determining turn order.\n• Also grants the ability to be immune to staggered.";
::Const.Strings.PerkName.crhitpoints <- "Too Stubborn to Die";
::Const.Strings.PerkDescription.crhitpoints <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]0.75%[/color] damage reduction for every [color=" + ::Const.UI.Color.PositiveValue + "]1%[/color] of missing hitpoints.";
::Const.Strings.PerkName.crstamina <- "A Waking Chant";
::Const.Strings.PerkDescription.crstamina <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Unlocks the active skill to let you be able to convert fatigue to action points.\n• Also unlocks the \'Recover\' skill.";
::Const.Strings.PerkName.crmeleeskill <- "Strive for Perfection";
::Const.Strings.PerkDescription.crmeleeskill <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Your dice has an upper bound of [color=" + ::Const.UI.Color.PositiveValue + "]95[/color], while enemies's dices have a lower bound of [color=" + ::Const.UI.Color.PositiveValue + "]6[/color].";
::Const.Strings.PerkName.crrangedskill <- "Ace of Aces";
::Const.Strings.PerkDescription.crrangedskill <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• When using ranged weapons, critical chance will be converted to required hitchance at a ratio of 2:1 if the hitchance is less than 95%, and vice versa.";
::Const.Strings.PerkName.crmeleedefense <- "Born to Be Surrounded";
::Const.Strings.PerkDescription.crmeleedefense <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Being surrounded no longer affects this character\'s defences or resolve at all.";
::Const.Strings.PerkName.crrangeddefense <- "Wrong Door";
::Const.Strings.PerkDescription.crrangeddefense <- "\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Most Negative effects will have a difficulty check (DC) equals to your ranged defense before applying on you.";
::Const.Strings.PerkName.crretrofithooks <- "Retrofit Hooks";
::Const.Strings.PerkDescription.crretrofithooks <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Unlocks the \'Hook\' skill when you are wielding a long weapon.\n• If your weapon already has this skill, then it will cost [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color] less fatigue and gain additional [color=" + ::Const.UI.Color.NegativeValue + "]+10%[/color] hitchance.";
::Const.Strings.PerkName.crirresistibleimpulse <- "Irresistible Impulse";
::Const.Strings.PerkDescription.crirresistibleimpulse <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• Each time you use the \'Adrenaline\' skill, you'll gain [color=" + ::Const.UI.Color.PositiveValue + "]+6[/color] fatigue recovery, [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] melee skill and [color=" + ::Const.UI.Color.PositiveValue + "]+5%[/color] damage next turn.";
::Const.Strings.PerkName.crbeforethestorm <- "Before the Storm";
::Const.Strings.PerkDescription.crbeforethestorm <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n\n• If you end turn with at least 1 AP left, gain [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color] AP next turn and recover [color=" + ::Const.UI.Color.PositiveValue + "]3%[/color] maximum stamina.\n• \'Recover\' will always leave 1 AP to trigger this effect.";
::Const.Strings.PerkName.crresilient <- "Resilient";
::Const.Strings.PerkDescription.crresilient <- "Keep it together! Any negative status effect with a finite duration (e.g. Bleeding, Charmed) has its duration reduced to [color=" + ::Const.UI.Color.NegativeValue + "]1[/color] turn. Status effects that have their effects grow weaker over several turns (e.g. Goblin Poison) are at their weakest state from the start. Also grants [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] resistance to many negative statuses including bleeding and raises the chance to survive being struck down and not killed from 33% to 66%.";
::Const.Strings.PerkName.crAnchor <- "Anchor";
::Const.Strings.PerkDescription.crAnchor <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill and Melee Defense as long as you have not moved during your turn.";
::Const.Strings.PerkName.crAudaciouscharge <- "Audacious Charge";
::Const.Strings.PerkDescription.crAudaciouscharge <- "\n[color=" + ::Const.UI.Color.Active + "][u]Active:[/u][/color]\n• Costs 4 AP and builds 25 Fatigue.\n• Charge towards a tile up to 2 tiles away, staggering a random enemy adjacent to that tile and performing a free attack against him which does [color=" + ::Const.UI.Color.PositiveValue + "]10%[/color] total damage, and if the target is already staggered or dazed, inflict \'Stun\'.\n• Cannot be used when engaged in melee, or pass through enemy zones of control.\n• Picking the perk will also add \'Furinkazan\' to your perk map, which could reduce the cost of \'Audacious Charge\'.";
::Const.Strings.PerkName.crBattlerhaposdy <- "Battle Rhapsody";
::Const.Strings.PerkDescription.crBattlerhaposdy <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• During your turn, every successful attack provides a stacking bonus to Hitchance, Initiative and Action Points.\n• Each stack increases Melee Skill, Ranged Skill and Initiative by [color=" + ::Const.UI.Color.PositiveValue + "]+2[/color].\n• Your Action Points are increased by a total of [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color] at 3 stacks, [color=" + ::Const.UI.Color.PositiveValue + "]+2[/color] at 6 stacks and [color=" + ::Const.UI.Color.PositiveValue + "]+3[/color] at 10 stacks.\n• Attacks not at 1 tile range only grant a stack after two successful hits.\n• You lose half of the stacks if you miss an attack or if you get hit.\n• Cannot have more than 10 stacks.";
::Const.Strings.PerkName.crPerseverance <- "Perseverance";
::Const.Strings.PerkDescription.crPerseverance <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• The more damage you will receive, the more damage reduction you'll get, up to [color=" + ::Const.UI.Color.PositiveValue + "]-60%[/color] HP damage reduction. But if too much damage is taken therefore it hurts you indeed, half of the damage reduction will convert to bleeding which last for two turns.";
::Const.Strings.PerkName.crTiC <- "Thriving in Chaos";
::Const.Strings.PerkDescription.crTiC <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Always be at wavering morale state at start of every turn.\n• Gain [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Melee Skill for each negative status including dazed, staggered, poisoned, debilitated and bleeding, [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Melee Defense for every Injuries including permament ones, [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Resolve for every 33% of missing hitpoints, [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color] Initiative for every 33% of accumulated fatigue.\n• If all the above conditions are met, gain [color=" + ::Const.UI.Color.PositiveValue + "]+15%[/color] total damage and damage reduction.";	
::Const.Strings.PerkName.crNavigator <- "Navigator";
::Const.Strings.PerkDescription.crNavigator <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Grant \'Pathfinder\' to all your allies adjacent to you at the start or at the end of your turn as long as you are not engaged.";
::Const.Strings.PerkName.crIronsideweak <- "Ironside";
::Const.Strings.PerkDescription.crIronsideweak <- "All damage received is reduced by [color=" + ::Const.UI.Color.NegativeValue + "]-3.3%[/color] for every opponent adjacent and in melee range, up to a [color=" + ::Const.UI.Color.NegativeValue + "]-20%[/color] total damage reduction.";
::Const.Strings.PerkName.crBruiser <- "Bruiser";
::Const.Strings.PerkDescription.crBruiser <- "The more maximum damage your weapon has, the more damage to armor and fatigue damage inflicts to enemies, to a maximum of [color=" + ::Const.UI.Color.PositiveValue + "]+10%[/color] armor damage and [color=" + ::Const.UI.Color.PositiveValue + "]+300%[/color] fatigue damage.";	
::Const.Strings.PerkName.crTrumpcard <- "Trump Card";
::Const.Strings.PerkDescription.crTrumpcard <- "\nDescription.";	
::Const.Strings.PerkName.crHonorheritage <- "Honor Heritage";
::Const.Strings.PerkDescription.crHonorheritage <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• At the end of your turn, increase your morale at a probability of [color=" + ::Const.UI.Color.PositiveValue + "]15%[/color].";	
::Const.Strings.PerkName.crBlocknormal <- "Block Training";
::Const.Strings.PerkDescription.crBlocknormal <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked by melee skills, 1D100 and if it is lower than your melee skill subtracted attacker's melee skill, receive only [color=" + ::Const.UI.Color.PositiveValue + "]40%[/color] total damage, other cases gain [color=" + ::Const.UI.Color.PositiveValue + "]0-20%[/color] reduction based on the result of this roll.";
::Const.Strings.PerkName.crBlockskilled <- "Skilled Block";
::Const.Strings.PerkDescription.crBlockskilled <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked by melee skills, 1D100 and if it is lower than your melee skill subtracted attacker's melee skill, receive only [color=" + ::Const.UI.Color.PositiveValue + "]35%[/color] total damage, other cases gain [color=" + ::Const.UI.Color.PositiveValue + "]0-30%[/color] reduction based on the result of this roll.";	
::Const.Strings.PerkName.crBlockmaster <- "Master Block";
::Const.Strings.PerkDescription.crBlockmaster <- "\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Whenever you are attacked by melee skills, 1D100 and if it is lower than your melee skill subtracted attacker's melee skill, receive only [color=" + ::Const.UI.Color.PositiveValue + "]30%[/color] total damage, other cases gain [color=" + ::Const.UI.Color.PositiveValue + "]0-40%[/color] reduction based on the result of this roll.";	
::Const.Strings.PerkName.crDiscipline <- "Discipline";
::Const.Strings.PerkDescription.crDiscipline <- "\nDescription.";
::Const.Strings.PerkName.crRavager <- "Ravager";
::Const.Strings.PerkDescription.crRavager <- "\nDescription.";	
::Const.Strings.PerkName.crRapidmarch <- "Rapid March";
::Const.Strings.PerkDescription.crRapidmarch <- "\n[color=" + ::Const.UI.Color.Active + "][u]Active:[/u][/color]\n\n• Costs 3 AP and builds 10 Fatigue.\n• Grant a nearby ally \'Rapid March\' effect, reduced his Action Point cost for movement by [color=" + ::Const.UI.Color.PositiveValue + "]1[/color] for each tile, but the Fatigue cost is doubled.";	
::Const.Strings.PerkName.crReachadvantage <- "Reach Advantage";
::Const.Strings.PerkDescription.crReachadvantage <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Two-Handed Melee Weapon[/color]\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Learn to use the superior reach of large weapons to keep the enemy from getting close enough to land a good hit.\n\n• Mark the enemies around you at the start or continuation of a turn, gain [color=" + ::Const.UI.Color.PositiveValue + "]+100%[/color] of your melee skill as melee defense against them until waiting or ending your turn (works ONLY ON your turn), moreover prevent him from approaching your ZOC(Zone of Control) until next turn with a decreased damage of [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color].\n• Invalid while in the 'En Garde' stance.";	
::Const.Strings.PerkName.crParthianshot <- "Parthian Shot";
::Const.Strings.PerkDescription.crParthianshot <- "\n\n[color=" + ::Const.UI.Color.NegativeValue + "][u]Requires:[/u]Bow[/color]\n\n[color=" + ::Const.UI.Color.Passive + "][u]Passive:[/u][/color]\n• Damage penetration and Damage to hitpoints are increased by [color=" + ::Const.UI.Color.PositiveValue + "]+2%[/color] of your remaining Action Points.\n• First moving action of every turn costs 0 Action Points and 0 Fatigue.";*/	


::Const.Perks.addPerkDefObjects([
	{
		ID = "perk.crBackswing",
		Script = "scripts/skills/perks/perk_crBackswing",
		Name = this.Const.Strings.PerkName.crBackswing,
		Tooltip = this.Const.Strings.PerkDescription.crBackswing,
		Icon = "ui/perks/crBackswing.png",
		IconDisabled = "ui/perks/crBackswing_bw.png",
		Const = "crBackswing"
	},
	{
		ID = "perk.crHackSPM",
		Script = "scripts/skills/perks/perk_crHackSPM",
		Name = this.Const.Strings.PerkName.crHackSPM,
		Tooltip = this.Const.Strings.PerkDescription.crHackSPM,
		Icon = "ui/perks/crHackSPM.png",
		IconDisabled = "ui/perks/crHackSPM_bw.png",
		Const = "crHackSPM"
	},
	{
		ID = "perk.crFoB",
		Script = "scripts/skills/perks/perk_crFoB",
		Name = this.Const.Strings.PerkName.crFoB,
		Tooltip = this.Const.Strings.PerkDescription.crFoB,
		Icon = "ui/perks/crFoB.png",
		IconDisabled = "ui/perks/crFoB_bw.png",
		Const = "crFoB"
	},
	{
		ID = "perk.crTotalcover",
		Script = "scripts/skills/perks/perk_crTotalcover",
		Name = this.Const.Strings.PerkName.crTotalcover,
		Tooltip = this.Const.Strings.PerkDescription.crTotalcover,
		Icon = "ui/perks/crTotalcover.png",
		IconDisabled = "ui/perks/crTotalcover_bw.png",
		Const = "crTotalcover"
	},
	{
		ID = "perk.crGuardian",
		Script = "scripts/skills/perks/perk_crGuardian",
		Name = this.Const.Strings.PerkName.crGuardian,
		Tooltip = this.Const.Strings.PerkDescription.crGuardian,
		Icon = "ui/perks/crGuardian.png",
		IconDisabled = "ui/perks/crGuardian_bw.png",
		Const = "crGuardian"
	},
	{
		ID = "perk.crFurinkazan",
		Script = "scripts/skills/perks/perk_crFurinkazan",
		Name = this.Const.Strings.PerkName.crFurinkazan,
		Tooltip = this.Const.Strings.PerkDescription.crFurinkazan,
		Icon = "ui/perks/crFurinkazan.png",
		IconDisabled = "ui/perks/crFurinkazan_bw.png",
		Const = "crFurinkazan"
	},
	{
		ID = "perk.crGrandslam",
		Script = "scripts/skills/perks/perk_crGrandslam",
		Name = this.Const.Strings.PerkName.crGrandslam,
		Tooltip = this.Const.Strings.PerkDescription.crGrandslam,
		Icon = "ui/perks/crGrandslam.png",
		IconDisabled = "ui/perks/crGrandslam_bw.png",
		Const = "crGrandslam"
	},		
	{
		ID = "perk.laspecialize",
		Script = "scripts/skills/perks/perk_laspecialize",
		Name = this.Const.Strings.PerkName.laspecialize,
		Tooltip = this.Const.Strings.PerkDescription.laspecialize,
		Icon = "ui/perks/laspecialize.png",
		IconDisabled = "ui/perks/laspecialize_bw.png",
		Const = "laspecialize"
	},
	{
		ID = "perk.maspecialize",
		Script = "scripts/skills/perks/perk_maspecialize",
		Name = this.Const.Strings.PerkName.maspecialize,
		Tooltip = this.Const.Strings.PerkDescription.maspecialize,
		Icon = "ui/perks/maspecialize.png",
		IconDisabled = "ui/perks/maspecialize_bw.png",
		Const = "maspecialize"
	},
	{
		ID = "perk.haspecialize",
		Script = "scripts/skills/perks/perk_haspecialize",
		Name = this.Const.Strings.PerkName.haspecialize,
		Tooltip = this.Const.Strings.PerkDescription.haspecialize,
		Icon = "ui/perks/haspecialize.png",
		IconDisabled = "ui/perks/haspecialize_bw.png",
		Const = "haspecialize"
	},
	{
		ID = "perk.crClarity",
		Script = "scripts/skills/perks/perk_crClarity",
		Name = this.Const.Strings.PerkName.crClarity,
		Tooltip = this.Const.Strings.PerkDescription.crClarity,
		Icon = "ui/perks/crClarity.png",
		IconDisabled = "ui/perks/crClarity_bw.png",
		Const = "crClarity"
	},
	{
		ID = "perk.crSignaturemove",
		Script = "scripts/skills/perks/perk_crSignaturemove",
		Name = this.Const.Strings.PerkName.crSignaturemove,
		Tooltip = this.Const.Strings.PerkDescription.crSignaturemove,
		Icon = "ui/perks/crSignaturemove.png",
		IconDisabled = "ui/perks/crSignaturemove_bw.png",
		Const = "crSignaturemove"
	},
	{
		ID = "perk.crScintillating",
		Script = "scripts/skills/perks/perk_crScintillating",
		Name = this.Const.Strings.PerkName.crScintillating,
		Tooltip = this.Const.Strings.PerkDescription.crScintillating,
		Icon = "ui/perks/crScintillating.png",
		IconDisabled = "ui/perks/crScintillating_bw.png",
		Const = "crScintillating"
	},
	{
		ID = "perk.crbravery",
		Script = "scripts/skills/perks/perk_crbravery",
		Name = this.Const.Strings.PerkName.crbravery,
		Tooltip = this.Const.Strings.PerkDescription.crbravery,
		Icon = "ui/perks/crbravery.png",
		IconDisabled = "ui/perks/crbravery_bw.png",
		Const = "crbravery"
	},
	{
		ID = "perk.crinitiative",
		Script = "scripts/skills/perks/perk_crinitiative",
		Name = this.Const.Strings.PerkName.crinitiative,
		Tooltip = this.Const.Strings.PerkDescription.crinitiative,
		Icon = "ui/perks/crinitiative.png",
		IconDisabled = "ui/perks/crinitiative_bw.png",
		Const = "crinitiative"
	},
	{
		ID = "perk.crhitpoints",
		Script = "scripts/skills/perks/perk_crhitpoints",
		Name = this.Const.Strings.PerkName.crhitpoints,
		Tooltip = this.Const.Strings.PerkDescription.crhitpoints,
		Icon = "ui/perks/crhitpoints.png",
		IconDisabled = "ui/perks/crhitpoints_bw.png",
		Const = "crhitpoints"
	},
	{
		ID = "perk.crstamina",
		Script = "scripts/skills/perks/perk_crstamina",
		Name = this.Const.Strings.PerkName.crstamina,
		Tooltip = this.Const.Strings.PerkDescription.crstamina,
		Icon = "ui/perks/crstamina.png",
		IconDisabled = "ui/perks/crstamina_bw.png",
		Const = "crstamina"
	},
	{
		ID = "perk.crmeleeskill",
		Script = "scripts/skills/perks/perk_crmeleeskill",
		Name = this.Const.Strings.PerkName.crmeleeskill,
		Tooltip = this.Const.Strings.PerkDescription.crmeleeskill,
		Icon = "ui/perks/crmeleeskill.png",
		IconDisabled = "ui/perks/crmeleeskill_bw.png",
		Const = "crmeleeskill"
	},
	{
		ID = "perk.crrangedskill",
		Script = "scripts/skills/perks/perk_crrangedskill",
		Name = this.Const.Strings.PerkName.crrangedskill,
		Tooltip = this.Const.Strings.PerkDescription.crrangedskill,
		Icon = "ui/perks/crrangedskill.png",
		IconDisabled = "ui/perks/crrangedskill_bw.png",
		Const = "crrangedskill"
	},
	{
		ID = "perk.crmeleedefense",
		Script = "scripts/skills/perks/perk_crmeleedefense",
		Name = this.Const.Strings.PerkName.crmeleedefense,
		Tooltip = this.Const.Strings.PerkDescription.crmeleedefense,
		Icon = "ui/perks/crmeleedefense.png",
		IconDisabled = "ui/perks/crmeleedefense_bw.png",
		Const = "crmeleedefense"
	},
	{
		ID = "perk.crrangeddefense",
		Script = "scripts/skills/perks/perk_crrangeddefense",
		Name = this.Const.Strings.PerkName.crrangeddefense,
		Tooltip = this.Const.Strings.PerkDescription.crrangeddefense,
		Icon = "ui/perks/crrangeddefense.png",
		IconDisabled = "ui/perks/crrangeddefense_bw.png",
		Const = "crrangeddefense"
	},
	{
		ID = "perk.crretrofithooks",
		Script = "scripts/skills/perks/perk_crretrofithooks",
		Name = this.Const.Strings.PerkName.crretrofithooks,
		Tooltip = this.Const.Strings.PerkDescription.crretrofithooks,
		Icon = "ui/perks/crretrofithooks.png",
		IconDisabled = "ui/perks/crretrofithooks_bw.png",
		Const = "crretrofithooks"
	},
	{
		ID = "perk.crirresistibleimpulse",
		Script = "scripts/skills/perks/perk_crirresistibleimpulse",
		Name = this.Const.Strings.PerkName.crirresistibleimpulse,
		Tooltip = this.Const.Strings.PerkDescription.crirresistibleimpulse,
		Icon = "ui/perks/crirresistibleimpulse.png",
		IconDisabled = "ui/perks/crirresistibleimpulse_bw.png",
		Const = "crirresistibleimpulse"
	},
	{
		ID = "perk.crbeforethestorm",
		Script = "scripts/skills/perks/perk_crbeforethestorm",
		Name = this.Const.Strings.PerkName.crbeforethestorm,
		Tooltip = this.Const.Strings.PerkDescription.crbeforethestorm,
		Icon = "ui/perks/crbeforethestorm.png",
		IconDisabled = "ui/perks/crbeforethestorm_bw.png",
		Const = "crbeforethestorm"
	},
	{
		ID = "perk.crresilient",
		Script = "scripts/skills/perks/perk_crresilient",
		Name = this.Const.Strings.PerkName.crresilient,
		Tooltip = this.Const.Strings.PerkDescription.crresilient,
		Icon = "ui/perks/crresilient.png",
		IconDisabled = "ui/perks/crresilient_bw.png",
		Const = "crresilient"
	},		
	{
		ID = "perk.crAnchor",
		Script = "scripts/skills/perks/perk_crAnchor",
		Name = this.Const.Strings.PerkName.crAnchor,
		Tooltip = this.Const.Strings.PerkDescription.crAnchor,
		Icon = "ui/perks/crAnchor.png",
		IconDisabled = "ui/perks/crAnchor_bw.png",
		Const = "crAnchor"
	},
	{
		ID = "perk.crAudaciouscharge",
		Script = "scripts/skills/perks/perk_crAudaciouscharge",
		Name = this.Const.Strings.PerkName.crAudaciouscharge,
		Tooltip = this.Const.Strings.PerkDescription.crAudaciouscharge,
		Icon = "ui/perks/crAudaciouscharge.png",
		IconDisabled = "ui/perks/crAudaciouscharge_bw.png",
		Const = "crAudaciouscharge"
	},
	{
		ID = "perk.crBattlerhaposdy",
		Script = "scripts/skills/perks/perk_crBattlerhaposdy",
		Name = this.Const.Strings.PerkName.crBattlerhaposdy,
		Tooltip = this.Const.Strings.PerkDescription.crBattlerhaposdy,
		Icon = "ui/perks/crBattlerhaposdy.png",
		IconDisabled = "ui/perks/crBattlerhaposdy_bw.png",
		Const = "crBattlerhaposdy"
	},
	{
		ID = "perk.crPerseverance",
		Script = "scripts/skills/perks/perk_crPerseverance",
		Name = this.Const.Strings.PerkName.crPerseverance,
		Tooltip = this.Const.Strings.PerkDescription.crPerseverance,
		Icon = "ui/perks/crPerseverance.png",
		IconDisabled = "ui/perks/crPerseverance_bw.png",
		Const = "crPerseverance"
	},
	{
		ID = "perk.crTiC",
		Script = "scripts/skills/perks/perk_crTiC",
		Name = this.Const.Strings.PerkName.crTiC,
		Tooltip = this.Const.Strings.PerkDescription.crTiC,
		Icon = "ui/perks/crTiC.png",
		IconDisabled = "ui/perks/crTiC_bw.png",
		Const = "crTiC"
	},	
	{
		ID = "perk.crNavigator",
		Script = "scripts/skills/perks/perk_crNavigator",
		Name = this.Const.Strings.PerkName.crNavigator,
		Tooltip = this.Const.Strings.PerkDescription.crNavigator,
		Icon = "ui/perks/crNavigator.png",
		IconDisabled = "ui/perks/crNavigator_bw.png",
		Const = "crNavigator"
	},	
	{
		ID = "perk.crIronsideweak",
		Script = "scripts/skills/perks/perk_crIronsideweak",
		Name = this.Const.Strings.PerkName.crIronsideweak,
		Tooltip = this.Const.Strings.PerkDescription.crIronsideweak,
		Icon = "ui/perks/perk_56.png",
		IconDisabled = "ui/perks/perk_56_sw.png",
		Const = "crIronsideweak"
	},
	{
		ID = "perk.crBruiser",
		Script = "scripts/skills/perks/perk_crBruiser",
		Name = this.Const.Strings.PerkName.crBruiser,
		Tooltip = this.Const.Strings.PerkDescription.crBruiser,
		Icon = "ui/perks/crBruiser.png",
		IconDisabled = "ui/perks/crBruiser_bw.png",
		Const = "crBruiser"
	},
	{
		ID = "perk.crTrumpcard",
		Script = "scripts/skills/perks/perk_crTrumpcard",
		Name = this.Const.Strings.PerkName.crTrumpcard,
		Tooltip = this.Const.Strings.PerkDescription.crTrumpcard,
		Icon = "ui/perks/perk_56.png",
		IconDisabled = "ui/perks/perk_56_sw.png",
		Const = "crTrumpcard"
	},
	{
		ID = "perk.crHonorheritage",
		Script = "scripts/skills/perks/perk_crHonorheritage",
		Name = this.Const.Strings.PerkName.crHonorheritage,
		Tooltip = this.Const.Strings.PerkDescription.crHonorheritage,
		Icon = "ui/perks/crHonorheritage.png",
		IconDisabled = "ui/perks/crHonorheritage_bw.png",
		Const = "crHonorheritage"
	},
	{
		ID = "perk.crBlocknormal",
		Script = "scripts/skills/perks/perk_crBlocknormal",
		Name = this.Const.Strings.PerkName.crBlocknormal,
		Tooltip = this.Const.Strings.PerkDescription.crBlocknormal,
		Icon = "ui/perks/crBlocknormal.png",
		IconDisabled = "ui/perks/crBlocknormal_bw.png",
		Const = "crBlocknormal"
	},
	{
		ID = "perk.crBlockskilled",
		Script = "scripts/skills/perks/perk_crBlockskilled",
		Name = this.Const.Strings.PerkName.crBlockskilled,
		Tooltip = this.Const.Strings.PerkDescription.crBlockskilled,
		Icon = "ui/perks/crBlocknormal.png",
		IconDisabled = "ui/perks/crBlocknormal_bw.png",
		Const = "crBlockskilled"
	},
	{
		ID = "perk.crBlockmaster",
		Script = "scripts/skills/perks/perk_crBlockmaster",
		Name = this.Const.Strings.PerkName.crBlockmaster,
		Tooltip = this.Const.Strings.PerkDescription.crBlockmaster,
		Icon = "ui/perks/crBlocknormal.png",
		IconDisabled = "ui/perks/crBlocknormal_bw.png",
		Const = "crBlockmaster"
	},
	{
		ID = "perk.crDiscipline",
		Script = "scripts/skills/perks/perk_crDiscipline",
		Name = this.Const.Strings.PerkName.crDiscipline,
		Tooltip = this.Const.Strings.PerkDescription.crDiscipline,
		Icon = "ui/perks/crDiscipline.png",
		IconDisabled = "ui/perks/crDiscipline_bw.png",
		Const = "crDiscipline"
	},
	{
		ID = "perk.crRavager",
		Script = "scripts/skills/perks/perk_crRavager",
		Name = this.Const.Strings.PerkName.crRavager,
		Tooltip = this.Const.Strings.PerkDescription.crRavager,
		Icon = "ui/perks/perk_56.png",
		IconDisabled = "ui/perks/perk_56_sw.png",
		Const = "crRavager"
	},	
	{
		ID = "perk.crRapidmarch",
		Script = "scripts/skills/perks/perk_crRapidmarch",
		Name = this.Const.Strings.PerkName.crRapidmarch,
		Tooltip = this.Const.Strings.PerkDescription.crRapidmarch,
		Icon = "ui/perks/crrapidmarch.png",
		IconDisabled = "ui/perks/crrapidmarch_bw.png",
		Const = "crRapidmarch"
	},
	{
		ID = "perk.crReachadvantage",
		Script = "scripts/skills/perks/perk_crReachadvantage",
		Name = this.Const.Strings.PerkName.crReachadvantage,
		Tooltip = this.Const.Strings.PerkDescription.crReachadvantage,
		Icon = "ui/perks/perk_19.png",
		IconDisabled = "ui/perks/perk_19_sw.png",
		Const = "crReachadvantage"
	},	
	{
		ID = "perk.crParthianshot",
		Script = "scripts/skills/perks/perk_crParthianshot",
		Name = this.Const.Strings.PerkName.crParthianshot,
		Tooltip = this.Const.Strings.PerkDescription.crParthianshot,
		Icon = "ui/perks/partian_shot_perk.png",
		IconDisabled = "ui/perks/partian_shot_perk_bw.png",
		Const = "crParthianshot"
	},			
]);