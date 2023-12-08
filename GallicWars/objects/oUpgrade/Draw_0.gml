/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup2, 0, x, y);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var _curr_build = "";
var _curr_lvl = "";

// 
switch(upgrade_type) {
	case FARM:
		_curr_build = "Farm";
		_curr_lvl = "Level: " + string(build_lvl);

		break;
		
	case MILL:
		_curr_build = "Mill";
		_curr_lvl = "Level: " + string(build_lvl);
	
		break;
		
	case QUARRY:
		_curr_build = "Stone";
		_curr_lvl = "Level: " + string(build_lvl);

		break;
			
	case MINE:
		_curr_build = "Mine";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
		
	case BARRACK:
		_curr_build = "Barrack";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
	
	case RANGE:
		_curr_build = "Skirmish Range";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
	
	case STABLE:
		_curr_build = "Stable";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
		
	case HOUSE:
		_curr_build = "House";
		_curr_lvl = "Level: " + string(build_lvl);
		break;
		
		
	default:
		draw_text(x, y-y_offset, "Error 2");
		break;
}



// Barracks have 2 buttons - upgrade and recruit
if(upgrade_type == BARRACK || upgrade_type == RANGE || upgrade_type == STABLE) {
	draw_text_ext_transformed_color(x, y-y_offset-30, _curr_build, 5, 500,0.6,0.6,0, c_blue,c_blue,c_blue,c_blue, 1 );
	draw_text_ext_transformed_color(x, y-y_offset-15, _curr_lvl, 5, 500,0.5,0.5,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(x-15, y-y_offset+5, "Upgrade:", 5, 500,0.5,0.5,0, c_black,c_black,c_black,c_black, 1 );
		
	// Upgrade unit
	var _curr_cost = build_lvl*BARRACK_UPGRADE_COST + BUILD_COST;
	if(build_lvl < 4 && 
	global.resources[WOOD] >= _curr_cost && global.resources[GOLD] >= _curr_cost) {
		draw_sprite(checkbutton, 0, x+20, y-y_offset+10);
	} else {
		draw_sprite(checkbutton, 1, x+20, y-y_offset+10);
	}
	
	// Recruit unit
	draw_text_ext_transformed_color(x-15, y-y_offset+30, "Recruit:", 5, 500,0.5,0.5,0, c_black,c_black,c_black,c_black, 1 );
	
	if(upgrade_type == STABLE) {
		
		if(global.resources[GOLD] >= CAV_RECRUIT_COST*build_lvl && global.resources[METAL] >= RECRUIT_COST*build_lvl) {
			draw_sprite(checkbutton, 0, x+20, y-y_offset+35);
		}else {
			draw_sprite(checkbutton, 1, x+20, y-y_offset+35);
		}
	
	} else {
			if(global.resources[GOLD] >= RECRUIT_COST*build_lvl && global.resources[METAL] >= RECRUIT_COST*build_lvl) {
				draw_sprite(checkbutton, 0, x+20, y-y_offset+35);
			}	else {
				draw_sprite(checkbutton, 1, x+20, y-y_offset+35);
			}	
		}
	
	

} else { // Other buildings can only upgrade
	draw_text_ext_transformed_color(x, y-y_offset-20, _curr_build, 5, 500,0.8,0.6,0, c_blue,c_blue,c_blue,c_blue, 1 );
	draw_text_ext_transformed_color(x, y-y_offset, _curr_lvl, 5, 500,0.6,0.6,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(x-15, y-y_offset+20, "Upgrade: ",5, 500,0.6,0.6,0, c_black,c_black,c_black,c_black, 1 );
	
	var _curr_cost = build_lvl*RES_UPGRADE_COST + BUILD_COST;
	if(build_lvl < 4 && 
	global.resources[WOOD] >= _curr_cost && global.resources[GOLD] >= _curr_cost) {
		draw_sprite(checkbutton, 0, x+20, y-y_offset+25);
	} else {
		draw_sprite(checkbutton, 1, x+20, y-y_offset+25);
	}

}


