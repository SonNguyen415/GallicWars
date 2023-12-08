/// @description Initialize farm alarm and build type
// You can write your code in this editor



hovering = -1;
has_popup = -1;
upgrading = -1;
recent_upgraded = false;
build_lvl = 1;



// Build cost
global.resources[global.gold] -= global.build_cost;
global.resources[global.wood] -= global.build_cost;
	

building_health = max_health;
info_changed = false;

// Set building type and reset construction
build_type = oBuildingManager.building;
oBuildingManager.building = 0;

	
// Increase the income
global.tax_income[build_type- STABLE] += global.productivity;
