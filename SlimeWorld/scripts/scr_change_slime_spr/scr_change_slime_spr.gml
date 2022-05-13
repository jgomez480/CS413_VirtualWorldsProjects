// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_slime_sprite(color, moving){
	if (moving) {
		switch(color) {
			case 0:
				sprite_index = spr_slime_yellow;
				break;
			case 1:
				sprite_index = spr_slime_red;
				break;
			case 2:
				sprite_index = spr_slime_blue;
				break;
		}
	}
	else {
		switch(color) {
			case 0:
				sprite_index = spr_slime_yellow_idle;
				break;
			case 1:
				sprite_index = spr_slime_red_idle;
				break;
				case 2:
				sprite_index = spr_slime_blue_idle;
				break;
		}
	}
}