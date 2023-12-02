/// @description Insert description here
// You can write your code in this editor

base_camera_speed = 20;
mouse_tolerance = 10;

min_zoom = 0.1;

start_width = 1366;
start_height = 768;

min_camera_width = start_width * min_zoom;
min_camera_height = start_height * min_zoom;

max_camera_width = room_width * 1.1;
max_camera_height = room_height * start_height/start_width * 1.1;
max_zoom = max_camera_width / start_width;


zoom_f = 1;

camera_set_view_size(view_camera[0], start_width, start_height);
