/// @description Insert description here
// You can write your code in this editor

if (troop_health <= 0) {
	instance_destroy();
}

if (!place_meeting(x, y, oCity_Hall) && !place_meeting(x, y, oRome_Infantry)  && !place_meeting(x, y, oBarb_Infantry)) {
	sprite_index = barbInfWalk;	
		
	path = path_add();

	if (mp_grid_path(grid, path, x, y, oCity_Hall.x, oCity_Hall.y, true)) {
		if (oCity_Hall > x) {
			image_xscale = -1;
		} else {
			image_xscale = 1;	
		}
		
		path_set_kind(path, 1);
		path_start(path, troop_speed, path_action_stop, true);
	}
}




