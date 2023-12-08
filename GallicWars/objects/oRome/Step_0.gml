/// @description Insert description here
// You can write your code in this editor

if (troop_health <= 0) {
	sprite_index = romeInfDeath;
	image_speed = .4;
	dead = true;
}


if (!path_exists(path_index) && !place_meeting(x,y,oBarb) && dead == false) {
	sprite_index = romeInfIdle;
}

if (target != noone	&& (!instance_exists(target) || !place_meeting(x, y, target))) {
		target = noone;
}

