/// @description Insert description here
// You can write your code in this editor

sprite_set_offset(barbSoldier, 16, 16);

grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

target= noone;

image_speed = 1;

path = path_add();

if (mp_grid_path(grid, path, x, y, oCity_Hall.x, oCity_Hall.y, true)) {
	if (mouse_x > x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;	
	}
		
	path_set_kind(path, 1);
	path_start(path, troop_speed, path_action_stop, true);
}