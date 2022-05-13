/// @description Insert description here
// You can write your code in this editor
max_health = 30;
current_health = max_health;

move_speed = 1.6;
collision_speed = move_speed +2;
damage = 6;
detection_range = 250;
attack_range = 50; 
attacked = false;
wandering = true;
chasing = false;

frozen = false;
frozen_color = make_color_hsv(178, 25, 100);

on_fire_color = make_color_hsv(0, 125, 255);
on_fire = false;
fire_damage = 0;
fire_ticks_left = 0;

create_health_bar(id, -16, -32);
