/// @description Initialize farm alarm and build type
// You can write your code in this editor



build_type = oBuildingManager.building;

// Increase the income
global.tax_income[build_type-3] += global.productivity;
