/// @description Controls Blinking When Hit
if (image_alpha == 1)
	image_alpha = 0;
else
	image_alpha = 1;
	
blinks--;
if (blinks <= 0) {
	blinks = 12;
	exit;
}
	
alarm_set(1, 5);