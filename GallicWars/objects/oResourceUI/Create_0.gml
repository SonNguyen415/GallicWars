/// @description Insert description here
// You can write your code in this editor


// Variables to check mouse position
hovering = -1;
has_popup = -1;


global.popup_construct = 1;
global.popup_upgrade = 2;
global.popup_money = 3;
global.popup_unit = 4;


// Build cost and upgrade cost
global.build_cost = 50;
global.upgrade_cost = 25;
global.productivity = 5;

// Recruitment cost
global.maintain_cost = 1;
global.recruit_cost = 10;


// Just some id
global.gold = 0;
global.food = 1;
global.wood = 2;
global.stone = 3;
global.metal = 4;

global.resources = [200, 300, 300, 300, 300]
global.tax_income = [5, 0, 1, 0, 0];
global.expenses = [0, 0, 0, 0, 0]
global.balance = [0, 0, 0, 0, 0]

global.tax_rate = 60;

alarm_set(0, global.tax_rate);
