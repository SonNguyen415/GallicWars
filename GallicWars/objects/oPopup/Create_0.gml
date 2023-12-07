/// @description Insert description here
// You can write your code in this editor


_x_pos = (mouse_x - camera_get_view_x(view_camera[0]))/oCamera.zoom_f*2+20;
_y_pos = (mouse_y - camera_get_view_y(view_camera[0]))/oCamera.zoom_f*2-10;

building_health = -1;
build_lvl = -1;

image_alpha = 0.9;