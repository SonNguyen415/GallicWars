	/// @description Insert description here
// You can write your code in this editor


draw_sprite(BuildingUI, 0, 0, 200);



// Execute state
switch(state) {
	case MENU:
		for(var _i=0; _i<3; _i++) {
			draw_sprite(MenuButtons, _i, x_offset, y_offset+_i*button_offset);
		}
		break;
		
	case CAMPS:
		for(var _i=0; _i<3; _i++) {
			draw_sprite(OffenseButtons, _i, x_offset, y_offset+_i*button_offset);
		}
		draw_sprite(BackButton, 0, x_offset, y_offset+4*button_offset);
		break;
	
	case RESOURCES:
		for(var _i=0; _i<4; _i++) {
			draw_sprite(ResourceButtons, _i, x_offset, y_offset+_i*button_offset);
		}
		draw_sprite(BackButton, 0, x_offset, y_offset+4*button_offset);
		break;
		
	case UTIL:
		for(var _i=0; _i<1; _i++) {
			draw_sprite(UtilityButtons, _i, x_offset, y_offset+_i*button_offset);
		}
		draw_sprite(BackButton, 0, x_offset, y_offset+4*button_offset);
		break;
	
	default:
	
		break;
}



