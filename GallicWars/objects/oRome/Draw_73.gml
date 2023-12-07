//draw_set_alpha( .3);

//mp_grid_draw( grid);

draw_set_alpha( 1);

draw_set_color(c_red);

if (path_exists(path_index)) {
	draw_path(path_index, 0, 0, true);
}