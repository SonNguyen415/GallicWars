/// @description Insert description here
// You can write your code in this editor

if (troop_health <= 0) {
	instance_destroy();
}

if (!place_meeting(x, y, oCity_Hall) && !place_meeting(x, y, oRome)  && !place_meeting(x, y, oBarb)) {
	if (oCity_Hall.x > x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;	
	}
	sprite_index = barbInfWalk;	
	move_towards_point(oCity_Hall.x, oCity_Hall.y, troop_speed);
}

if (target != noone && (!instance_exists(target) || !place_meeting(x, y, target))) {
	target = noone;
}
