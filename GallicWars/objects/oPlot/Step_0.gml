/// @description Insert description here
// You can write your code in this editor



if(mouse_check_button_pressed(mb_left) &&  position_meeting(mouse_x, mouse_y, id) && oBuildingManager.building > 0 && oBuildingManager.hovering < 0) {
	
	instance_destroy(oC_Building);
	
	
	if(oBuildingManager.building == FARM  ||
		oBuildingManager.building == MILL ||
		oBuildingManager.building == QUARRY ||
		oBuildingManager.building == MINE) {
		instance_create_layer(x, y, "Instances", oResource_Building);
		mp_grid_add_instances(oGridManager.grid, oResource_Building, false);
	} else if (oBuildingManager.building == BARRACK  ||
		oBuildingManager.building == RANGE || 
		oBuildingManager.building == STABLE) {
		instance_create_layer(x, y, "Instances", oBarrack_Building);
		mp_grid_add_instances(oGridManager.grid, oBarrack_Building, false);
	} else if (oBuildingManager.building == HOUSE) {
		instance_create_layer(x, y, "Instances", oUtil_Building);
		mp_grid_add_instances(oGridManager.grid, oUtil_Building, false);
	}
	
	
	// Remove the plot
	instance_destroy();
}