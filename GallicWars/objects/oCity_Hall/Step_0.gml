/// @description Insert description here
// You can write your code in this editor


// If waves spawn, then we lost if city hall HP approaches 0. Win if no enemy left and it's wave 6
if (global.curr_game == IN_GAME && building_health < 1) {
	building_health = 0;
	global.curr_game = LOSE;
} else if(global.curr_game == IN_GAME && global.total_enemies <= 0 && oWaveManager.spawn_wave >= MAX_WAVE) {
	global.curr_game = WIN;	
	oWaveManager.alarm[1] = 0;
}
