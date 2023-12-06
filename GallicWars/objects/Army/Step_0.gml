/// @description Insert description here
// You can write your code in this editor


if (troop_health <= 0) {
	sprite_index = soldierDeath;
	instance_destroy();
}


if (!path_exists(path_index) && !place_meeting(x,y,Enemy)) {
	sprite_index = soldierIdle;
}



