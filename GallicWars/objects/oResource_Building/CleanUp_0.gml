/// @description When instance is destroyed, decrease income
// You can write your code in this editor

global.tax_income[build_type- oBuildingManager.stable] -= global.productivity*build_lvl;

instance_create_layer(x, y, "Plots", oPlot);