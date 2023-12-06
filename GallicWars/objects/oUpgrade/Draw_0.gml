/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup2, 0, x, y);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var _curr_build = "";
var _curr_lvl = "";

switch(upgrade_type) {
	case oBuildingManager.farm:
		_curr_build = "Farm";
		_curr_lvl = "Level: " + string(build_lvl);

		break;
		
	case oBuildingManager.mill:
		_curr_build = "Mill";
		_curr_lvl = "Level: " + string(build_lvl);
	
		break;
		
	case oBuildingManager.quarry:
		_curr_build = "Stone";
		_curr_lvl = "Level: " + string(build_lvl);

		break;
			
	case oBuildingManager.mine:
		_curr_build = "Mine";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
	
		
	default:
		draw_text(_x_pos, _y_pos-30, "Error 2");
		break;
}
	
draw_text_ext_transformed(x, y-y_offset-25, _curr_build, 2, 300, 0.65, 0.65, 0);
draw_text_ext_transformed(x, y-y_offset-10, _curr_lvl, 2, 300, 0.55, 0.55, 0);
draw_text_ext_transformed(x-15, y-y_offset+15, "Upgrade: ", 2, 300, 0.5, 0.5, 0);


		
