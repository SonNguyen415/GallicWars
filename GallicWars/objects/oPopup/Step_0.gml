/// @description Insert description here
// You can write your code in this editor


_x_pos = (mouse_x - camera_get_view_x(view_camera[0]))/oCamera.zoom_f*2+20;
_y_pos = (mouse_y - camera_get_view_y(view_camera[0]))/oCamera.zoom_f*2-10;


if(popup_type == global.popup_upgrade) {
	image_yscale = 0.75;
} else {
	image_yscale = 1.0;
}