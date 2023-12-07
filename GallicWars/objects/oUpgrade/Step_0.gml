/// @description Insert description here
// You can write your code in this editor

/*
show_debug_message("mouse_x: " + string(mouse_x) + " | mouse_y: " + string(mouse_y));
show_debug_message("X: " + string(x) + " | Y: " + string(y));
show_debug_message("----------------------------------------------------");
*/

var _curr_cost = build_lvl*global.upgrade_cost+global.build_cost;


// Military building can upgrade and recruit
if(upgrade_type == oBuildingManager.barrack || upgrade_type == oBuildingManager.range) {
	if(build_lvl < 4 && mouse_check_button_pressed(mb_left) &&
global.resources[global.wood] >= _curr_cost && global.resources[global.gold] >= _curr_cost) {
		// Upgrade building
		if(mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
		mouse_y > y-65 && mouse_y < y-65+upgrade_btn_sz) {
			build_lvl++;
			upgrade_building.build_lvl++;
			upgrade_building.recent_upgraded = true;
			global.resources[global.wood] -= _curr_cost;
			global.resources[global.gold] -=_curr_cost;
		} 
	}
	
	if(mouse_check_button_pressed(mb_left) &&
		mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
		mouse_y > y-40 && mouse_y < y-40+upgrade_btn_sz ) {
		// Recruit soldier (need to check and look for blank spot	
		show_message("Recruiting");
	}
		
} else { // Otherwise you can only upgrade these
	if(build_lvl < 4 && mouse_check_button_pressed(mb_left) &&
global.resources[global.wood] >= _curr_cost && global.resources[global.gold] >= _curr_cost) {
		// Upgrade building
		if(mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
		mouse_y > y-50 && mouse_y < y-50+upgrade_btn_sz) {
			build_lvl++;
			upgrade_building.build_lvl++;
			upgrade_building.recent_upgraded = true;
			global.resources[global.wood] -= _curr_cost;
			global.resources[global.gold] -=_curr_cost;
		}
	}

}


// Recruit if is barrack
/*

if(global.resources[global.gold] >= global.recruit_cost && global.resources[global.metal] >= global.recruit_cost) {
	global.resources[global.gold] -= global.recruit_cost;
	global.resources[global.metal] -= global.recruit_cost;
		
	// Recruit soldier (need to check and look for blank spot
}
*/


image_alpha = 0.9;