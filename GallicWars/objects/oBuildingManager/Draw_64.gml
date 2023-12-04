/// @description Insert description here
// You can write your code in this editor


draw_sprite(BuildingUI, 0, 0, 200);

// Execute state


switch(state) {
	case menu:
		for(var _i=0; _i<3; _i++) {
			draw_sprite(MenuButtons, _i, x_offset, y_offset+_i*button_offset);
		}
		
		break;
		
	case barracks:
		draw_sprite(BackButton, 0, x_offset, y_offset+4*button_offset);
		break;
	case resources:
		for(var _i=0; _i<4; _i++) {
			draw_sprite(ResourceButtons, _i, x_offset, y_offset+_i*button_offset);
		}
		draw_sprite(BackButton, 0, x_offset, y_offset+4*button_offset);
		break;
	
	default:
	
		break;
}





// Switch state

// Go back if selected = 0. Popping previous states
if(selected == 0) {
	state = ds_stack_pop(previous_state);
}


// Otherwise, buttons are different for each state
if(selected > 0) {

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
			break;
		
		default:
			break;
	}
}

selected = -1;

