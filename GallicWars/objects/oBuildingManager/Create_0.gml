/// @description Insert description here
// You can write your code in this editor

// Building ids;
#macro BARRACK 1
#macro RANGE 2
#macro STABLE 3
#macro FARM 4
#macro MILL 5
#macro QUARRY 6
#macro MINE 7
#macro HOUSE 8
#macro WALL 9


// state ids
#macro CANNOT 0
#macro MENU 1
#macro CAMPS 2
#macro RESOURCES 3
#macro UTIL 4

state = MENU;
previous_state = ds_stack_create();

has_popup = -1;
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


