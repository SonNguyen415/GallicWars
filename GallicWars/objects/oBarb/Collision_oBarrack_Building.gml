/// @description Insert description here
// You can write your code in this editor

speed = 0;

sprite_index = barbInfAttack;

if (target == noone) {
	target = other;
	if (target.x > x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;	
	}
}

if (target == other && combat == false) {
	combat = true;
	other.building_health -= clamp(troop_attack, 1, other.building_health);
	alarm[0]= room_speed;
	//show_debug_message("Army: " + string(other.troop_health));
}






