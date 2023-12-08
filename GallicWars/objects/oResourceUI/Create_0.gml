/// @description Insert description here
// You can write your code in this editor


// Variables to check mouse position
hovering = -1;
has_popup = -1;

// Popup setup
#macro POPUP_CONSTRUCT 1
#macro POPUP_UPGRADE 2
#macro POPUP_MONEY 3
#macro POPUP_UNIT 4


// Build cost and upgrade cost
#macro BUILD_COST 50
#macro RES_UPGRADE_COST 25
#macro BARRACK_UPGRADE_COST 100
#macro PRODUCTIVITY 10
#macro REPAIR_COST 5

// Recruitment cost
#macro RECRUIT_COST 10
#macro UPKEEP_COST 1


// Just some id
#macro GOLD 0
#macro FOOD 1
#macro WOOD 2
#macro STONE 3
#macro METAL 4

#macro TAX_RATE 100


global.resources = [200, 300, 300, 100, 100]
global.tax_income = [5, 0, 1, 0, 0];
global.expenses = [0, 0, 0, 0, 0]
global.balance = [0, 0, 0, 0, 0]


alarm_set(0, TAX_RATE);
