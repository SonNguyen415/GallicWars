/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup, 0, _x_pos, _y_pos);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if(popup_type == global.popup_construct) {
	
	switch(build_type) {
		case oBuildingManager.resources:
				// show_debug_message("100 Gold");
			var _gold_cost = string(global.build_cost) + " Gold";
			var _wood_cost = string(global.build_cost) + " Gold";
			draw_text(_x_pos+72, _y_pos - 20, _gold_cost);
			draw_text(_x_pos+72, _y_pos + 20, _wood_cost);
			break;
	
		
		default:
			draw_text(x, y, "Yes");
			break;
	}

}
