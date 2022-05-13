/// @description Insert description here
// You can write your code in this editor
if (attacked || frozen) { exit; }

if (place_free(x + collision_speed,y)){
	x+= move_speed;
}

if (place_free(x - collision_speed,y)){
	x-= move_speed;
}
if (place_free(x ,y+ collision_speed)){
	y+= move_speed;
}
if (place_free(x ,y- collision_speed)){
	y-= move_speed;
}

if (wandering && !chasing) {
	var steps = random(160) + 32;

	var pos_x = random(steps);
	var pos_y = steps - pos_x;
	
	if (irandom(1) == 1) { pos_x = -pos_x; }
	if (irandom(1) == 1) { pos_y= -pos_y; }
	
	pos_x += x; pos_y += y;
	
	if (pos_x > room_width) { pos_x = room_width; }
	if (pos_x < 0) { pos_x = 0; }
	
	if (pos_y > room_height) { pos_y = room_height; }
	if (pos_y < 0) { pos_y = 0; }
	
	image_xscale = sign(x - pos_x);
	
	TweenEasyMove(x, y, pos_x, pos_y, 0, steps / 32 * 30, EaseLinear);
	wandering = false;
	alarm_set(1, 120);
}

if (distance_to_object(obj_player) <= detection_range)
	&&(distance_to_object(obj_player) > attack_range)
{
	if (!chasing) { TweenEasyMove(x, y, x, y, 0, 0, EaseLinear); detection_range += 100; }
	chasing = true;
	sprite_index= spr_gob_walk;
	image_xscale = sign(x - obj_player.x);
	move_towards_point(obj_player.x, obj_player.y, move_speed);
}
else if (distance_to_object(obj_player) <= attack_range)
{
	chasing = true;
	attacked = true;
	sprite_index= spr_gob_attack;
	image_xscale = sign(x - obj_player.x);
	move_towards_point(obj_player.x, obj_player.y,0);
	obj_player.current_health -= damage;
	alarm_set(0, 45);
}
else if (chasing) {
	speed = 0;
	sprite_index = spr_gob_idle;
	detection_range -= 100;
	chasing = false;
	wandering = true;
}