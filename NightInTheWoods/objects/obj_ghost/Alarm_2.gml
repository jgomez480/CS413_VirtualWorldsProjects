/// @description Choose Move
chance = irandom(1);
if (chance == 0) {
	state = 1;
	TweenEasyMove(x, y, x + 32, y - 24, 0, 30, EaseInQuad);
	alarm_set(0, 30);
}
else if (chance == 1) {
	state = 2;	
	alarm_set(3, 60);
	TweenEasyFade(1, .1, 0, 15, EaseLinear)
} 
	stamina = 0;
waiting = false;