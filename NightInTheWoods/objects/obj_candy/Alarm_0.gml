/// @description Move Down Toward Player
state = 1
TweenEasyMove(x, y, obj_player.x, obj_player.y - 4 , 0, 30, EaseLinear);
alarm_set(5, 15);
alarm_set(1, 30);