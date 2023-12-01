/// @description Insert description here
// You can write your code in this editor
if (selected == true) {
	path = path_add();

	if (mp_grid_path(grid, path, x, y, mouse_x, mouse_y, true)) {
		path_set_kind(path, 1);
		path_start(path, 5, path_action_stop, true);
	}
}


