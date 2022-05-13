/// @description Draw Player and Enemy HP

with(obj_player) {
	draw_text_transformed(x - 8, y + 16, string(cur_health) + "/" + string(health_max), 0.4, 0.4, 0);
}

with(obj_ghost) {
	if (health_show)
		draw_text_transformed(x - 8, y + 16, string(cur_health) + "/" + string(health_max), 0.4, 0.4, 0);
}

with(obj_pumpkin) {
	draw_text_transformed(x - 8, y + 16, string(cur_health) + "/" + string(health_max), 0.4, 0.4, 0);
}

with(obj_candy) {
	draw_text_transformed(x - 8, y + 16, string(cur_health) + "/" + string(health_max), 0.4, 0.4, 0);
}