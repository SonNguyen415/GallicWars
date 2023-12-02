/// @description Change camera based on wasd and mouse position and use scroll to zoom

// Get the current width and height of the camera
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
show_debug_message("view_w: " + string(view_w) + " | view_h: " + string(view_h) );

// Zooming in/out of the camera
// Find the zoom factor (which would be the percentage we be zooming
var mouse_wheel = mouse_wheel_down() - mouse_wheel_up();
zoom_f = zoom_f + mouse_wheel/10;
zoom_f = clamp(zoom_f, min_zoom, max_zoom);
// show_debug_message("Mousewheel: " + string(mouse_wheel) + " | Zoom factor: " + string(zoom_f));


// Find zoom position (where we be zooming into)
show_debug_message("MouseX: " + string(mouse_x) + " | MouseY: " + string(mouse_y) );


// Set new camera width and height given the zoom factor
var new_w = lerp(0, start_width, zoom_f);
var new_h = lerp(0, start_height, zoom_f);
new_w = clamp(new_w, 0, max_camera_width);
new_h = clamp(new_h, 0, max_camera_height);


camera_set_view_size(view_camera[0], new_w, new_h);


// Camera movement

// Get current camera position of x and y
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

// Control inputs that move left right up and down
var hori = (keyboard_check(ord("D"))-keyboard_check(ord("A"))) * camera_speed;
var vert = (keyboard_check(ord("S"))-keyboard_check(ord("W"))) * camera_speed;

// Check for mouse position to move camera
if(mouse_x - mouse_tolerance < cx) {
	hori -= mouse_camera_speed;
}
if(mouse_x + mouse_tolerance > cx + view_w) {
	hori += mouse_camera_speed;
}
if(mouse_y - mouse_tolerance < cy) {
	vert -= mouse_camera_speed;
}
if(mouse_y + mouse_tolerance > cy + view_h) {
	vert += mouse_camera_speed;
}


// Calculate the offset due to zoom
var offsetX = cx - (new_w - view_w) * 0.5;
var offsetY = cy - (new_h - view_h) * 0.5;
cx = clamp(offsetX, 0, room_width - new_w);
cy = clamp(offsetY, 0, room_height - new_h);


camera_set_view_pos(view_camera[0], cx+hori, cy+vert);


