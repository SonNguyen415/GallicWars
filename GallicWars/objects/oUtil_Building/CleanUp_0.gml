/// @description When instance is destroyed, decrease income
// You can write your code in this editor

// Remove functionality

switch(build_type) {
	case oBuildingManager.house:
		global.tax_income[global.gold] -= global.productivity * build_lvl;
		break;
		
	
	default:
		break;
}
