/// @description Insert description here
// You can write your code in this editor

sprite_set_offset(ArmySprite, 16, 16);

grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

mp_grid_add_instances(grid, Plot, false);
