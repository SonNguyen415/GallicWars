/// @description Insert description here
// You can write your code in this editor


image_speed = 0;
wall_health = max_health;
old_idx = image_index;

info_changed = false;
hovering = false;
check_wall = -1;
popup_hovering = false;
wall_destroyed = false;

mp_grid_add_cell(oGridManager.grid, x/32, y/32);