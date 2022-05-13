/// @description Enemy First Movements

if (chance == 0) {
	ghost = instance_create_layer(obj_player.x + 128, obj_player.y - 128, "Instances", obj_ghost);
	current_enemy = ghost;
	with (obj_ghost) {
		TweenEasyMove(x, y,	obj_player.x + 32, obj_player.y, 0, 90, EaseLinear);
	}
}
else if (chance == 1) {
	pumpkin = instance_create_layer(obj_player.x + 160, obj_player.y + 8, "Instances", obj_pumpkin);
	current_enemy = pumpkin;
}
else {
	candy = instance_create_layer(obj_player.x, obj_player.y - 160, "Instances", obj_candy);
	current_enemy = candy;
}