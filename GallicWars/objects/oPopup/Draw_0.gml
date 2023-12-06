/// @description Insert description here
// You can write your code in this editor



draw_sprite(popup, 0, x_pos, y_pos);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


switch(curr_building) {
	case oBuildingManager.farm:
		if(cost > 0) {
			draw_text(x+5, y+10, "100 Gold");
		}
		if(upgrade > 0) {
			draw_text(x+5, y+10, "Upgrade to next level");
		}
		
		break;
		
	default:
		draw_text(x, y, "Yes");
		break;
}
