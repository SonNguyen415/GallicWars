/// @description Insert description here
// You can write your code in this editor

if (building_health <= 0) {
	mp_grid_clear_cell(oGridManager.grid, x/32, y/32);
	mp_grid_clear_cell(oGridManager.grid, x/32 + 1, y/32);
	mp_grid_clear_cell(oGridManager.grid, x/32, y/32 + 1);
	mp_grid_clear_cell(oGridManager.grid, x/32 + 1, y/32 + 1);
	instance_destroy();
}

// Set sprite
switch(build_type) {
	case BARRACK:
		sprite_index = barracksTile;
		break;
		
	case RANGE:
		sprite_index = archeryRange;
		break;
		
	case STABLE:
		sprite_index = stableSprite;
		break;

	default:
		break;
}


image_speed = 0;

if(recent_upgraded) {
	image_index = build_lvl-1;
	recent_upgraded = false;
}


// Check for hovering

if(instance_position(mouse_x, mouse_y, self.id) != noone) {
	hovering = 1;
} else {
	hovering = -1;
}



// If we have the popup and not hovering
if(has_popup > 0 && hovering < 0) {
	has_popup = -1;
	instance_destroy(oPopup);
}



// Create popup if hovering
if(hovering > 0) {
	if(has_popup > 0 && info_changed) { // If already has popup and info changed, destroy current
		instance_destroy(oPopup);
				
		instance_create_layer(mouse_x, mouse_y, "Popup_Layer", oPopup);
		oPopup.popup_type = POPUP_UPGRADE;
		oPopup.popup_subtype = build_type;
		oPopup.build_lvl = build_lvl;
		oPopup.building_health = building_health;
		info_changed = false;
		has_popup = -1;
			
	} else if(has_popup < 0) {  // If we have no popup yet, make new one
		instance_create_layer(mouse_x, mouse_y, "Popup_Layer", oPopup);
		oPopup.popup_type = POPUP_UPGRADE;
		oPopup.popup_subtype = build_type;
		oPopup.build_lvl = build_lvl;
		oPopup.building_health = building_health;
		has_popup = 1;
		
	}
}




// If hovering, then on click we invoke upgrade

if(mouse_check_button_pressed(mb_left)) {
	
	if(hovering > 0 && upgrading < 0) {

		upgrading = instance_create_layer(x, y, "Popup_Layer", oUpgrade);
		upgrading.build_lvl = build_lvl;
		upgrading.upgrade_type = build_type;
		upgrading.upgrade_building = id;
	} else if(upgrading > 0 &&
		(mouse_x < x-96/2 ||  mouse_x > x+96/2 ||
				mouse_y < y-96 || mouse_y > y)) {
		instance_destroy(upgrading);
		upgrading = -1;
	}
}


// Also cancel on right click
if(upgrading > 0 && mouse_check_button_pressed(mb_right)) {
	instance_destroy(upgrading);
	upgrading = -1;
}


// Recruiting
if(recruiting) {
	if (place_meeting(x - sprite_width, y, oBarrack_Building) || place_meeting(x - sprite_width, y, oPlot) || place_meeting(x - sprite_width, y, oResource_Building) || place_meeting(x - sprite_width, y, oUtil_Building)) {
		if (instance_position(x + sprite_width, y, all) || instance_position(x + sprite_width + 16, y + 16, all) || instance_position(x + sprite_width + 16, y - 16, all) || instance_position(x + sprite_width - 16, y + 16, all) || instance_position(x + sprite_width - 16, y - 16, all)) {
			recruiting = false;	
		} else {
			new_troop = instance_create_layer(x + sprite_width, y, "Instances", oRome);
		}
	} else {
		if (instance_position(x - sprite_width, y, all) || instance_position(x - sprite_width + 16, y + 16, all) || instance_position(x - sprite_width + 16, y - 16, all) || instance_position(x - sprite_width - 16, y + 16, all) || instance_position(x - sprite_width - 16, y - 16, all)) {
			recruiting = false;	
		} else {
			new_troop = instance_create_layer(x - sprite_width, y, "Instances", oRome);
		}
	}
	if (recruiting != false) {
		new_troop.tier = build_lvl;
		new_troop.troop_health = ROME_HEALTH * new_troop.tier;
		new_troop.troop_defense = ROME_DEFENSE * new_troop.tier;
		new_troop.troop_attack = ROME_ATTACK * new_troop.tier;
		switch(build_type) {
			case BARRACK:
				new_troop.troop_type = "Infantry";
				global.resources[GOLD] -= RECRUIT_COST*build_lvl;
				global.resources[METAL] -= RECRUIT_COST*build_lvl;
				
				

				global.expenses[GOLD] += UPKEEP_COST;
				global.expenses[FOOD] += UPKEEP_COST*2;
				break;
			case RANGE:
				new_troop.troop_type = "Archer";
				global.resources[GOLD] -= RECRUIT_COST*build_lvl;
				global.resources[METAL] -= RECRUIT_COST*build_lvl;

				global.expenses[GOLD] += UPKEEP_COST;
				global.expenses[FOOD] += UPKEEP_COST*2;
				break;
			case STABLE:
				new_troop.troop_type = "Cavalry";
				new_troop.troop_speed *= CAV_SPEED;
				global.resources[GOLD] -= CAV_RECRUIT_COST*build_lvl;
				global.resources[METAL] -= CAV_RECRUIT_COST*build_lvl;

				global.expenses[GOLD] += CAV_UPKEEP_COST;
				global.expenses[FOOD] += CAV_UPKEEP_COST*2;
				
				break;
		}
		
		if(global.resources[GOLD] < 0) {
			global.resources[GOLD] = 0;
		}

		if(global.resources[METAL] < 0) {
			global.resources[METAL] = 0;
		}

		recruiting = false;
	}
}