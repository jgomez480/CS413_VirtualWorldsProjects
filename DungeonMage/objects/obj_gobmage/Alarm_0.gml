/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player)) { exit; }
var fireball = instance_create_layer(x, y, "Instances", obj_fireball_enemy);

fireball.direction = point_direction(x, y, obj_player.x, obj_player.y);

allow_attack = true