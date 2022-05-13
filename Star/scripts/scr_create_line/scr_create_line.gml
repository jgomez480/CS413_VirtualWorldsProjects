// Takes in two object and the instance layer.
// Creates an obj line between them and returns it
function CreateLineBetween(obj_1, obj_2, inst_layer) {
	var x_diff = obj_1.x - obj_2.x;
	var y_diff = obj_1.y - obj_2.y;
	var new_x = obj_1.x - x_diff / 2;
	var new_y = obj_1.y - y_diff / 2;
	var line_instance = instance_create_layer(new_x, new_y, inst_layer, obj_line);
	//Rotates the line to point between two stars, and scales by distance to reach between them
	line_instance.image_angle = 90 - (-radtodeg(arctan(x_diff / y_diff)));
	var line_width = sprite_get_width(spr_line);
	var dist_between = point_distance(obj_1.x, obj_1.y, obj_2.x, obj_2.y);
	line_instance.image_xscale = dist_between / line_width;
	return line_instance;
}