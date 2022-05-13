/// @description Choose Move
chance = irandom(10);
if (chance >= 7) {
	state = 2;
	TweenEasyMove(x, y, obj_player.x, obj_player.y - 160, 0, 30, EaseInSine);
	alarm_set(0, 90);
}
else if (chance <= 6) {
	state = 2;
	TweenEasyMove(x, y, x + 32, y - 16, 0, 30, EaseInSine);
	alarm_set(3, 30);
} 
stamina = 0;
waiting = false;