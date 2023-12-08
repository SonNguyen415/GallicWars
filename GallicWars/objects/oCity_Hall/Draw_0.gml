/// @description Health Bar
// You can write your code in this editor

draw_self();
draw_rectangle_colour(x-(max_health/2)/hp_f, y-128/2-15, x+(max_health/2)/hp_f, y-128/2+5, c_white, c_white, c_white, c_white, false);
draw_rectangle_colour(x-(max_health/2)/hp_f, y-128/2-15, x-(max_health/2-building_health)/hp_f, y-128/2+5, c_maroon, c_maroon, c_maroon, c_maroon, false);