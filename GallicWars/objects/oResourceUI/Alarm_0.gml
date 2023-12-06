/// @description Insert description here
// You can write your code in this editor


for(var _i=0; _i<5; _i++) {
	global.resources[_i] += global.tax_income[_i];
}

alarm_set(0, global.tax_rate);
