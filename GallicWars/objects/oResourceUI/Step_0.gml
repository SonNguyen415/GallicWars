/// @description Check if any hovering for popup
// You can write your code in this editor


// Process mouse pos
var _x_pos = (mouse_x - camera_get_view_x(view_camera[0]))/oCamera.zoom_f;
var _y_pos = (mouse_y - camera_get_view_y(view_camera[0]))/oCamera.zoom_f;


/*
show_debug_message("Pos: " + string(_x_pos));
show_debug_message("Min: " + string(x_offset) + " | Max: " + string(x_offset+card_sz));
show_debug_message("Min: " + string(x_offset+(card_gap+card_sz)) + " | Max: " + string(x_offset+card_gap+card_sz*2));
show_debug_message("Min: " + string(x_offset+(card_gap+card_sz)*2) + " | Max: " + string(x_offset+card_gap*2+card_sz*3));
show_debug_message("Min: " + string(x_offset+(card_gap+card_sz)*3) + " | Max: " + string(x_offset+card_gap*3+card_sz*4));
show_debug_message("Min: " + string(x_offset+(card_gap+card_sz)*4 ) + " | Max: " + string(x_offset+card_gap*4+card_sz*5));

show_debug_message("--------------------------------------------------------------------------------------");
*/

// Check if you're hovering
if(_y_pos > y_offset && _y_pos < y_offset+30) {
	if(_x_pos > x_offset && _x_pos <x_offset+card_sz) {
		hovering = 0;
	} else if(_x_pos > x_offset+(card_gap+card_sz) && _x_pos < x_offset+card_gap+card_sz*2) {
		hovering = 1;
	} else if(_x_pos > x_offset+(card_gap+card_sz)*2 && _x_pos < x_offset+card_gap*2+card_sz*3) {
		hovering = 2;
	} else if(_x_pos > x_offset+(card_gap+card_sz)*3 && _x_pos < x_offset+card_gap*3+card_sz*4) {
		hovering = 3;
	} else if(_x_pos > x_offset+(card_gap+card_sz)*4 && _x_pos < x_offset+card_gap*4+card_sz*5) {
		hovering = 4;
	} else {
		hovering = -1;
	}
} else {
	hovering = -1;
}




// Popup > 0
if(has_popup > 0 && hovering < 0) {
	has_popup = -1;
	instance_destroy(oPopup);
}


// If hovering AND doesn't have popup, make popup
if(hovering >= 0 && has_popup < 0) {
	instance_create_layer(mouse_x, mouse_y, "Popup_Layer", oPopup);
	oPopup.popup_type = POPUP_MONEY;
	oPopup.popup_subtype = hovering;
	has_popup = 1;
} 

if(global.resources[FOOD] <= 0 || global.resources[GOLD] <= 0) {
	global.curr_game = LOSE;	
}