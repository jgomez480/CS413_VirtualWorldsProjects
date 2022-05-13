/// @description Increase Alpha
time = irandom(30) + 90;
TweenEasyRotate(0, 9000, 0, time, EaseInCubic);
alarm_set(6, time);