/// @description Blink When Hit

visible = true;
blinks--;

if (blinks > 0) 
	alarm_set(2, 4);
else 
	blinks = 3;