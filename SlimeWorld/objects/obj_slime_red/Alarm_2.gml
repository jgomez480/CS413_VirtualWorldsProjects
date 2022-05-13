/// @description Insert description here
// You can write your code in this editor
TweenEasyMove(x, y, obj_player.x, obj_player.y, 0, jump_speed, EaseLinear);
alarm_set(3, 300);
jumping = false;
change_slime_sprite();