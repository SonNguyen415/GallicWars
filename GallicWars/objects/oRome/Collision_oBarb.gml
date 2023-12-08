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
	other.troop_health -= clamp(troop_attack - other.troop_defense, 1, other.troop_health);
	alarm[0]= room_speed;
	//show_debug_message("Enemy: " + string(other.troop_health));
}

