/// @description Insert description here
// You can write your code in this editor

if (selected == true && dead == false) {
	
	path = path_add();

	if (mp_grid_path(oGridManager.grid, path, x, y, mouse_x, mouse_y, true)) {
		if (mouse_x > x) {
			image_xscale = -1;
		} else {
			image_xscale = 1;	
		}
		if (troop_type == "Infantry") {
		sprite_index = romeInfWalk;
	} else if (troop_type == "Archer") {
		sprite_index = romeArchWalk;
	} else if (troop_type == "Cavalry") {
		sprite_index = romeCavWalk;
	}
		
		path_set_kind(path, 1);
		path_start(path, troop_speed, path_action_stop, true);
	}
}


