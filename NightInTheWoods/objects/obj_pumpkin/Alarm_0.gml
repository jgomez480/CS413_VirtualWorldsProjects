/// @description Roll Attack
sprite_index = spr_pumpkin_roll;
state = 1;
TweenEasyMove(x, y, obj_player.x - 32, y, 0, 15, EaseLinear);
alarm_set(5, 8);
alarm_set(1, 30);