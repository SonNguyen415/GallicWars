/// @description Initialize farm alarm and build type
// You can write your code in this editor



hovering = -1;
has_popup = -1;
upgrading = -1;
recent_upgraded = false;
build_lvl = 1;


// Build cost
global.resources[GOLD] -= BUILD_COST;
global.resources[WOOD] -= BUILD_COST;

if(global.resources[GOLD] < 0) {
	global.resources[GOLD] = 0;
}

if(global.resources[WOOD] < 0) {
	global.resources[WOOD] = 0;
}

	
	
building_health = max_health;
info_changed= false;

// Set building type and reset construction
build_type = oBuildingManager.building;
oBuildingManager.building = 0;


// Modify functionality based on type
switch(build_type) {
	case HOUSE:
		global.tax_income[GOLD] += PRODUCTIVITY;
		break;
		
	
	default:
		break;
}

