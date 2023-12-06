/// @description Insert description here
// You can write your code in this editor

path_end();

if (target == noone) {
	target = other;
} else {
	if (!instance_exists(target) || !place_meeting(x, y, target)) {
		target = noone;
	}
}

if (target == other && combat == false) {
	combat = true;
	other.troop_health -= clamp(troop_attack - other.troop_defense, 1, other.troop_health);
	alarm[0]= room_speed;
	show_debug_message("Army: " + string(other.troop_health));
}

