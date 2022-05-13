/// @description Insert description here
// You can write your code in this editor
if (fireball_wait || spell_wait) { exit; }

var fireball = instance_create_layer(x, y, "Instances", obj_fireball);
fireball.direction = point_direction(x, y, mouse_x, mouse_y);

var fire_sound = audio_play_sound(snd_fire, 2, false);
audio_sound_pitch(fire_sound, random_range(0.9, 1.1));


fireball_wait = true;
spell_wait = true;
alarm_set(4, spell_timer);
alarm_set(1, fireball_timer);