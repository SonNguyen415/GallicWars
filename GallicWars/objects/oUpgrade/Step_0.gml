/// @description Insert description here
// You can write your code in this editor

/*
show_debug_message("mouse_x: " + string(mouse_x) + " | mouse_y: " + string(mouse_y));
show_debug_message("X: " + string(x) + " | Y: " + string(y));
show_debug_message("----------------------------------------------------");
*/

var _curr_cost = build_lvl*global.upgrade_cost+global.build_cost;

if(build_lvl < 4 && mouse_check_button_pressed(mb_left) &&
global.resources[global.wood] >= _curr_cost && global.resources[global.gold] >= _curr_cost) {
	
	if(mouse_x > x+10 && mouse_x < x+10+upgrade_btn_sz && 
	mouse_y > y-50 && mouse_y < y-50+upgrade_btn_sz) {
		build_lvl++;
		upgrade_building.build_lvl++;
		upgrade_building.recent_upgraded = true;
		global.resources[global.wood] -= _curr_cost;
		global.resources[global.gold] -=_curr_cost;
		
	}

}


image_alpha = 0.9;