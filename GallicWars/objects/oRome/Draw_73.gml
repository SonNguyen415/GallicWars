

draw_set_alpha( 1);

draw_set_color(c_red);

if (path_exists(path_index)) {
	draw_path(path_index, 0, 0, true);
}

draw_sprite(unitLevel, tier - 1, x, y);