/// @description Insert description here
// You can write your code in this editor

/*
show_debug_message("mouse_x: " + string(mouse_x) + " | mouse_y: " + string(mouse_y));
show_debug_message("X: " + string(x) + " | Y: " + string(y));
show_debug_message("----------------------------------------------------");
*/

var _curr_cost = build_lvl*UPGRADE_COST + BUILD_COST;


// Military building can upgrade and recruit
if(upgrade_type == BARRACK || upgrade_type == RANGE || upgrade_type == STABLE) {
	if(build_lvl < 4 && mouse_check_button_pressed(mb_left) &&
global.resources[WOOD] >= _curr_cost && global.resources[GOLD] >= _curr_cost) {
		// Upgrade building
		if(mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
		mouse_y > y-65 && mouse_y < y-65+upgrade_btn_sz) {
			build_lvl++;
			upgrade_building.build_lvl++;
			upgrade_building.recent_upgraded = true;
			global.resources[WOOD] -= _curr_cost;
			global.resources[GOLD] -=_curr_cost;
		} 
	}
	
	if(mouse_check_button_pressed(mb_left) &&
		mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
		mouse_y > y-40 && mouse_y < y-40+upgrade_btn_sz ) {
		upgrade_building.recruiting = true;
	}
		
} else { // Otherwise you can only upgrade these
	if(build_lvl < 4 && mouse_check_button_pressed(mb_left) &&
global.resources[WOOD] >= _curr_cost && global.resources[GOLD] >= _curr_cost) {
		// Upgrade building
		if(mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
		mouse_y > y-50 && mouse_y < y-50+upgrade_btn_sz) {
			build_lvl++;
			upgrade_building.build_lvl++;
			upgrade_building.recent_upgraded = true;
			global.resources[WOOD] -= _curr_cost;
			global.resources[GOLD] -=_curr_cost;
		}
	}

}


image_alpha = 0.9;