/// @description Insert description here
// You can write your code in this editor



if(mouse_check_button_pressed(mb_left) &&  position_meeting(mouse_x, mouse_y, id) && oBuildingManager.building > 0) {
	
	instance_destroy(oC_Building);
	
	
	if(oBuildingManager.building == oBuildingManager.farm  ||
		oBuildingManager.building == oBuildingManager.mill ||
		oBuildingManager.building == oBuildingManager.quarry ||
		oBuildingManager.building == oBuildingManager.mine) {
		instance_create_layer(x, y, "Instances", oResource_Building);
		mp_grid_add_instances(oGridManager.grid, oResource_Building, false);
	} else if (oBuildingManager.building == oBuildingManager.barrack  ||
		oBuildingManager.building == oBuildingManager.range || 
		oBuildingManager.building == oBuildingManager.stable) {
		instance_create_layer(x, y, "Instances", oBarrack_Building);
		mp_grid_add_instances(oGridManager.grid, oBarrack_Building, false);
	} else if (oBuildingManager.building == oBuildingManager.house) {
		instance_create_layer(x, y, "Instances", oUtil_Building);
		mp_grid_add_instances(oGridManager.grid, oUtil_Building, false);
	}
	
	
	// Remove the plot
	instance_destroy();
}