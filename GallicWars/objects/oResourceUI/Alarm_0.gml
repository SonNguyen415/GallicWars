/// @description Insert description here
// You can write your code in this editor


// Loop through each type of income
for(var _i=0; _i<5; _i++) {
	// Get balance
	global.balance[_i] = global.tax_income[_i] - global.expenses[_i];
	global.resources[_i] += global.balance[_i];
	global.resources[_i] = clamp(global.resources[_i], 0, 9999);
}

alarm_set(0, TAX_RATE);
