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

if (wandering && !chasing ) {
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

var distance = distance_to_object(obj_player);

if (distance <= detection_range && distance > attack_range)
{
	if (!chasing) { TweenEasyMove(x, y, x, y, 0, 0, EaseLinear); detection_range += 100; }
	chasing = true;
	sprite_index= spr_gobas_walk;
	image_xscale = sign(x - obj_player.x);
	move_towards_point(obj_player.x, obj_player.y, move_speed);
}
else if (distance <= attack_range)
{
	attacked = true;
	speed = 0;
	sprite_index= spr_gobas_attack;
	image_xscale = sign(x- obj_player.x);
	instance_create_layer(x, y, "Instances", obj_smoke);
	x = obj_player.x-10;
	y = obj_player.y;
	obj_player.current_health -= damage;
	alarm_set(0, 35);
}
else if (chasing) {
	detection_range -= 100;
	wandering = true;
	chasing = false;
	sprite_index = spr_gobas_idle;
	speed = 0;
}