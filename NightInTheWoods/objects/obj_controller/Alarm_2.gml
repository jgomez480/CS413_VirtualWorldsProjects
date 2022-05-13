/// @description Blink Enemy When Hit

if (current_enemy == NaN) {
	blinks = 3;
	exit;
}

current_enemy.visible = false;
alarm_set(3, 4);