/// @description Insert description here
// You can write your code in this editor

if (selected == true) {
	
	path = path_add();

	if (mp_grid_path(oGridManager.grid, path, x, y, mouse_x, mouse_y, true)) {
		if (mouse_x > x) {
			image_xscale = -1;
		} else {
			image_xscale = 1;	
		}
		sprite_index = romeInfWalk;
		
		path_set_kind(path, 1);
		path_start(path, troop_speed, path_action_stop, true);
	}
}


