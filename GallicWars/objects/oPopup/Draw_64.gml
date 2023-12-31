/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup, 0, _x_pos, _y_pos);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);





if(popup_type == POPUP_CONSTRUCT) {
	
	var _gold_cost = string(BUILD_COST) + " Gold";
	var _wood_cost = string(BUILD_COST) + " Wood";
	var _build_result = "Result: " 
	
	
	var _c_cost = c_maroon;
	if(global.resources[GOLD] >= BUILD_COST && global.resources[WOOD] >= BUILD_COST) {
		_c_cost = c_green;
	}
	var _c_offset = 0;
	

	switch(popup_subtype) {
		case FARM:
			_build_result += "+" + string(PRODUCTIVITY) + " Food";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Farm",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 35, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			break;
			
		case MILL:
			_build_result += "+" + string(PRODUCTIVITY) + " Wood";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Mill",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 35, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			break;
			
		case QUARRY:
			_build_result += "+" + string(PRODUCTIVITY) + " Stone";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Quarry",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 35, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			break;
		
		case MINE:
			_build_result += "+" + string(PRODUCTIVITY) + " Metal";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Mine",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 35, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			break;
		
		case BARRACK:
	
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 55, "Barrack",5, 500,1.1,1.1,0, c_blue,c_blue,c_blue,c_blue, 1 );
			_c_offset = -10;
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 30, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 50, "Recruit Legions",5, 500, 0.8,0.8,0, c_black,c_black,c_black,c_black, 1 );
			break;
		
		case RANGE:
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 60, "Skirmisher",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 42, "Range",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			_c_offset = -5;
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 30, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 55, "Recruit Skirmishers",5, 500, 0.8,0.8,0, c_black,c_black,c_black,c_black, 1 );
			break;
		
		case STABLE:
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 60, "Stable",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			_c_offset = -5;
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 30, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 55, "Recruit Cavalry",5, 500, 0.8,0.8,0, c_black,c_black,c_black,c_black, 1 );
			break;
		
		case HOUSE:
			_build_result += "+" + string(PRODUCTIVITY) + " Gold";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "House",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 35, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
		
			break;
		
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 0");
			break;
	}
	
	
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+_c_offset - 10, _gold_cost,5, 500, 1,1,0, _c_cost,_c_cost,_c_cost,_c_cost, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+_c_offset + 10, _wood_cost,5, 500, 1,1,0, _c_cost,_c_cost,_c_cost,_c_cost, 1 );

			

}



