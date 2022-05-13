var lyr_instances = layer_get_id("Instances");
global.lines = [];
global.line_index = 0;
global.game_active = true;
randomize();

// If the stars have already been created make them visible again
if (array_length(global.all_stars) != 0) {
	for(var index = 0; index < array_length(global.all_stars); index++) {
		global.all_stars[index].visible = true;
	}
	for (var index = 0; index < array_length(global.star_array); index++) {
		global.star_array[index].x = global.x_pos[index];
		global.star_array[index].y = global.y_pos[index];
	}
	exit;
	
}
show_debug_message(array_length(global.x_pos));
if (array_length(global.x_pos) == 0) {
	var constellation_x = random_range(16, room_width - global.star_array[global.furthest_x].x);
	var constellation_y = random_range(16, room_height - global.star_array[global.furthest_y].y);
	var x_diff =  constellation_x - global.star_array[global.closest_x].x;
	var y_diff =  constellation_y - global.star_array[global.closest_y].y;
	for (var index = 0; index < array_length(global.star_array); index++) {
		global.star_array[index].x += x_diff;
		global.star_array[index].y += y_diff;
		global.x_pos[index] = global.star_array[index].x;
		global.y_pos[index] = global.star_array[index].y;	
	}
}

var x_coord;
var y_coord;
var star_width_half = sprite_get_width(spr_star) / 2;
for (var index = 0; index < 15; index++) {
	x_coord = random_range(star_width_half, room_width - star_width_half);
	y_coord = random_range(star_width_half, room_height - star_width_half);
	var star_instance = instance_create_layer(x_coord, y_coord, lyr_instances, obj_star);
	var scale = random_range(0.6, 1.4);
	star_instance.image_xscale = scale;
	star_instance.image_yscale = scale;
	global.all_stars[index] = star_instance;
	star_instance.persistent = true;
}


