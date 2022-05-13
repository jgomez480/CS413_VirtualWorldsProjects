// @description Returns an array of all instances of enemies
function get_enemies() {
	var all_enemies = [];
	var instance;
	var enemies_length;
	
	enemies_length = instance_number(obj_gob);
	for (var i = 0; i < enemies_length; i++) {
		instance = instance_find(obj_gob, i);
		array_push(all_enemies, instance);
	}
	
	enemies_length = instance_number(obj_gobas);
	for (var i = 0; i < enemies_length; i++) {
		instance = instance_find(obj_gobas, i);
		array_push(all_enemies, instance);
	}
	
	enemies_length = instance_number(obj_gobmage);
	for (var i = 0; i < enemies_length; i++) {
		instance = instance_find(obj_gobmage, i);
		array_push(all_enemies, instance);
	}
	
	return all_enemies;
}

function contains(array, value) {
	for (var i = 0; i < array_length(array); i++) {
		if (array[i] == value)
			return true;
	}
}