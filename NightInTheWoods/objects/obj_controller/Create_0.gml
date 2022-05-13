/// @description Initalize Variables/Attack Functions

player_moving = false;
current_enemy = NaN;
blinks = 3;
chance = 0;
audio_play_sound(snd_background_music, 1, true);

function player_attack_check() {
	if (current_enemy.state == 2) {
	}
	else {
		current_enemy.cur_health--;
		current_enemy.health_show = true;
		current_enemy.visible = true;
		
		if (current_enemy.cur_health <= 0) {
			instance_destroy(current_enemy);	
			obj_player.in_fight = false;
			player_moving = false;
			obj_stamina_bar.visible = 0;
			obj_stamina_bar_fill.visible = 0;
		}
		else {
			current_enemy.visible = false;
			alarm_set(2, 6);
		}
	}
}

function enemy_attack_check() {
	if (obj_player.state == 2) {
	}
	else {
		obj_player.cur_health--;
		if (obj_player.cur_health <= 0) {
			// Go to loss screen -----------------------------------------------------	
		}
		with(obj_player) {
			blink();
		}
	}
}