if(popup_type == POPUP_MONEY) {
	var _money_type = "";
	
	var _income = "Income: ";
	var _expenses = "Expenses: ";
	var _balance = "Balance: ";
	
	var _c_balance = c_black;
	
	switch(popup_subtype) {
		case GOLD:
			_money_type = "Gold";
			_income += string(global.tax_income[GOLD]);
			_expenses += string(global.expenses[GOLD]);
			_balance += string(global.balance[GOLD]);
			if(global.balance[GOLD] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[GOLD] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case FOOD:
			_money_type = "Food";
			_income += string(global.tax_income[FOOD])
			_expenses += string(global.expenses[FOOD]);
			_balance += string(global.balance[FOOD]);
			if(global.balance[FOOD] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[FOOD] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case WOOD:
			_money_type = "Wood";
			_income += string(global.tax_income[WOOD]);
			_expenses += string(global.expenses[WOOD]);
			_balance += string(global.balance[WOOD]);
			if(global.balance[WOOD] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[WOOD] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case STONE:
			_money_type = "Stone";
			_income += string(global.tax_income[STONE]);
			_expenses += string(global.expenses[STONE]);
			_balance += string(global.balance[STONE]);
			if(global.balance[STONE] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[STONE] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case METAL:
			_money_type = "Metal";
			_income += string(global.tax_income[METAL]);
			_expenses += string(global.expenses[METAL]);
			_balance += string(global.balance[METAL]);
			if(global.balance[METAL] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[METAL] > 0) {
				_c_balance = c_green;
			}
			break;
			
		
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 1");
			break;
	}
	
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-50, _money_type, 5, 500, 1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-15, _income, 5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+15, _expenses, 5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+45, _balance, 5, 500, 1,1,0, _c_balance,_c_balance,_c_balance,_c_balance, 1);

}


if(popup_type == POPUP_UPGRADE && build_lvl > 0) {
	
	var _curr_build = "";
	var _curr_product = "";
	var _curr_health = "";

	var _upgrade0 = "Max Level";
	var	_upgrade1 = "";
	
	var _c_upgrade = c_silver;
	if(build_lvl < 4) {
		if(popup_subtype == BARRACK || popup_subtype == RANGE || popup_subtype == STABLE) {
				var _curr_up_cost = build_lvl*BARRACK_UPGRADE_COST+BUILD_COST;
		} else {
					
			var _curr_up_cost = build_lvl*RES_UPGRADE_COST+BUILD_COST;
			
		}
		_upgrade0 = string(_curr_up_cost) + " Gold";
		_upgrade1 = string(_curr_up_cost) + " Wood";
		if(global.resources[GOLD] >= _curr_up_cost && global.resources[WOOD] >=_curr_up_cost) {
			_c_upgrade = c_green;
		} else {
			_c_upgrade = c_maroon;
		}
	}
	
	var _c_recruit = c_maroon;
	if(global.resources[GOLD] >= RECRUIT_COST*build_lvl && global.resources[METAL] >= RECRUIT_COST*build_lvl) {
		_c_recruit = c_green;
	}
	

	switch(popup_subtype) {
		case FARM:
			_curr_build = "Farm";
			_curr_product = "Product: " + string(PRODUCTIVITY * build_lvl) + " Food";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
		
		case MILL:
			_curr_build = "Mill";
			_curr_product = "Product: " + string(PRODUCTIVITY * build_lvl)  + " Wood";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
		
		case QUARRY:
			_curr_build = "Stone";
			_curr_product = "Product: " + string(PRODUCTIVITY * build_lvl)  + " Stone";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
			
		case MINE:
			_curr_build = "Mine";
			_curr_product = "Product: " + string(PRODUCTIVITY *build_lvl)  + " Metal";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
	
		case BARRACK:
			_curr_build = "Barrack";
			_curr_health = "HP: " + string(building_health) + " / " + string(oBarrack_Building.max_health);
			_curr_product = string(RECRUIT_COST*build_lvl);
			break;
	
	
		case RANGE:
			_curr_build = "Skirmish Range";
			_curr_health = "HP: " + string(building_health) + " / " + string(oBarrack_Building.max_health);
			_curr_product = string(RECRUIT_COST*build_lvl);
			break;
			
		case STABLE:
			_curr_build = "Stable";
			_curr_health = "HP: " + string(building_health) + " / " + string(oBarrack_Building.max_health);
			_curr_product = string(CAV_RECRUIT_COST*build_lvl);
			break;
	
		case HOUSE:
			_curr_build = "House";
			_curr_product = "Product: " + string(PRODUCTIVITY *build_lvl)  + " Gold";
			_curr_health = "HP: " + string(building_health) + " / " + string(oUtil_Building.max_health);
			break;
	
	
	
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 2");
			break;
	}
	
	if(popup_subtype == BARRACK || popup_subtype == RANGE || popup_subtype == STABLE) {
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-69, _curr_build, 5, 500, 1,1,0, c_blue, c_blue,c_blue,c_blue, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-45, "Recruit Cost", 5, 500, 0.9,0.9,0, c_black,c_black,c_black,c_black, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-25, _curr_product + " Gold", 5, 500, 0.9,0.9,0, _c_recruit,_c_recruit,_c_recruit,_c_recruit, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-10, _curr_product + " Metal", 5, 500, 0.9,0.9,0, _c_recruit,_c_recruit,_c_recruit,_c_recruit, 1 )
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+8, _curr_health, 5, 500, 0.9,0.9,0, c_maroon,c_maroon,c_maroon,c_maroon, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+25, "Upgrade Cost", 5, 500, 0.9,0.9,0, c_black,c_black,c_black,c_black, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+45, _upgrade0, 5, 500, 0.9,0.9,0, _c_upgrade,_c_upgrade,_c_upgrade,_c_upgrade, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+60, _upgrade1, 5, 500, 0.9,0.9,0, _c_upgrade,_c_upgrade,_c_upgrade,_c_upgrade, 1 );
		
	} else {
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-65, _curr_build, 5, 500, 1.2,1.2,0, c_blue, c_blue,c_blue,c_blue, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-36, _curr_product, 5, 500, 0.9,0.9,0, c_black,c_black,c_black,c_black, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-10, _curr_health, 5, 500, 0.9,0.9,0, c_maroon,c_maroon,c_maroon,c_maroon, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+15, "Upgrade Cost", 5, 500, 0.9,0.9,0, c_black,c_black,c_black,c_black, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+40, _upgrade0, 5, 500, 0.9,0.9,0, _c_upgrade,_c_upgrade,_c_upgrade,_c_upgrade, 1 );
		draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+60, _upgrade1, 5, 500, 0.9,0.9,0, _c_upgrade,_c_upgrade,_c_upgrade,_c_upgrade, 1 );
	}

	

}