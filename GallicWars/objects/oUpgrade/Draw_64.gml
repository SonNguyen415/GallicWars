/// @description Insert description here
// You can write your code in this editor


draw_sprite(oUpgrade, 0, _x_pos, _y_pos);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);





if(popup_type == global.popup_construct) {

	switch(popup_subtype) {
		case oBuildingManager.resources:
			// show_debug_message("100 Gold");
			var _gold_cost = string(global.build_cost) + " Gold";
			var _wood_cost = string(global.build_cost) + " Wood";
			var _build_result = "Result: +" + string(global.productivity);
			
			draw_text(_x_pos+text_x_offset, _y_pos - 35, "Cost");
			draw_text(_x_pos+text_x_offset, _y_pos - 10, _gold_cost);
			draw_text(_x_pos+text_x_offset, _y_pos + 10, _wood_cost);
			draw_text(_x_pos+text_x_offset, _y_pos + 35, _build_result);
			
			break;
	
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 0");
			break;
	}

}



if(popup_type == global.popup_money) {
	
	var _income = "";
	var _expenses = "";
	var _balance = "";
	
	switch(popup_subtype) {
		case global.gold:
			_income = "Gold Income: " + string(global.tax_income[global.gold]);
			_expenses = "Gold Expenses: " + string(global.expenses[global.gold]);
			_balance = "Gold Balance: " + string(global.balance[global.gold]);
			break;
		
		case global.food:
			_income = "Food Income: " + string(global.tax_income[global.food])
			_expenses = "Food Expenses: " + string(global.expenses[global.food]);
			_balance = "Food Balance: " + string(global.balance[global.food]);
			break;
		
		case global.wood:
			_income = "Wood Income: " + string(global.tax_income[global.wood]);
			_expenses = "Wood Expenses: " + string(global.expenses[global.wood]);
			_balance = "Wood Balance: " + string(global.balance[global.wood]);
			break;
		
		case global.stone:
			_income = "Stone Income: " + string(global.tax_income[global.stone]);
			_expenses = "Stone Expenses: " + string(global.expenses[global.stone]);
			_balance = "Stone Balance: " + string(global.balance[global.stone]);
			break;
		
		case global.metal:
			_income = "Metal Income: " + string(global.tax_income[global.metal]);
			_expenses = "Metal Expenses: " + string(global.expenses[global.metal]);
			_balance = "Metal Balance: " + string(global.balance[global.metal]);
			break;
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 1");
			break;
	}
	
	
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos-30, _income, 2, 300, 0.8, 0.8, 0);
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos, _expenses, 2, 300, 0.8, 0.8, 0);
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos+30, _balance, 2, 300, 0.8, 0.8, 0);

}


if(popup_type == global.popup_upgrade) {
	var _curr_build = "";
	var _curr_lvl = "";
	var _curr_product = "";
	var _upgrade = "";

	switch(popup_subtype) {
		case oBuildingManager.farm:
			_curr_build = "Farm";
			_curr_lvl = "Current Level: " + string(build_lvl);
			_curr_product = "Produces: " + string(global.productivity + (build_lvl-1)*global.upgrade_incr) + " Food";
			if(build_lvl < 4) {
				_upgrade = "Upgradable: Yes";
			} else {
				_upgrade = "Upgradable: No";
			}
			break;
		
		case oBuildingManager.mill:
			_curr_build = "Mill";
			_curr_lvl = "Current Level: " + string(build_lvl);
			_curr_product = "Produces: " + string(global.productivity + (build_lvl-1)*global.upgrade_incr) + " Wood";
			if(build_lvl < 4) {
				_upgrade = "Upgradable: Yes";
			} else {
				_upgrade = "Upgradable: No";
			}
			break;
		
		case oBuildingManager.quarry:
			_curr_build = "Stone";
			_curr_lvl = "Current Level: " + string(build_lvl);
			_curr_product = "Produces: " + string(global.productivity + (build_lvl-1)*global.upgrade_incr) + " Stone";
			if(build_lvl < 4) {
				_upgrade = "Upgradable: Yes";
			} else {
				_upgrade = "Upgradable: No";
			}
			break;
			
		case oBuildingManager.mine:
			_curr_build = "Mine";
			_curr_lvl = "Current Level: " + string(build_lvl);
			_curr_product = "Produces: " + string(global.productivity + (build_lvl-1)*global.upgrade_incr) + " Metal";
			if(build_lvl < 4) {
				_upgrade = "Upgradable: Yes";
			} else {
				_upgrade = "Upgradable: No";
			}
			break;
	
		
		default:
			draw_text(_x_pos+text_x_offset, _y_pos-30, "Error 2");
			break;
	}
	
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos-35, _curr_build, 2, 300, 0.8, 0.8, 0);
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos-10, _curr_lvl, 2, 300, 0.8, 0.8, 0);
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos+10, _curr_product, 2, 300, 0.8, 0.8, 0);
	draw_text_ext_transformed(_x_pos+text_x_offset, _y_pos+30, _upgrade, 2, 300, 0.8, 0.8, 0);

	

}