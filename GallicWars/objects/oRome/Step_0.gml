/// @description Insert description here
// You can write your code in this editor

if (troop_health <= 0) {
	if (troop_type == "Infantry") {
		sprite_index = romeInfDeath;
	} else if (troop_type == "Archer") {
		sprite_index = romeArchDeath;
	} else if (troop_type == "Cavalry") {
		sprite_index = romeCavDeath;
	}
	image_speed = .4;
	dead = true;
}


if (!path_exists(path_index) && !place_meeting(x,y,oBarb) && dead == false) {
	if (troop_type == "Infantry") {
		sprite_index = romeInfIdle;
	} else if (troop_type == "Archer") {
		sprite_index = romeArchIdle;
	} else if (troop_type == "Cavalry") {
		sprite_index = romeCavIdle;
	}
}

if (target != noone	&& (!instance_exists(target) || !place_meeting(x, y, target))) {
		target = noone;
}

