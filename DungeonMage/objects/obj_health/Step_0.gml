/// @description Insert description here
// You can write your code in this editor
if (!is_nan(instance_to_follow)) {
	if (!instance_exists(instance_to_follow)) {
		instance_destroy(id);
		exit;
	}
	
	x = instance_to_follow.x + offset_x;
	y = instance_to_follow.y + offset_y;
	
	image_xscale = instance_to_follow.current_health / instance_to_follow.max_health;
}