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
#macro BUILD_COST 40
#macro RES_UPGRADE_COST 10
#macro BARRACK_UPGRADE_COST 500
#macro PRODUCTIVITY 5
#macro REPAIR_COST 5

// Recruitment cost
#macro RECRUIT_COST 10
#macro UPKEEP_COST 1
#macro CAV_RECRUIT_COST 15
#macro CAV_UPKEEP_COST 2

// Just some id
#macro GOLD 0
#macro FOOD 1
#macro WOOD 2
#macro STONE 3
#macro METAL 4

#macro TAX_RATE 100


global.resources = [200, 150, 200, 150, 150]
global.tax_income = [2, 0, 0, 0, 0];
global.expenses = [0, 0, 0, 0, 0]
global.balance = [0, 0, 0, 0, 0]


alarm_set(0, TAX_RATE);
