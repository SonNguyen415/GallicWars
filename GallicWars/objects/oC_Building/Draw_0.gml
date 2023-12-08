/// @description Insert description here
// You can write your code in this editor


switch(oBuildingManager.building) {
	case BARRACK:
		draw_sprite_ext(barracksTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	case RANGE:
		draw_sprite_ext(archeryRange, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	case STABLE:
		draw_sprite_ext(stableSprite, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
		
	case FARM:
		draw_sprite_ext(farmTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	case MILL:
		draw_sprite_ext(sawmillTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	case QUARRY:
		draw_sprite_ext(quarryTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
	case MINE:
		draw_sprite_ext(mineTile, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;

	case HOUSE:
		draw_sprite_ext(houses, 0, mouse_x, mouse_y, 1, 1, 0, c_white, build_transparency);
		break;
		
		
	default:
		break;
}

