/// @description Initialize start camera position, height, and width
// You can write your code in this editor
start_height = view_hport[0]/4;
start_width = view_wport[0]/4;

show_debug_message("Start height: " + string(start_height));


max_camera_width = room_width;
max_camera_height = room_height * start_height/start_width;
max_zoom = max_camera_width / start_width;

min_camera_width = start_width * min_zoom;
min_camera_height = start_height * min_zoom;

zoom_f = 1;


display_height = start_height;
display_width = start_width;

camera_set_view_size(view_camera[0], display_width, display_height);
camera_set_view_pos(view_camera[0], room_width/2-display_width/2, room_height/2-display_height);
