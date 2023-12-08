/// @description Insert description here
// You can write your code in this editor


if(global.curr_game == WIN) {
	draw_sprite(victory, 0, view_wport[0]/2, view_hport[0]/5);
} else if(global.curr_game == LOSE) {
	draw_sprite(defeat, 0, view_wport[0]/2, view_hport[0]/5);
}