/// @description Insert description here
// You can write your code in this editor
enemies = [obj_gob, obj_gobas, obj_gobmage];
for (var i = 0; i < array_length(spawn_points); i++) {
	var _x = spawn_points[i].x;
	var _y = spawn_points[i].y;
	instance_create_layer(_x, _y, "Instances", enemies[irandom(2)]);
}

for (var i = array_length(spawn_points) - 1; i >= 0; i--) {
	instance_destroy(spawn_points[i]);
}

spawn_points = [];