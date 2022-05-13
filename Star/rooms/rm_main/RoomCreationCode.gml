var lyr_instances = layer_get_id("Instances");
global.game_active = false;
randomize();

var amount_of_stars = 4
var x_variation = room_width / amount_of_stars;


// If the other stars have already been created make them invislbe while in this room
if (array_length(global.all_stars) != 0) {
	global.connect = [];
	global.con_index = 0;
	global.lines = [];
	global.lines_index = 0;
	global.star_array[0].x = global.x_pos_main[0];
	global.star_array[0].y = global.y_pos_main[0];
	for (var index = 1; index < array_length(global.star_array); index++) {
		global.star_array[index].x = global.x_pos_main[index];
		global.star_array[index].y = global.y_pos_main[index];
		var this_star = global.star_array[index];
		var previous_star = global.star_array[index - 1];
		global.lines[global.lines_index] = CreateLineBetween(this_star, previous_star, lyr_instances);
		global.lines_index++;
	}
	for(var index = 0; index < array_length(global.all_stars); index++) {
		global.all_stars[index].visible = false;
	}
	exit;
}
var this_star;
var previous_star;
var current_x = 0;
var current_y = 256;
var furthest_x = 0;
var furthest_y = 0;
for (var index = 0; index < amount_of_stars; index++) {
	// Choose a new x and y position for star using random numbers
	if (index > 0) {
		var past_x = global.star_array[index - 1].x;
		var past_y = global.star_array[index - 1].y;
		while (current_x - past_x < 15 && current_y - past_y < 25) {
			current_x = random_range(current_x - x_variation / 4, current_x + x_variation);
			current_y = random_range(16, room_height - 16);
		}
	}
	
	// Keeps the x and y of the star within the bounds of the room
	var star_width_half = sprite_get_width(spr_star) / 2;
	if (current_y < star_width_half) 
		current_y = star_width_half;
	if (current_y > room_height - star_width_half)
		current_y = room_height - star_width_half;
	if (current_x < star_width_half) 
		current_x = star_width_half;
	if (current_x > room_width - star_width_half)
		current_x = room_width - star_width_half;
		
	var star_instance = instance_create_layer(current_x, current_y, lyr_instances, obj_star);
	star_instance.persistent = true;
	global.star_array[index] = star_instance;
	
	if (index > 0) {
		var this_star = global.star_array[index];
		var previous_star = global.star_array[index - 1];
		global.lines[global.lines_index] = CreateLineBetween(this_star, previous_star, lyr_instances);
		global.lines_index++;
		if (current_x > global.star_array[global.furthest_x].x)
			global.furthest_x = index;
		if (current_y > global.star_array[global.furthest_y].y)
			global.furthest_y = index
		if (current_x < global.star_array[global.closest_x].x)  
			global.closest_x = index;
		if (current_y < global.star_array[global.closest_y].y)
			global.closest_y = index;
	}
}



var stars = global.star_array;
var lines = global.lines;
var close_x = global.star_array[global.closest_x].x;
var far_x = global.star_array[global.furthest_x].x;
var close_y = global.star_array[global.closest_y].y;
var far_y = global.star_array[global.furthest_y].y;
var constellation_width = far_x - close_x;
var constellation_height = far_y - close_y;
var x_diff = room_width / 2 - constellation_width / 2;
var y_diff = constellation_height / 2 - room_height / 2;
for (var index = 0; index < array_length(stars); index++) {
	stars[index].x += x_diff;
	stars[index].y += y_diff;
	global.x_pos_main[index] = stars[index].x;
	global.y_pos_main[index] = stars[index].y;
	if (index < array_length(stars) - 1) {
		lines[index].x += x_diff;
		lines[index].y += y_diff;
	}
}