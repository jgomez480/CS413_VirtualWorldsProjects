/// @description Insert description here
// You can write your code in this editor
max_health = 100;
current_health = max_health;

move_speed = 2.5;
collision_speed = move_speed +2;

create_health_bar(id, -16, -32);

x_speed = 0;
y_speed = 0;

magic_bolt_timer = 15;
fireball_timer = 45;
iceball_timer = 55;
lightning_timer = 100;
spell_timer = 10;

magic_bolt_wait = false;
fireball_wait = false;
iceball_wait = false;
lightning_wait = false;
spell_wait = false;

bolt_split = false;