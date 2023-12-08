/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor



if(wall_destroyed == false && wall_health <= 0) {
	wall_destroyed = true;
}

if(wall_destroyed) {
	layer = layer_get_id("Plots");
	mp_grid_clear_cell(oGridManager.grid, x/32, y/32);
	image_index = 12;
	
}


// Check for button clicked to view wall data and make repair

// Check for hovering. Conditions are different for left and right wall
if(x > room_width/2) {
	if(mouse_x >= x && mouse_x <= x+32+6 && mouse_y >= y && mouse_y <= y + 32) {
		hovering = true;
	} else {
		hovering = false;
	}
} else {
	if(mouse_x >= x-6 && mouse_x <= x+32 && mouse_y >= y && mouse_y <= y + 32) {
		hovering = true;
	} else {
		hovering = false;
	}
}


// Check for hovering over popup
if(mouse_x >= x && mouse_x <= x+64 && mouse_y >= y-75 && mouse_y <= y-10 && check_wall > 0) {
	popup_hovering = true;
	show_debug_message("MinX: " + string(x+26) + " | MaxX: " + string(x+46));
	show_debug_message("MinY: " + string(y-20) + " | MaxY: " + string(y));
	show_debug_message("mouse_x: " + string(mouse_x) + " | mouse_y: " + string(mouse_y));
	show_debug_message("------------------------------------");

} else {
	popup_hovering = false;
}


// On click, either we're creating popup, or if created, repair, or if not hovering, then remove
if(mouse_check_button_pressed(mb_left)) {	
	if(hovering && check_wall < 0 ) { 
		// If no popup yet, create popup
		check_wall = instance_create_layer(x+16, y+16, "Popup_Layer", oWallInfo);
		check_wall.wall_id = id;
		check_wall.wall_health = wall_health;
		check_wall.wall_destroyed = wall_destroyed;
	} else if(popup_hovering && wall_destroyed && check_wall > 0 &&
		mouse_x >= x+26 && mouse_x <= x+46 && 
		mouse_y >= y-52 && mouse_y <= y-32) {
			
		// Check if we clicked the repair button
		wall_destroyed = false;
		wall_health = max_health;
		mp_grid_add_cell(oGridManager.grid, x/32, y/32);
		image_index = old_idx;
		instance_destroy(oWallInfo);
		
	} else if(!popup_hovering && check_wall > 0) { 
		// Otherwise if we click and not hovering and there's a popup, delete
		instance_destroy(oWallInfo);
		check_wall = -1;
	}
	
}

// If already has popup and info changed, destroy current so we can update HP
if(check_wall > 0 && info_changed) { 
	instance_destroy(oWallInfo);
	show_debug_message("Updating HP");
	check_wall = instance_create_layer(x+16, y+16, "Popup_Layer", oWallInfo);
	check_wall.wall_id = id;
	check_wall.wall_health = wall_health;
	check_wall.wall_destroyed = wall_destroyed;
	info_changed = false;
			
} 



// Also cancel on right click
if(check_wall > 0 && mouse_check_button_pressed(mb_right)) {
	instance_destroy(check_wall);
	check_wall = -1;
}