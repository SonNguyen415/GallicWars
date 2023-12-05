	/// @description Insert description here
// You can write your code in this editor


draw_sprite(BuildingUI, 0, 0, 200);


var _draw_state = state;


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
	case util:

		draw_sprite(BackButton, 0, x_offset, y_offset+4*button_offset);
		break;
	
	default:
	
		break;
}



