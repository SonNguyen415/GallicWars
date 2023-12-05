/// @description Insert description here
// You can write your code in this editor

state = menu;
previous_state = ds_stack_create();

selected = -1;
hovering = -1;

x_offset = 12;
y_offset = 225;

button_offset = button_size*2-11;

b_size = button_size/2+14;
b_y_offset = y_offset/2+7;
b_spacing = 12;
b_top_gap = b_size + b_spacing;

building = 0;


// Building ids;
barrack = 1; 
range = 2;
stable = 3;
farm = 4;
mill = 5;
quarry = 6;
mine = 7;
