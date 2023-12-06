/// @description Initialize farm alarm and build type
// You can write your code in this editor


build_type = oBuildingManager.building;
hovering = -1;
has_popup = -1;
build_lvl = 1;


// Increase the income
global.tax_income[build_type- oBuildingManager.stable] += global.productivity;

