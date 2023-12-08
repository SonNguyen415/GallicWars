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

// Destroy popup if we're not hovering and we made the popup
if(has_popup > 0 && hovering < 0) {
	has_popup = -1;
	instance_destroy(oPopup);
}


// Show building cost 
if(hovering > 0 && has_popup < 1) {
	instance_create_layer(mouse_x, mouse_y, "Popup_Layer", oPopup);
	has_popup = 1;
	oPopup.popup_type = POPUP_CONSTRUCT;
				
	switch(state) {
		
		case CAMPS:
			if(hovering == 1) { // Build Barrack
				oPopup.popup_subtype = BARRACK;
			} else if(hovering == 2) { // Build archer range
				oPopup.popup_subtype = RANGE;
			} else if(hovering == 3) {
				oPopup.popup_subtype = STABLE;
			} else {
				instance_destroy(oPopup);
			}
			break;
		
		case RESOURCES:
	
			if(hovering == 1) {
				oPopup.popup_subtype = FARM;
			} else if(hovering == 2) {
				oPopup.popup_subtype = MILL;
			} else if(hovering == 3) {
				oPopup.popup_subtype = QUARRY;
			} else if(hovering == 4) {
				oPopup.popup_subtype = MINE;
			} else {
				instance_destroy(oPopup);
			}
			break;
		
		
		case UTIL:
			if(hovering == 1) {
				oPopup.popup_subtype = HOUSE;
			} else {
				instance_destroy(oPopup);
			}
			break;
		
		default:
			instance_destroy(oPopup);
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
if(selected == 0 && state != MENU) {
	state = ds_stack_pop(previous_state);
}


// Otherwise, buttons are different for each state
if(selected > 0) {
	// show_debug_message("Selected: " + string(selected));
	switch(state) {
		case MENU:
			if(selected == 1){
				state = CAMPS;
			}
			
			if(selected == 2){
				state = RESOURCES;
			}
			
			if(selected == 3){
				state = UTIL;
			}
			
			ds_stack_push(previous_state, MENU);
			break;
		
		case CAMPS:
			if(global.resources[GOLD] >= BUILD_COST && 
				global.resources[WOOD] >= BUILD_COST)  {
				if(selected == 1) { // Build barrack
					building = BARRACK;
				} else if(selected == 2) { // Build range
					building = RANGE;
				} else if(selected == 3) {
					building = STABLE;
				}
				instance_create_layer(mouse_x, mouse_y, "Build", oC_Building);
			}
			
			break;
		
		case RESOURCES:
			if(global.resources[GOLD] >= BUILD_COST && 
			global.resources[WOOD] >= BUILD_COST)  {
				if(selected == 1) { // Build Farm
					building = FARM;
				} else if(selected == 2) { // Build mill
					building = MILL;
				} else if(selected == 3) { // Build quarry
					building = QUARRY;
				} else if(selected == 4) { // Build mine
					building = MINE;
				}
				instance_create_layer(mouse_x, mouse_y, "Build", oC_Building);
			}

			
			break;
			
		case UTIL:
			if(global.resources[GOLD] >= BUILD_COST && 
			global.resources[WOOD] >= BUILD_COST)  {
				if(selected == 1) { // Build House
					building = HOUSE;
				} 
				instance_create_layer(mouse_x, mouse_y, "Build", oC_Building);
			}
			
			break;
		
		default:
			break;
	}
	
}

selected = -1;

