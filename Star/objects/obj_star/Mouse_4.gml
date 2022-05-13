/// @description Adds this star to the array of connected stars, 
/// creates a line between two if needed, and will check if the current
/// star array matches the correct star array
if (!global.game_active)
	exit;
if (global.con_index > 0) {
	if (global.connected[global.con_index - 1] == id)  
		exit;	
}

global.connected[global.con_index] = id;
global.con_index++;

if (global.con_index > 1) {
	var lyr_instances = layer_get_id("Instances");
	var this_star = global.connected[global.con_index - 1];
	var previous_star = global.connected[global.con_index - 2];
	var line = CreateLineBetween(this_star, previous_star, lyr_instances);
	global.lines[global.lines_index] = line;
	global.lines_index++;
}

if (global.con_index < array_length(global.star_array)) {
	return;	
}

var correct = true;
for (var index = 0; index < array_length(global.star_array); index++) {
	if (global.connected[index] != global.star_array[index]) {
		show_debug_message("Dont Match");
		correct = false;
		break;
	}
}
if (correct) {
for(var index = 0; index < array_length(global.all_stars); index++) {
	instance_destroy(global.all_stars[index]);	
}
for(var index = 0; index < array_length(global.star_array); index++) {
	instance_destroy(global.star_array[index]);	
}
	room_goto_next();
	show_debug_message("You Win!");	
}