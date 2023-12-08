/// @description Insert description here
// You can write your code in this editor

if(wall_destroyed == false && wall_health <= 0) {
	wall_destroyed = true;
}

if(wall_destroyed) {
	visible = false;
	mp_grid_clear_cell(oGridManager.grid, x/32, y/32);
	image_index = 12;
	
	
	
} else {
	mp_grid_add_cell(oGridManager.grid, x/32, y/32);
	image_index = old_idx;
}


/*

// Check for button clicked to view wall data and make repair

// Check for hovering

if(instance_position(mouse_x, mouse_y, self.id) != noone) {
	hovering = true;
} else {
	hovering = false;
}





// If hovering, then on click we invoke repair
if(mouse_check_button_pressed(mb_left)) {
	
	if(hovering && repairing < 0) {
		repairing = instance_create_layer(x, y, "Popup_Layer", oUpgrade);
		repairing.upgrade_type = WALL;
		repairing.upgrade_building = id;
	} else if(upgrading > 0 &&
		(mouse_x < x-96/2 ||  mouse_x > x+96/2 ||
				mouse_y < y-96 || mouse_y > y)) {
		instance_destroy(repairing);
		repairing = -1;
	}
}


// Also cancel on right click
if(repairing > 0 && mouse_check_button_pressed(mb_right)) {
	instance_destroy(repairing);
	repairing = -1;
}*/