/// @description Change camera based on wasd and mouse position and use scroll to zoom

// Get the current width and height of the camera
var _view_w = camera_get_view_width(view_camera[0]);
var _view_h = camera_get_view_height(view_camera[0]);

// Zooming in/out of the camera
// Find the zoom factor (which would be the percentage we be zooming
var _mouse_wheel = mouse_wheel_down() - mouse_wheel_up();
zoom_f = zoom_f + _mouse_wheel/10;
zoom_f = clamp(zoom_f, min_zoom, max_zoom);


// Set new camera width and height given the zoom factor
var _new_w = lerp(0, start_width, zoom_f);
var _new_h = lerp(0, start_height, zoom_f);
_new_w = clamp(_new_w, 0, max_camera_width);
_new_h = clamp(_new_h, 0, max_camera_height);


display_height = _new_h;
display_width = _new_w;

camera_set_view_size(view_camera[0], display_width, display_height);

// Camera movement

// Modify speed based on zoom level
var _camera_speed = base_camera_speed*zoom_f;

// Get current camera position of x and y
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);

// Control inputs that move left right up and down
var _hori = (keyboard_check(ord("D"))-keyboard_check(ord("A"))) * _camera_speed;
var _vert = (keyboard_check(ord("S"))-keyboard_check(ord("W"))) * _camera_speed;

// Check for mouse position to move camera
if(mouse_x - mouse_tolerance < _cx) {
	_hori -= _camera_speed * mouse_speed_factor;
}
if(mouse_x + mouse_tolerance > _cx + _view_w) {
	_hori += _camera_speed * mouse_speed_factor;
}
if(mouse_y - mouse_tolerance < _cy) {
	_vert -= _camera_speed * mouse_speed_factor;
}
if(mouse_y + mouse_tolerance > _cy + _view_h) {
	_vert += _camera_speed;
}


// Calculate the offset due to zoom
var _offset_x = _cx - (_new_w - _view_w) * 0.5;
var _offset_y = _cy - (_new_h - _view_h) * 0.5;
_cx = clamp(_offset_x, 0, room_width - _new_w);
_cy = clamp(_offset_y, 0, room_height - _new_h);


camera_set_view_pos(view_camera[0], _cx+_hori, _cy+_vert);


