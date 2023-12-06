/// @description Insert description here
// You can write your code in this editor


// Set sprite
switch(build_type) {
	case oBuildingManager.farm:
		sprite_index = farmTile;
		break;
		
	case oBuildingManager.mill:
		sprite_index = sawmillTile;
		break;
		
	case oBuildingManager.quarry:
		sprite_index = quarryTile;
		break;
		
	case oBuildingManager.mine:
		sprite_index = mineTile;
		break;
	default:
		break;
}

image_speed = 0;


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


// If hovering AND doesn't have popup, make popup
if(hovering > 0 && has_popup < 0) {
	instance_create_layer(mouse_x, mouse_y, "Popup_Layer", oPopup);
	oPopup.popup_type = global.popup_upgrade;
	oPopup.popup_subtype = build_type;
	oPopup.build_lvl = build_lvl;
	has_popup = 1;
}







// If hovering, then on click we invoke upgrade

if(mouse_check_button_pressed(mb_left)) {
	if(hovering > 0 && upgrading < 0) {

		upgrading = instance_create_layer(x, y, "Popup_Layer", oUpgrade);
		upgrading.build_lvl = build_lvl;
		upgrading.upgrade_type = build_type;
		upgrading.upgrade_building = id;
	} else if(upgrading > 0) {
		instance_destroy(upgrading);
		upgrading = -1;
	}
}


// Also cancel on right click
if(upgrading > 0 && mouse_check_button_pressed(mb_right)) {
	instance_destroy(upgrading);
	upgrading = -1;
}