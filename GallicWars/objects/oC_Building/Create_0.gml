/// @description Initialize farm alarm
// You can write your code in this editor


image_alpha = 0.8;

switch(oBuildingManager.building) {
	case oBuildingManager.farm:
		draw_sprite(farmTile, 0, mouse_x, mouse_y);
		break;
	case oBuildingManager.mill:
		draw_sprite(sawmillTile, 0, mouse_x, mouse_y);
		break;
	case oBuildingManager.quarry:
		draw_sprite(quarryTile, 0, mouse_x, mouse_y);
		break;
	case oBuildingManager.mine:
		show_debug_message("Mine");
		draw_sprite(mineTile, 0, mouse_x, mouse_y);
		break;
	default:
		break;
}
