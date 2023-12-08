/// @description Insert description here
// You can write your code in this editor



if(other.wall_destroyed == false) {
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
		sprite_index = barbInfAttack;
		combat = true;
		other.wall_health -= clamp(troop_attack, 1, other.wall_health);

		alarm[0]= room_speed;
		//show_debug_message("Army: " + string(other.troop_health));
	}

} else {
	if (target == other) {
		target = noone;	
	}
}

