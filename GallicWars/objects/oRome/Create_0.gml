/// @description Insert description here
// You can write your code in this editor

target= noone;

image_speed = 1;


global.resources[GOLD] -= RECRUIT_COST;
global.resources[METAL] -= RECRUIT_COST;

global.expenses[GOLD] += UPKEEP_COST;
global.expenses[FOOD] += UPKEEP_COST*2;