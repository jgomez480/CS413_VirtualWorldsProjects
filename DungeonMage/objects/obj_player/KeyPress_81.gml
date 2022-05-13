/// @description Insert description here
// You can write your code in this editor
if (lightning_wait || spell_wait) { exit; }

var lightning_bolt = instance_create_layer(x, y, "Instances", obj_lightning_bolt);
lightning_bolt.image_angle = point_direction(x, y, mouse_x, mouse_y);
	
var enemies = get_enemies();
show_debug_message(array_length(enemies))
var inst, distance;
var closest_instance = NaN;
var max_distance = infinity;
for (var i = 0; i < array_length(enemies); i++) {
	inst = enemies[i];
	distance = point_distance(mouse_x, mouse_y, inst.x, inst.y);
		if (distance < max_distance) {
		max_distance = distance;
		closest_instance = inst;
	}
}

var enemies_hit = [];
if (!is_nan(closest_instance)) {
	distance = point_distance(x, y, closest_instance.x, closest_instance.y)
	if (distance < 256) {
		lightning_bolt.image_angle = point_direction(x, y, closest_instance.x, closest_instance.y);
		lightning_bolt.image_xscale = (distance / lightning_bolt.sprite_width);
		lightning_bolt.image_yscale = (distance / lightning_bolt.sprite_height / 8);
		array_push(enemies_hit, closest_instance);
		jump_lightning(enemies, enemies_hit, closest_instance, true);
	}
}


var lightning_sound = audio_play_sound(snd_lightning, 2, false);
audio_sound_pitch(lightning_sound, random_range(0.9, 1.1));


lightning_wait = true;
spell_wait = true;
alarm_set(4, spell_timer);
alarm_set(3, lightning_timer);