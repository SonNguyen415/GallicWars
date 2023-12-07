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
		draw_text(x, y-y_offset, "Error 2");
		break;
}


draw_text_ext_transformed_color(x, y-y_offset-20, _curr_build, 5, 500,0.8,0.6,0, c_blue,c_blue,c_blue,c_blue, 1 );
draw_text_ext_transformed_color(x, y-y_offset, _curr_lvl, 5, 500,0.6,0.6,0, c_black,c_black,c_black,c_black, 1 );
draw_text_ext_transformed_color(x-15, y-y_offset+20, "Upgrade: ",5, 500,0.6,0.6,0, c_black,c_black,c_black,c_black, 1 );


var _curr_cost = build_lvl*global.upgrade_cost+global.build_cost;
if(build_lvl < 4 && 
global.resources[global.wood] >= _curr_cost && global.resources[global.gold] >= _curr_cost) {
	draw_sprite(checkbutton, 0, x+20, y-y_offset+25);
} else {
	draw_sprite(checkbutton, 1, x+20, y-y_offset+25);
}

