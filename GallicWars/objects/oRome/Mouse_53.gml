if (instance_position(mouse_x, mouse_y, self.id) != noone) {
	selected = true;
	show_message(self);
} else if (!(keyboard_check(vk_shift) && place_meeting(mouse_x, mouse_y, oRome))) {
	selected = false;
}