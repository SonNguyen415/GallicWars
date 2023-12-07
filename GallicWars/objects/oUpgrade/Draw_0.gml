/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup2, 0, x, y);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var _curr_build = "";
var _curr_lvl = "";

// 
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
		
	case oBuildingManager.barrack:
		_curr_build = "Barrack";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
	
	case oBuildingManager.range:
		_curr_build = "Skirmish Range";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
		
	case oBuildingManager.house:
		_curr_build = "House";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
		
		
	default:
		draw_text(x, y-y_offset, "Error 2");
		break;
}



// Barracks have 2 buttons - upgrade and recruit
if(upgrade_type == oBuildingManager.barrack || upgrade_type == oBuildingManager.range) {
	draw_text_ext_transformed_color(x, y-y_offset-30, _curr_build, 5, 500,0.6,0.6,0, c_blue,c_blue,c_blue,c_blue, 1 );
	draw_text_ext_transformed_color(x, y-y_offset-15, _curr_lvl, 5, 500,0.5,0.5,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(x-15, y-y_offset+5, "Upgrade:", 5, 500,0.5,0.5,0, c_black,c_black,c_black,c_black, 1 );
		
	// Upgrade unit
	var _curr_cost = build_lvl*global.upgrade_cost+global.build_cost;
	if(build_lvl < 4 && 
	global.resources[global.wood] >= _curr_cost && global.resources[global.gold] >= _curr_cost) {
		draw_sprite(checkbutton, 0, x+20, y-y_offset+10);
	} else {
		draw_sprite(checkbutton, 1, x+20, y-y_offset+10);
	}
	
	// Recruit unit
	draw_text_ext_transformed_color(x-15, y-y_offset+30, "Recruit:", 5, 500,0.5,0.5,0, c_black,c_black,c_black,c_black, 1 );
	if(global.resources[global.gold] >= global.recruit_cost && global.resources[global.metal] >= global.recruit_cost) {
		draw_sprite(checkbutton, 0, x+20, y-y_offset+35);
	}else {
		draw_sprite(checkbutton, 1, x+20, y-y_offset+35);
	}
	
	

} else { // Other buildings can only upgrade
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

}


