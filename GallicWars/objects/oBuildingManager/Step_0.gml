/// @description Insert description here
// You can write your code in this editor


// Process mouse pos
var _x_pos = mouse_x - camera_get_view_x(view_camera[0]);
var _y_pos = mouse_y - camera_get_view_y(view_camera[0]);

// Check x hovering
var _x_in = 0;
if(_x_pos > x_offset && _x_pos < x_offset + button_size) {
	_x_in = 1;	
}


// Check y hovering
if(_x_in) {
	
	if(_y_pos > y_offset && _y_pos < y_offset+button_size) {
		hovering = 1;
	}
	if(_y_pos > y_offset+button_size && _y_pos < y_offset+button_size*2) {
		hovering = 2;
	}
	if(_y_pos > y_offset+button_size && _y_pos < y_offset+button_size*2) {
		hovering = 3;
	}
	if(_y_pos > y_offset+button_size && _y_pos < y_offset+button_size*3) {
		hovering = 4;
	}
	if(_y_pos > y_offset+button_size && _y_pos < y_offset+button_size*4) {
		hovering = 0;
	}
} 

if(mouse_check_button_pressed(mb_left)) {
	selected = hovering;
}
