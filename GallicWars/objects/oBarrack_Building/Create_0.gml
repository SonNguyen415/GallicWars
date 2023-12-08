/// @description Initialize farm alarm and build type
// You can write your code in this editor

#macro CAV_SPEED 1.5
#macro ROME_ATTACK 8
#macro ROME_DEFENSE 4
#macro ROME_HEALTH 100

hovering = -1;
has_popup = -1;
upgrading = -1;
recent_upgraded = false;
build_lvl = 1;

recruiting = false;


// Build cost
global.resources[GOLD] -= BUILD_COST;
global.resources[WOOD] -= BUILD_COST;


max_health = 500;
info_changed = false;

// Set building type and reset construction
build_type = oBuildingManager.building;
oBuildingManager.building = 0;