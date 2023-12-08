/// @description Insert description here
// You can write your code in this editor

if (building_health <= 0) {
	instance_destroy();
}

// Set sprite
switch(build_type) {
	case HOUSE:
		sprite_index = houses;
		break;
		
	default:
		break;
}


image_speed = 0;


// Upgrade -- modify functionality based on upgrade
if(recent_upgraded) {
	image_index = build_lvl-1;
	switch(build_type) {
		case HOUSE:
			global.tax_income[GOLD] += PRODUCTIVITY;
			break;
		
	
		default:
			break;
	}
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
	
	// Create a new upgrader popup if don't have one
	if(hovering > 0 && upgrading < 0) {

		upgrading = instance_create_layer(x, y, "Popup_Layer", oUpgrade);
		upgrading.build_lvl = build_lvl;
		upgrading.upgrade_type = build_type;
		upgrading.upgrade_building = id;
	} else if(upgrading > 0 &&
		(mouse_x < x-96/2 ||  mouse_x > x+96/2 ||
				mouse_y < y-96 || mouse_y > y)) { 
		// Otherwise, we have the upgrader. Check if mouse is clicked on button
		instance_destroy(upgrading);
		upgrading = -1;
	}
}


// Also cancel on right click
if(upgrading > 0 && mouse_check_button_pressed(mb_right)) {
	instance_destroy(upgrading);
	upgrading = -1;
}