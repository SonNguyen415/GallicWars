/// @description Insert description here
// You can write your code in this editor


switch(oBuildingManager.building) {
	case oBuildingManager.farm:
		
		draw_sprite_ext(farmTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
	case oBuildingManager.mill:
		draw_sprite_ext(sawmillTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
	case oBuildingManager.quarry:
		draw_sprite_ext(quarryTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
	case oBuildingManager.mine:
		draw_sprite_ext(mineTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
	
	case oBuildingManager.barrack:
		draw_sprite_ext(barracksTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	case oBuildingManager.range:
		draw_sprite_ext(archeryRange, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	default:
		break;
}

