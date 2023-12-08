/// @description Insert description here
// You can write your code in this editor

if(wall_destroyed == false && wall_health <= 0) {
	wall_destroyed = true;
}

if(wall_destroyed) {
	visible = false;
	mp_grid_clear_cell(oGridManager.grid, x/32, y/32);
} else {
	mp_grid_add_cell(oGridManager.grid, x/32, y/32);
	visible = true;
}
