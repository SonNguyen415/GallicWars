/// @description Update the current state
// You can write your code in this editor



// Process mouse pos
var _x_pos = (mouse_x - camera_get_view_x(view_camera[0]))/oCamera.zoom_f;
var _y_pos = (mouse_y - camera_get_view_y(view_camera[0]))/oCamera.zoom_f;

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


if(has_popup > 0 && hovering < 0) {
	has_popup = -1;
	instance_destroy(oPopup);
	show_debug_message("--------------------------");
}

if(hovering > 0) {
	switch(state) {
		
		case barracks:
			break;
		
		case resources:
		
			// Show building cost. All resources building cost the same
			if(has_popup < 1) {
				
				instance_create_layer(mouse_x, mouse_y, "Popup_Layer", oPopup);
				has_popup = 1;
				oPopup.popup_type = global.popup_construct;
				oPopup.popup_subtype = resources;
			}
		
			
			break;
		
		default:
			break;
	}	
}

/*
show_debug_message("Min: " + string(x_offset) + " | Max: " + string(b_size + x_offset));
show_debug_message("--------------------------------------------------------------------------------------------");
show_debug_message("X: " + string(_x_pos/oCamera.zoom_f) + " | Y: " + string(_y_pos/oCamera.zoom_f));
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
			
			if(selected == 1) { // Build Farm
				building = farm;
			} else if(selected == 2) { // Build mill
				building = mill;
			} else if(selected == 3) { // Build quarry
				building = quarry;
			} else if(selected == 4) { // Build mine
				building = mine;
			}
		
			instance_create_layer(mouse_x, mouse_y, "Build", oC_Building);
			
			break;
		
		default:
			break;
	}
	
}

selected = -1;

