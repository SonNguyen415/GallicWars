/// @description Insert description here
// You can write your code in this editor

speed = 0;



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
		sprite_index = barbInfAttack;
	} else if (troop_type == "Archer") {
		sprite_index = barbArchAttack;
	} else if (troop_type == "Cavalry") {
		sprite_index = barbCavAttack;
	}
	combat = true;
	other.troop_health -= clamp(troop_attack - other.troop_defense, 1, other.troop_health);
	alarm[0]= room_speed;
	//show_debug_message("Army: " + string(other.troop_health));
}