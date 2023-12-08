/// @description When instance is destroyed, decrease income
// You can write your code in this editor

// Remove functionality

switch(build_type) {
	case HOUSE:
		global.tax_income[GOLD] -= PRODUCTIVITY * build_lvl;
		instance_create_layer(x, y, "Plots", oPlot);
		break;
		
	
	default:
		break;
}
