/// @description Initialize Variables
health_max = 6;
cur_health = health_max;

in_fight = false;
stamina = 64;
stamina_max = 64;
waiting = false;
state = 0;

image_xscale = 0.5;
image_yscale = 0.5;

state = 1;
stamina = 0;
waiting = false;
sprite_index = spr_pumpkin_roll;
TweenEasyMove(x, y, obj_player.x - 32, y, 0, 45, EaseLinear);
alarm_set(5, 35);
alarm_set(1, 60);
