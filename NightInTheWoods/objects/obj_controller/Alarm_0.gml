/// @description Spawn Enemy

chance = irandom(2);
if (chance == 0) {
	var snd = audio_play_sound(snd_ghost, 100, false)
	audio_sound_gain(snd, 0.2, 1)
}
else if (chance == 1) {
	audio_play_sound(snd_pumpki, 100, false)
}
else { 
	audio_play_sound(snd_candy, 100, false)
}

alarm_set(4, 90);

with (obj_player) {
	sprite_index = spr_player_idle;
}
alarm_set(1, 92);