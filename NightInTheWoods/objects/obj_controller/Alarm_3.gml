/// @description Blink Enemy When Hit

if (current_enemy == NaN) {
	blinks = 3;
	exit;
}

current_enemy.visible = true;
blinks--;

if (blinks > 0) 
	alarm_set(2, 4);
else 
	blinks = 3;