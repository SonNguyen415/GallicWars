/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup, 0, _x_pos, _y_pos);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);





if(popup_type == global.popup_construct) {
	
	var _gold_cost = string(global.build_cost) + " Gold";
	var _wood_cost = string(global.build_cost) + " Wood";
	var _build_result = "Result: +" + string(global.productivity);
	
	var _c_cost = c_maroon;
	if(global.resources[global.gold] >= global.build_cost && global.resources[global.wood] >= global.build_cost) {
		_c_cost = c_green;
	}

	switch(popup_subtype) {
		case oBuildingManager.farm:
			_build_result += " Food";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Farm",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			break;
			
		case oBuildingManager.mill:
			_build_result += " Wood";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Mill",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			break;
			
		case oBuildingManager.quarry:
			_build_result += " Stone";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Quarry",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			break;
		
		case oBuildingManager.mine:
			_build_result += " Metal";
			draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 50, "Mine",5, 500,1.2,1.2,0, c_blue,c_blue,c_blue,c_blue, 1 );
			break;
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 0");
			break;
	}
	
	
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos - 10, _gold_cost,5, 500, 1,1,0, _c_cost,_c_cost,_c_cost,_c_cost, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 10, _wood_cost,5, 500, 1,1,0, _c_cost,_c_cost,_c_cost,_c_cost, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos + 35, _build_result,5, 500, 1,1,0, c_black,c_black,c_black,c_black, 1 );
			

}



if(popup_type == global.popup_money) {
	var _money_type = "";
	
	var _income = "Income: ";
	var _expenses = "Expenses: ";
	var _balance = "Balance: ";
	
	var _c_balance = c_black;
	
	switch(popup_subtype) {
		case global.gold:
			_money_type = "Gold";
			_income += string(global.tax_income[global.gold]);
			_expenses += string(global.expenses[global.gold]);
			_balance += string(global.balance[global.gold]);
			if(global.balance[global.gold] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[global.gold] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case global.food:
			_money_type = "Food";
			_income += string(global.tax_income[global.food])
			_expenses += string(global.expenses[global.food]);
			_balance += string(global.balance[global.food]);
			if(global.balance[global.food] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[global.food] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case global.wood:
			_money_type = "Wood";
			_income += string(global.tax_income[global.wood]);
			_expenses += string(global.expenses[global.wood]);
			_balance += string(global.balance[global.wood]);
			if(global.balance[global.wood] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[global.wood] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case global.stone:
			_money_type = "Stone";
			_income += string(global.tax_income[global.stone]);
			_expenses += string(global.expenses[global.stone]);
			_balance += string(global.balance[global.stone]);
			if(global.balance[global.stone] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[global.stone] > 0) {
				_c_balance = c_green;
			}
			break;
		
		case global.metal:
			_money_type = "Metal";
			_income += string(global.tax_income[global.metal]);
			_expenses += string(global.expenses[global.metal]);
			_balance += string(global.balance[global.metal]);
			if(global.balance[global.metal] < 0) {
				_c_balance = c_maroon;
			}
			if(global.balance[global.metal] > 0) {
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


if(popup_type == global.popup_upgrade && build_lvl > 0) {
	
	var _curr_build = "";
	var _curr_product = "";
	var _curr_health = "";
	
	var _curr_up_cost = build_lvl*global.upgrade_cost+global.build_cost;
	var _upgrade0 = "Max Level";
	var	_upgrade1 = "";
	var _color = c_silver;
	
	if(build_lvl < 4) {
		_upgrade0 = string(_curr_up_cost) + " Gold";
		_upgrade1 = string(_curr_up_cost) + " Wood";
		if(global.resources[global.gold] >= _curr_up_cost && global.resources[global.wood] >=_curr_up_cost) {
			_color = c_green;
		} else {
			_color = c_maroon;
		}
	}
	
	

	switch(popup_subtype) {
		case oBuildingManager.farm:
			_curr_build = "Farm";
			_curr_product = "Product: " + string(global.productivity * build_lvl) + " Food";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
		
		case oBuildingManager.mill:
			_curr_build = "Mill";
			_curr_product = "Product: " + string(global.productivity * build_lvl)  + " Wood";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
		
		case oBuildingManager.quarry:
			_curr_build = "Stone";
			_curr_product = "Product: " + string(global.productivity * build_lvl)  + " Stone";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			break;
			
		case oBuildingManager.mine:
			_curr_build = "Mine";
			_curr_product = "Product: " + string(global.productivity *(build_lvl-1))  + " Metal";
			_curr_health = "HP: " + string(building_health) + " / " + string(oResource_Building.max_health);
			
			break;
	
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 2");
			break;
	}
	
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-65, _curr_build, 5, 500, 1.2,1.2,0, c_blue, c_blue,c_blue,c_blue, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-36, _curr_product, 5, 500, 0.9,0.9,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos-10, _curr_health, 5, 500, 0.9,0.9,0, c_maroon,c_maroon,c_maroon,c_maroon, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+15, "Upgrade Cost", 5, 500, 0.9,0.9,0, c_black,c_black,c_black,c_black, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+40, _upgrade0, 5, 500, 0.9,0.9,0, _color,_color,_color,_color, 1 );
	draw_text_ext_transformed_color(_x_pos+text_x_offset, _y_pos+60, _upgrade1, 5, 500, 0.9,0.9,0, _color,_color,_color,_color, 1 );

	

}