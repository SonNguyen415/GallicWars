/// @description 
// You can write your code in this editor

switch(build_type) {
	case oBuildingManager.farm:
		global.resources[global.food] += 5
		break;
		
	case oBuildingManager.mill:
		global.resources[global.wood] += 5;
		break;
		
	case oBuildingManager.quarry:
		global.resources[global.stone] += 5;
		break;
		
	case oBuildingManager.mine:
		global.resources[global.metal] += 5;
		break;
	default: 
		break;
}

alarm_set(0, global.tax_rate);