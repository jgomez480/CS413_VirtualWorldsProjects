/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_gobas_idle;

var steps = random(64) + 128;

var pos_x = random(steps);
var pos_y = steps - pos_x;
	
if (irandom(1) == 1) { pos_x = -pos_x; }
if (irandom(1) == 1) { pos_y = -pos_y; }
	
pos_x += x; pos_y += y;
	
if (pos_x > room_width) { pos_x = room_width; }
if (pos_x < 0) { pos_x = 0; }
	
if (pos_y > room_height) { pos_y = room_height; }
if (pos_y < 0) { pos_y = 0; }
	
image_xscale = sign(x - pos_x);
instance_create_layer(x, y, "Instances", obj_smoke);
x = pos_x;
y = pos_x;
attacked = false;