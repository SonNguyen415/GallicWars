/// @description Insert description here
// You can write your code in this editor
if(troop_type == "Cavalry") {
	global.expenses[GOLD] += CAV_UPKEEP_COST;
	global.expenses[FOOD] += CAV_UPKEEP_COST*2;
} else {
	global.expenses[GOLD] += UPKEEP_COST;
	global.expenses[FOOD] += UPKEEP_COST*2;
}
