/// @description Dodge Logic

if (irandom(1) == 0) {
	sprite_index = spr_pumpkin;
	alarm_set(0, 30)	
}
else {
	sprite_index = spr_pumpkin_roll;
	alarm_set(1, 5);
}