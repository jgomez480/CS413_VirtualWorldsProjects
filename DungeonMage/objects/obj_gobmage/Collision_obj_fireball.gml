/// @description Insert description here
// You can write your code in this editor
current_health -= other.damage;
fire_damage = other.fire_damage;
fire_ticks_left = other.fire_ticks;
image_blend = c_red;
alarm_set(9, 5);
instance_destroy(other);

var chance = irandom(100) + 1;
show_debug_message(chance);
if (chance <= other.fire_chance) {
	on_fire = true;
	image_blend = on_fire_color;
	alarm_set(11, 60);
}