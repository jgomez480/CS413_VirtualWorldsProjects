/// @description Insert description here
// You can write your code in this editor
if (waiting_to_spawn) { exit; }
 
spawn_count = irandom(2) + 2;
for (var i = 0; i < spawn_count; i++) {
	var spawner = irandom(2) + 1;
	var x_loc, y_loc;

	switch(spawner) {
		case 1: 
			x_loc = random_range(862, 924);
			y_loc = random_range(96, 416);
			break;
		case 2:
			x_loc = random_range(96, 478);
			y_loc = random_range(96, 416);
			break;
		case 3: 
			x_loc = random_range(542, 800);
			y_loc = random_range(225, 288);
			break;
	}
	var spawn = instance_create_layer(x_loc, y_loc, "Instances", obj_spawn_point);
	array_push(spawn_points, spawn);
}
alarm_set(1, 90);
waiting_to_spawn = true;
alarm_set(0, random_range(350, 450));



if (spawn_health) {
	if (irandom(99) + 1 <= 15) {
		var spawner = irandom(2) + 1;
		var x_loc, y_loc;

		switch(spawner) {
			case 1: 
				x_loc = random_range(862, 924);
				y_loc = random_range(96, 416);
				break;
			case 2:
				x_loc = random_range(96, 478);
				y_loc = random_range(96, 416);
				break;
			case 3: 
				x_loc = random_range(542, 800);
				y_loc = random_range(225, 288);
				break;
		}
		
		instance_create_layer(x_loc, y_loc, "Instances", obj_health_item);
	}
	spawn_health = false;
	alarm_set(2, 300);
}