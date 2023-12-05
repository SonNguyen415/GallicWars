/// @description 
// You can write your code in this editor

switch(build_type) {
	case oBuildingManager.farm:
		global.resources[global.food] += 5;
	default:
		break;
}

alarm_set(0, global.tax_rate);