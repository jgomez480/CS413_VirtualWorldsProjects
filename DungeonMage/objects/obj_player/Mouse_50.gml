/// @description Insert description here
// You can write your code in this edit
if (magic_bolt_wait || spell_wait) { exit; } 

var player_to_mouse = point_direction(x, y, mouse_x, mouse_y);
var magic_bolt = instance_create_layer(x, y, "Instances", obj_magic_bolt);
magic_bolt.direction = player_to_mouse;
magic_bolt.image_angle = player_to_mouse;
if (bolt_split) {
	magic_bolt = instance_create_layer(x, y, "Instances", obj_magic_bolt);
	magic_bolt.direction = player_to_mouse + 15;
	magic_bolt.image_angle = player_to_mouse + 15;
	
	magic_bolt = instance_create_layer(x, y, "Instances", obj_magic_bolt);
	magic_bolt.direction = player_to_mouse - 15;
	magic_bolt.image_angle = player_to_mouse - 15;
}
var bolt_sound = audio_play_sound(snd_bolt, 2, false);
audio_sound_pitch(bolt_sound, random_range(0.9, 1.1));
magic_bolt_wait = true;
spell_wait = true;
alarm_set(4, spell_timer);
alarm_set(0, magic_bolt_timer);