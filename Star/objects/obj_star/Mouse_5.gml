/// @description If this object is that last added star then remove
/// it and the line if its connected to another star
if (global.con_index == 0) exit;
if (global.connected[global.con_index - 1] == id) {
	global.connected[global.con_index - 1] = NaN;
	global.con_index--;
	if (global.lines_index > 0) {
		instance_destroy(global.lines[global.lines_index - 1]);
		global.lines[global.lines_index - 1] = NaN;
		global.lines_index--;
	}
}