/// @description Update the current state
// You can write your code in this editor


// Process mouse pos
var _x_pos = mouse_x - camera_get_view_x(view_camera[0]);
var _y_pos = mouse_y - camera_get_view_y(view_camera[0]);

// Check if you're hovering
if(_x_pos > x_offset && _x_pos < button_size) {
	if(_y_pos > b_y_offset && _y_pos <b_y_offset+b_size) {
		hovering = 1;
	} else if(_y_pos > b_y_offset+b_top_gap && _y_pos < b_y_offset+b_top_gap+b_size) {
		hovering = 2;
	} else if(_y_pos > b_y_offset+b_top_gap*2 && _y_pos < b_y_offset+b_top_gap*2+b_size) {
		hovering = 3;
	} else if(_y_pos > b_y_offset+b_top_gap*3 && _y_pos < b_y_offset+b_top_gap*3+b_size) {
		hovering = 4;
	} else if(_y_pos > b_y_offset+b_top_gap*4 && _y_pos < b_y_offset+b_top_gap*4+b_size) {
		hovering = 0;
	} else {
		hovering = -1;
	}
} else {
	
	hovering = -1;
}


if(mouse_check_button_pressed(mb_left)) {
	show_debug_message("Mouse Pressed. Hovering: " + string(hovering) + " | Pos: " + string(_y_pos));
	
}



if(mouse_check_button_pressed(mb_left) && hovering >= 0) {
	selected = hovering;
}


// Switch state

// Go back if selected = 0. Popping previous states
if(selected == 0) {
	state = ds_stack_pop(previous_state);
}


// Otherwise, buttons are different for each state
if(selected > 0) {
	// show_debug_message("Selected: " + string(selected));
	switch(state) {
		case menu:
			if(selected == 1){
				state = barracks;
				
			}
			if(selected == 2){
				
				state = resources;
			}
			if(selected == 3){
				state = util;
			}
			ds_stack_push(previous_state, menu);
			break;
		
		case barracks:
			break;
		
		case resources:
			// Build Farm
			ds_stack_push(previous_state, resources);
			break;
		
		default:
			break;
	}
}

selected = -1;

