/// @description Making za UI
// You can write your code in this editor

// Get current camera position of x and y
draw_sprite(ResourceUI, 0, 1920/2, 1080-128);
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);