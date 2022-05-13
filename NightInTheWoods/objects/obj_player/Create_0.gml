/// @description Initialize Variables
health_max = 10;
cur_health = health_max

in_fight = false;
stamina = 64;
stamina_max = 64;
move_timer = 1.7;
blinks = 3;

state = 0; // Idle
// 1 = Attacking
// 2 = Blocking

obj_stamina_bar.visible = 0;
obj_stamina_bar_fill.visible = 0;

function blink() {
	visible = false;
	blinks = 3;
	alarm_set(1, 4);
}


