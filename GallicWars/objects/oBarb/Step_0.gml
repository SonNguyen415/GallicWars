/// @description Insert description here
// You can write your code in this editor

if (troop_health <= 0) {
	if (troop_type == "Infantry") {
		sprite_index = barbInfDeath;
	} else if (troop_type == "Archer") {
		sprite_index = barbArchDeath;
	} else if (troop_type == "Cavalry") {
		sprite_index = barbCavDeath;
	}
	image_speed = .5;
	dead = true;
}

if (target == noone  && !place_meeting(x, y, oBarb) && dead == false) {
	if (oCity_Hall.x > x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;	
	}
	if (troop_type == "Infantry") {
		sprite_index = barbInfWalk;
	} else if (troop_type == "Archer") {
		sprite_index = barbArchWalk;
	} else if (troop_type == "Cavalry") {
		sprite_index = barbCavWalk;
	}
	move_towards_point(oCity_Hall.x, oCity_Hall.y, troop_speed);
}

if (target != noone && (!instance_exists(target) || !place_meeting(x, y, target))) {
	target = noone;
}
