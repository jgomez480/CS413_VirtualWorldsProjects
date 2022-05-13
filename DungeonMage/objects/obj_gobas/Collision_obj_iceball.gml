/// @description Insert description here
// You can write your code in this editor
current_health -= other.damage;
image_blend = c_red;
alarm_set(9, 5);
instance_destroy(other);

var chance = irandom(99) + 1;
show_debug_message(chance);
if (chance <= other.freeze_chance) {
	speed = 0;
	TweenEasyMove(x, y, x, y, 0, 1, EaseLinear);
	frozen = true;
	image_blend = frozen_color;
	alarm_set(8, other.freeze_duration);
}