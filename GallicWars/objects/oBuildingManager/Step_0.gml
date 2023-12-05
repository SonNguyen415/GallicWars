/// @description Update the current state
// You can write your code in this editor


// Process mouse pos
var _x_pos = mouse_x - camera_get_view_x(view_camera[0]);
var _y_pos = mouse_y - camera_get_view_y(view_camera[0]);

// Check if you're hovering
if(_x_pos > x_offset && _x_pos < b_size + x_offset) {
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

/*
show_debug_message("Min: " + string(x_offset) + " | Max: " + string(b_size + x_offset));
show_debug_message("--------------------------------------------------------------------------------------------");
show_debug_message("X: " + string(_x_pos) + " | Y: " + string(_y_pos));
show_debug_message("Min: " + string(b_y_offset) + " | Max: " + string(b_y_offset+b_size) );
show_debug_message("Min: " + string(b_y_offset+b_top_gap) + " | Max: " + string(b_y_offset+b_top_gap+b_size) );
show_debug_message("Min: " + string(b_y_offset+b_top_gap*2) + " | Max: " + string( b_y_offset+b_top_gap*2+b_size) );
show_debug_message("Min: " + string(b_y_offset+b_top_gap*3) + " | Max: " + string( b_y_offset+b_top_gap*3+b_size) );
show_debug_message("Min: " + string(b_y_offset+b_top_gap*4) + " | Max: " + string( b_y_offset+b_top_gap*4+b_size) );
show_debug_message("--------------------------------------------------------------------------------------------");
*/

if(mouse_check_button_pressed(mb_left) && hovering >= 0 && !building) {
	selected = hovering;
}


// Switch state

// Go back if selected = 0. Popping previous states
if(selected == 0 && state != menu) {
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
			if(selected == 1) {
				building = farm;
			} else if(selected == 2) {
				building = mill;
			} else if(selected == 3) {
				building = quarry;
			} else if(selected == 4) {
				building = mine;
			}
		
			instance_create_layer(mouse_x, mouse_y, "Build", oC_Building);
			
			break;
		
		default:
			break;
	}
	
}

selected = -1;

