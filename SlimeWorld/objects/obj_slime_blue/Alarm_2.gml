/// @description Shooting Logic
// Shoot toward the player and adds a small angle to create a burst of three
var add_angle = -12;
repeat(3) {		
	var bolt = instance_create_layer(x, y, "Instances", obj_slime_bolt);
	bolt.direction = point_direction(x, y, obj_player.x, obj_player.y) + add_angle;
	add_angle += 12;
}
change_slime_sprite(slime_color, false);
alarm_set(3, 75);