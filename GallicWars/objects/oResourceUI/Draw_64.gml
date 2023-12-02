/// @description Insert description here
// You can write your code in this editor


draw_sprite(ResourceUI, 0, 1980/2, 1080);

function display_gold(_char, _pos)
{
	draw_sprite(Num, _char, 540+_pos*22, 1080-62);
}
	
// Parse resources
for(var _i=0; _i<5; _i++) {
	var _res_str = parse_to_string(global.resources[_i]);
	show_debug_message(_res_str);
	for(var _j=0; _j < 4; _j++) {
		draw_sprite(Num, string_char_at(_res_str, _j+1), 560+_j*22+_i*205, 1080-62);
	}

}
