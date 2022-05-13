/// @description Arrow Key Checks
if (in_fight) {
	if (keyboard_check(vk_left)) {
		if (stamina >= stamina_max) {
			stamina = 0;
			state = 2;
			sprite_index = spr_player_block;
			alarm_set(0, 35);
			obj_stamina_bar.visible = 1;
			obj_stamina_bar_fill.visible = 1;
		}
	}
	
	if (keyboard_check(vk_right)) {
		if (stamina >= stamina_max) {
			stamina = 0;
			state = 1;
			sprite_index = spr_player_attack;
			with(obj_controller) { 
				player_attack_check();	
			}
			alarm_set(0, 25);
			obj_stamina_bar.visible = 1;
			obj_stamina_bar_fill.visible = 1;
		}
	}
}

if (stamina < stamina_max) {
	stamina += move_timer;
}


