/// @description Initialize farm alarm and build type
// You can write your code in this editor



hovering = -1;
has_popup = -1;
upgrading = -1;
recent_upgraded = false;
build_lvl = 1;


build_type = oBuildingManager.building;

// Increase the income
global.tax_income[build_type- oBuildingManager.stable] += global.productivity;

max_health = 500;
