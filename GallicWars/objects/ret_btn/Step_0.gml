/// @description Insert description here
// You can write your code in this editor

if(global.curr_game == WIN || global.curr_game == LOSE) {
	// Process mouse pos
	var _x_pos = (mouse_x - camera_get_view_x(view_camera[0]))/oCamera.zoom_f;
	var _y_pos = (mouse_y - camera_get_view_y(view_camera[0]))/oCamera.zoom_f;



	if(_x_pos >= 458 && _x_pos <= 498 && _y_pos >= 154 && _y_pos <= 194) {
		if(mouse_check_button_pressed(mb_left)) {
			room_goto(Title);
		}
	}
} 
