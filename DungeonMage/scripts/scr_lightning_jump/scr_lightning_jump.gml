// Recursive function that sifts through all enemies and compares the distance 
// to current enemy, if close enough, create lightning and call with that enemy
function jump_lightning(enemies, enemies_hit, current, first_call) {
	var distance;
	for (var i = 0; i < array_length(enemies); i++) {
		if (enemies[i] == current || contains(enemies_hit, enemies[i])) continue;
		
		distance = point_distance(current.x, current.y, enemies[i].x, enemies[i].y)
		if (distance < 160) {
			var lightning_bolt = instance_create_layer(
							current.x, current.y, "Instances", obj_lightning_bolt);
		
			lightning_bolt.image_angle = point_direction(current.x, current.y, enemies[i].x, enemies[i].y);
			lightning_bolt.image_xscale = (distance / lightning_bolt.sprite_width);
			lightning_bolt.image_yscale = lightning_bolt.image_xscale;
			array_push(enemies_hit, enemies[i]);
			jump_lightning(enemies, enemies_hit, enemies[i], false);	
		}
	}
	if (first_call) {
		for (var i = 0; i < array_length(enemies_hit); i++) {
			with (enemies_hit[i]) {
			enemies_hit[i].current_health -= 8;	
			image_blend = c_red;
			alarm_set(9, 5);
			}
		}
	}
}
