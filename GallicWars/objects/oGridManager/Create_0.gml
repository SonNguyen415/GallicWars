/// @description Insert description here
// You can write your code in this editor

grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

mp_grid_add_instances(grid, oCity_Hall, false);

for (var i = 0; i < room_width/32; i++;) {
	for (var j = 0; j < room_height/32; j++;) {
		if (tilemap_get(layer_tilemap_get_id(layer_get_id("Water")), i, j)) {
				mp_grid_add_cell(grid, i, j);
		}
	}
}







