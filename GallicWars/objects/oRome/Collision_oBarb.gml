/// @description Insert description here
// You can write your code in this editor

path_end();

if (target == noone) {
	target = other;
	if (target.x > x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;	
	}
}

if (target == other && combat == false && dead == false) {
	if (troop_type == "Infantry") {
		sprite_index = romeInfAttack;
	} else if (troop_type == "Archer") {
		sprite_index = romeArchAttack;
	} else if (troop_type == "Cavalry") {
		sprite_index = romeCavAttack;
	}
	combat = true;
	
	var defense_bonus = 1;
	var attack_bonus = 1;
	
	if (other.troop_type == "Infantry" && troop_type == "Cavalry") {
		defense_bonus = 2;	
	} else if (other.troop_type == "Cavalry" && troop_type == "Archer") {
		defense_bonus = 1.5;
	} else if (other.troop_type == "Archer" && troop_type == "Cavalry") {
		attack_bonus = 1.5;
	} else if (other.troop_type == "Infantry" && troop_type == "Archer") {
		attack_bonus = 2;
	}
		
	
	other.troop_health -= clamp((troop_attack * attack_bonus) - (other.troop_defense * defense_bonus), 1, other.troop_health);
	alarm[0]= room_speed;
	//show_debug_message("Enemy: " + string(other.troop_health));
}

