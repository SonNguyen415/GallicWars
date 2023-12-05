/// @description Insert description here
// You can write your code in this editor


switch(build_type) {
	case oBuildingManager.farm:
		draw_sprite(farmTile, 0, x, y);
		break;
	case oBuildingManager.mill:
		draw_sprite(sawmillTile, 0, x, y);
		break;
	case oBuildingManager.quarry:
		draw_sprite(quarryTile, 0, x, y);
		break;
	case oBuildingManager.mine:
		draw_sprite(mineTile, 0, x, y);
		break;
	default:
		break;
}