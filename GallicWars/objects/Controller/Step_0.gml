/// @description Insert description here
// You can write your code in this editor

camera_set_view_speed(view_camera[0],0,0)

cam_speed = 5;

if (keyboard_check(vk_shift)) {
	cam_speed = 10;
}

key_right = keyboard_check(ord("d")) ||  keyboard_check(ord("D"));
key_left = keyboard_check(ord("a")) ||  keyboard_check(ord("A"));
key_up = keyboard_check(ord("w")) ||  keyboard_check(ord("W"));
key_down = keyboard_check(ord("s")) ||  keyboard_check(ord("S"));

hsp = (key_right - key_left) * cam_speed;

vsp = (key_up - key_down) * cam_speed;

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if ((vx + hsp > room_width - camera_get_view_width(view_camera[0])) || (vx + hsp < 0)) {
	hsp = 0;
}
if ((vy + vsp > room_height - camera_get_view_height(view_camera[0])) or (vy + vsp < 0)) {
	vsp = 0;	
}


camera_set_view_speed(view_camera[0], hsp, vsp);