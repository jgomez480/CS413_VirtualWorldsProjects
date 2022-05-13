/// @description Insert description here
// You can write your code in this editor
image_blend = c_red;

if (on_fire) {
	current_health -= fire_damage;
	fire_ticks_left--;
	if (fire_ticks_left > 0) {
		alarm_set(10, 5);
	}
	else {
		on_fire = false;
		alarm_set(9, 5);
	}
}
