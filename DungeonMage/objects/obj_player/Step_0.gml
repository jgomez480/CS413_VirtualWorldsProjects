/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("W")) && place_free(x, y-collision_speed)) {
	y_speed -= move_speed;	
}

if (keyboard_check(ord("A"))&& place_free(x - collision_speed, y)) {
	x_speed -= move_speed;	
}

if (keyboard_check(ord("S"))&& place_free(x, y+collision_speed)) {
	y_speed += move_speed;	
}

if (keyboard_check(ord("D")) && place_free(x + collision_speed, y)) {
	x_speed += move_speed;	
}

x += x_speed;
y += y_speed;

if (x_speed != 0 || y_speed != 0) {
	sprite_index = spr_wizard_walk4;
	if (x_speed < 0) {
		image_xscale = -1;	
	}
	else {
		image_xscale = 1;
	}
}

x_speed = 0;
y_speed = 0;




//Death code
if (current_health <= 0) {
	room_goto(rm_lose);	
}
