// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_health_bar(instance, health_bar_offset_x, health_bar_offset_y) {
	var border = instance_create_layer(x, y, "Instances", obj_health_border);
	border.instance_to_follow = id;
	border.offset_x = health_bar_offset_x;
	border.offset_y = health_bar_offset_y;

	var fill = instance_create_layer(x, y, "Instances", obj_health);
	fill.instance_to_follow = id;
	fill.offset_x = health_bar_offset_x;
	fill.offset_y = health_bar_offset_y;
}