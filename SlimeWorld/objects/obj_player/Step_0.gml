/// @description Movement Key Events
// You can write your code in this editor




//when player is not moving, it will be at idel stage 
if(keyboard_check(vk_nokey) ) {
	sprite_index = spr_player_idel;
	
}


//keybaord control using WASD OR arrows 
if(keyboard_check(vk_right) ) || (keyboard_check(ord("D")))
{
	sprite_index = spr_player_right;
	hSpeed += walkSpeed;
}

if(keyboard_check(vk_left) ) || (keyboard_check(ord("A")))
{
	sprite_index = spr_player_left;
	
	hSpeed -= walkSpeed;
}

if(keyboard_check(vk_down) ) || (keyboard_check(ord("S")))
{
	sprite_index = spr_player_front;
	
	vSpeed += walkSpeed;
}

if(keyboard_check(vk_up) )|| (keyboard_check(ord("W")))
{
	sprite_index = spr_player_back;
	
	vSpeed -= walkSpeed;
}

if (tilemap_get_at_pixel(tiles, bbox_left - hSpeed, y) != 0) {
	x += 16;
	hSpeed = 0;
	}

if (tilemap_get_at_pixel(tiles, bbox_right + hSpeed, y) != 0) {
	x -= 16;
	hSpeed = 0;
}


if (tilemap_get_at_pixel(tiles, x, bbox_top - vSpeed) != 0) {
	y += 16;
	vSpeed = 0;
}

if (tilemap_get_at_pixel(tiles, x, bbox_bottom + vSpeed) != 0) {
	y -= 16;
	vSpeed = 0;
}

x += hSpeed;
y += vSpeed

hSpeed = 0;
vSpeed = 0;