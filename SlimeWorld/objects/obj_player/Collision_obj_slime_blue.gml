/// @description Take Hit
show_debug_message(invulnerable);
if (!invulnerable) {
	show_debug_message("hit");
	invulnerable = true;
	show_debug_message(invulnerable);
	playerHP--;
	if (playerHP <= 0) {
		room_goto(rm_death);
	}
	alarm_set(0, invulnerableTimer);
	alarm_set(1, 5);
}
