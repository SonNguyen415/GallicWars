/// @description Insert description here
// You can write your code in this editor


draw_sprite(popup2, 0, x, y);


image_xscale = 0.85;
image_yscale = 0.25;


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if(wall_destroyed) {
	draw_text_ext_transformed_color(x, y-85, "Wall", 5, 500, 0.75,0.75,0, c_blue, c_blue,c_blue,c_blue, 1);
	draw_text_ext_transformed_color(x-15, y-60, "Repair: ", 5, 500, 0.6,0.6,0, c_black, c_black,c_black,c_black, 1);
	if(global.resources[GOLD] >= REPAIR_COST && global.resources[WOOD] >= REPAIR_COST) {
		draw_sprite(checkbutton, 0, x+20, y-55);
		draw_text_ext_transformed_color(x, y-40, string(REPAIR_COST) + " Gold" , 5, 500, 0.5,0.5,0, c_green, c_green,c_green,c_green, 1);
		draw_text_ext_transformed_color(x, y-30, string(REPAIR_COST) + " Wood" , 5, 500, 0.5,0.5,0, c_green, c_green,c_green,c_green, 1);
	}else {
		draw_sprite(checkbutton, 1, x+20, y-55);
		draw_text_ext_transformed_color(x, y-40, string(REPAIR_COST) + " Gold" , 5, 500, 0.5,0.5,0, c_maroon, c_maroon,c_maroon,c_maroon, 1);
		draw_text_ext_transformed_color(x, y-30, string(REPAIR_COST) + " Wood" , 5, 500, 0.5,0.5,0, c_maroon, c_maroon,c_maroon,c_maroon, 1);
	}
	
} else {
	var _curr_health = "HP: " + string(wall_health) + " / " + string(oWall.max_health);
	
	draw_text_ext_transformed_color(x, y-75, "Wall", 5, 500, 0.85,0.85,0, c_blue, c_blue,c_blue,c_blue, 1);
	draw_text_ext_transformed_color(x, y-45, _curr_health, 5, 500, 0.65,0.65,0, c_maroon, c_maroon,c_maroon,c_maroon, 1);
}

