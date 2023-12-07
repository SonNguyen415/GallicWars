/// @description Insert description here
// You can write your code in this editor



if(mouse_check_button_pressed(mb_left) &&  position_meeting(mouse_x, mouse_y, id) && oBuildingManager.building > 0) {
	
	instance_destroy(oC_Building);
	
	
	if(oBuildingManager.building >= oBuildingManager.farm  && oBuildingManager.building <= oBuildingManager.mine) {
		instance_create_layer(x, y, "Instances", oResource_Building);
	}
	
	global.resources[global.gold] -= global.build_cost;
	global.resources[global.wood] -= global.build_cost;
	
	// Reset construction and remove the plot
	oBuildingManager.building = 0;
	instance_destroy();
}