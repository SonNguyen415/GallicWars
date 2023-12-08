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
	other.building_health -= clamp(troop_attack, 1, other.building_health);
	other.info_changed = true;
	alarm[0]= room_speed;
	//show_debug_message("Army: " + string(other.troop_health));
}

