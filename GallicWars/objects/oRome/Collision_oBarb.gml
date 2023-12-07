/// @description Insert description here
// You can write your code in this editor

path_end();

sprite_index = romeInfAttack;

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
	other.troop_health -= clamp(troop_attack - other.troop_defense, 1, other.troop_health);
	alarm[0]= room_speed;
	//show_debug_message("Enemy: " + string(other.troop_health));
}

