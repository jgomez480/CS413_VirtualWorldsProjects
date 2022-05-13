/// @description Choose Move
chance = irandom(1);
if (chance == 0) {
	state = 1;
	sprite_index = spr_pumpkin_roll;
	alarm_set(0, 30);
}
else if (chance == 1) {
	state = 2;	
	alarm_set(3, 20);
	sprite_index = spr_pumpkin_roll_right;
	TweenEasyMove(x, y, x + 64, y, 0, 20, EaseLinear)
} 
stamina = 0;
waiting = false;

