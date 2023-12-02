/// @description Initialize start camera position, height, and width
// You can write your code in this editor

min_camera_width = start_width * min_zoom;
min_camera_height = start_height * min_zoom;

max_camera_width = room_width * max_zoom_factor;
max_camera_height = room_height * start_height/start_width * max_zoom_factor;
max_zoom = max_camera_width / start_width;


zoom_f = 1;


display_height = start_height;
display_width = start_width;

camera_set_view_size(view_camera[0], display_width, display_height);
