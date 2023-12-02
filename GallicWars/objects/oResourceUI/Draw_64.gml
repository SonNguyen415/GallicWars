/// @description Insert description here
// You can write your code in this editor


draw_sprite(ResourceUI, 0, 1980/2, 1080);


// Parse gold
function display_gold(_char, _pos)
{
    draw_sprite(Num, _char, 540+_pos*22, 1080-62);
}
var _gold_string = parse_to_string(global.gold);
string_foreach(_gold_string, display_gold);