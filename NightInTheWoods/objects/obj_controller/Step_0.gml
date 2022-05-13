/// @description Move Player Forward

if (!player_moving) {
	with(obj_player) {
		TweenEasyMove(obj_player.x, obj_player.y, obj_player.x + 256, obj_player.y, 0, 180, EaseLinear);
		sprite_index = spr_player_walk;
	}
	player_moving = true;
	alarm_set(0, 180);
}

//if player health reaches 0, go to lose screen

if (obj_player.cur_health <= 0)
{
	room_goto(rm_lose);
}

